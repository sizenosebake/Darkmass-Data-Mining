local FixedFrame = require("scripts/utilities/fixed_frame")
local ItemPackage = require("scripts/foundation/managers/package/utilities/item_package")
local ItemSlotSettings = require("scripts/settings/item/item_slot_settings")
local MissionTemplates = require("scripts/settings/mission/mission_templates")
local PackagePrioritizationTemplates = require("scripts/loading/package_prioritization_templates")
local PlayerPackageAliases = require("scripts/settings/player/player_package_aliases")
local PlayerUnitVisualLoadout = require("scripts/extension_systems/visual_loadout/utilities/player_unit_visual_loadout")
local PlayerCharacterConstants = require("scripts/settings/player_character/player_character_constants")
local ability_configuration = PlayerCharacterConstants.ability_configuration
local unit_alive = Unit.alive
local PackageSynchronizerHost = class("PackageSynchronizerHost")
local RPCS = {
	"rpc_package_synchronizer_ready_peer",
	"rpc_alias_loading_complete"
}
PackageSynchronizerHost.DEBUG_TAG = "PackageSynchronizerHost"

local function _debug_print(str, ...)
	Log.info(PackageSynchronizerHost.DEBUG_TAG, str, ...)
end

local SYNC_STATES = table.enum("not_synced", "synced")

function PackageSynchronizerHost:init(network_delegate, hosted_synchronizer_client)
	self.NO_LOOKUP = 0
	self._peer_id = Network.peer_id()
	self._sync_states = {}
	self._syncs = {}
	self._resyncs = {}
	self._network_delegate = network_delegate
	self._hosted_synchronizer_client = hosted_synchronizer_client
	self._mission_name = nil
	local mechanism_manager = Managers.mechanism
	local settings = mechanism_manager:player_package_synchronization_settings()

	if settings then
		local prioritization_template_name = settings.prioritization_template

		self:_set_prioritization_template(prioritization_template_name)
	end

	Managers.event:register(self, "updated_player_profile_synced", "event_updated_player_profile_synced")
	Managers.event:register(self, "mechanism_changed", "event_mechanism_changed")
end

function PackageSynchronizerHost:event_mechanism_changed()
	local mechanism_manager = Managers.mechanism
	local settings = mechanism_manager:player_package_synchronization_settings()
	local prioritization_template_name = settings.prioritization_template

	self:_set_prioritization_template(prioritization_template_name)
end

function PackageSynchronizerHost:set_mission_name(mission_name)
	self._mission_name = mission_name
	local hosted_synchronizer_client = self._hosted_synchronizer_client

	if hosted_synchronizer_client then
		hosted_synchronizer_client:set_mission_name(mission_name)
	end

	local my_peer_id = self._peer_id

	for peer_id, data in pairs(self._sync_states) do
		if data.ready and peer_id ~= my_peer_id then
			RPC.rpc_package_synchronizer_set_mission_name(data.channel_id, NetworkLookup.missions[mission_name])
		end
	end

	self:_reevaluate_all_profile_packages()
end

function PackageSynchronizerHost:_reevaluate_all_profile_packages()
	local hosted_synchronizer_client = self._hosted_synchronizer_client

	if hosted_synchronizer_client then
		hosted_synchronizer_client:reevaluate_all_profiles_packages()
	end

	local my_peer_id = self._peer_id
	local player_package_aliases = PlayerPackageAliases
	local num_player_package_aliases = #player_package_aliases
	local sync_states = self._sync_states

	for peer_id, data in pairs(sync_states) do
		if data.ready and peer_id ~= my_peer_id then
			local channel_id = data.channel_id

			RPC.rpc_reevaluate_all_profile_packages(channel_id)

			local peer_states = data.peer_states

			for sync_peer_id, peer_data in pairs(peer_states) do
				local player_states = peer_data.player_states

				for sync_local_player_id, player_data in pairs(player_states) do
					local alias_states = player_data.alias_states

					for i = 1, num_player_package_aliases do
						local alias = player_package_aliases[i]
						alias_states[alias] = SYNC_STATES.not_synced
					end

					local alias_version = self:_increment_alias_version(peer_id, sync_peer_id, sync_local_player_id)

					RPC.rpc_set_alias_version(channel_id, sync_peer_id, sync_local_player_id, alias_version)
				end
			end
		end
	end
end

function PackageSynchronizerHost:_set_prioritization_template(template_name)
	local sync_states = self._sync_states
	local template = PackagePrioritizationTemplates[template_name]
	local template_id = NetworkLookup.package_synchronization_template_names[template_name]
	local alias_states = {}

	for i = 1, #PlayerPackageAliases do
		local alias = PlayerPackageAliases[i]
		alias_states[alias] = SYNC_STATES.not_synced
	end

	for peer_id, data in pairs(sync_states) do
		local peer_states = data.peer_states

		if data.ready and peer_id ~= self._peer_id then
			local channel_id = data.channel_id

			RPC.rpc_set_package_prioritization(channel_id, template_id)

			for sync_peer_id, peer_data in pairs(peer_states) do
				local player_sync_states = peer_data.player_states

				for sync_local_player_id, _ in pairs(player_sync_states) do
					local alias_version = self:_increment_alias_version(peer_id, sync_peer_id, sync_local_player_id)

					RPC.rpc_set_alias_version(channel_id, sync_peer_id, sync_local_player_id, alias_version)
				end
			end
		end

		for sync_peer_id, peer_data in pairs(peer_states) do
			local player_sync_states = peer_data.player_states

			for sync_local_player_id, player_data in pairs(player_sync_states) do
				player_data.alias_states = table.clone(alias_states)
			end
		end
	end

	local hosted_synchronizer_client = self._hosted_synchronizer_client

	if hosted_synchronizer_client then
		hosted_synchronizer_client:set_package_prioritization_template(template_name)
	end

	self._prioritization_template = template
end

function PackageSynchronizerHost:init_item_definitions(item_definitions)
	self._item_definitions = item_definitions
end

function PackageSynchronizerHost:item_definitions_initialized()
	return self._item_definitions and true
end

function PackageSynchronizerHost:event_updated_player_profile_synced(peer_id, local_player_id, old_profile)
	local syncs = self._syncs

	_debug_print("LoadingTimes: Player Profile Synced (peer: %s, player_id: %s)", tostring(peer_id), tostring(local_player_id))

	if syncs[peer_id] and syncs[peer_id][local_player_id] then
		local resyncs = self._resyncs[peer_id]

		if not resyncs or not resyncs[local_player_id] then
			_debug_print("LoadingTimes: Player Profile Needs Resync (peer: %s, player_id: %s)", tostring(peer_id), tostring(local_player_id))

			self._resyncs[peer_id] = self._resyncs[peer_id] or {}
			self._resyncs[peer_id][local_player_id] = old_profile
		end

		return
	end

	self:_player_profile_changed(peer_id, local_player_id, old_profile)
end

function PackageSynchronizerHost:_player_profile_changed(sync_peer_id, sync_local_player_id, old_profile)
	local sync_states = self._sync_states
	local my_peer_id = self._peer_id

	for peer_id, data in pairs(sync_states) do
		if data.ready and peer_id ~= my_peer_id then
			local channel_id = data.channel_id

			RPC.rpc_cache_player_profile(channel_id, sync_peer_id, sync_local_player_id)
		end
	end

	local syncs = self._syncs
	local player = Managers.player:player(sync_peer_id, sync_local_player_id)
	local new_profile = player:profile()
	local changed_profile_fields = {
		inventory = self:_calculate_changed_inventory_items(old_profile, new_profile),
		talents = self:_calculate_changed_talents(old_profile, new_profile)
	}

	_debug_print("LoadingTimes: Player Profile Changed (peer: %s, player_id: %s)", tostring(sync_peer_id), tostring(sync_local_player_id))

	syncs[sync_peer_id] = syncs[sync_peer_id] or {}
	local sync_data = {
		handled_profile_changes = false,
		notified_clients = false,
		changed_profile_fields = changed_profile_fields
	}
	syncs[sync_peer_id][sync_local_player_id] = sync_data

	self:_handle_profile_changes_before_sync(player, sync_data)

	for peer_id, data in pairs(sync_states) do
		local peer_states = data.peer_states
		local player_states = peer_states[sync_peer_id].player_states
		local player_data = player_states[sync_local_player_id]
		local alias_states = player_data.alias_states

		for alias, _ in pairs(alias_states) do
			alias_states[alias] = SYNC_STATES.not_synced
		end

		self:_increment_alias_version(peer_id, sync_peer_id, sync_local_player_id)
	end
end

function PackageSynchronizerHost:_calculate_changed_inventory_items(profile, new_profile)
	local changed_loadout_items = {}
	local loadout = profile.visual_loadout
	local new_loadout = new_profile.visual_loadout
	local mission_name = self._mission_name
	local mission_template = nil

	if mission_name then
		mission_template = MissionTemplates[mission_name]
	end

	for slot_name, item in pairs(loadout) do
		local new_item = new_loadout[slot_name]

		if not new_item then
			changed_loadout_items[slot_name] = {
				reason = "item_removed"
			}
		else
			local item_gear_id = item.gear_id
			local new_item_gear_id = new_item.gear_id

			if item_gear_id ~= new_item_gear_id then
				changed_loadout_items[slot_name] = {
					reason = "item_replaced",
					new_item = new_item
				}
			else
				local dependencies = ItemPackage.compile_item_instance_dependencies(item, self._item_definitions, nil, mission_template)
				local new_dependencies = ItemPackage.compile_item_instance_dependencies(new_item, self._item_definitions, nil, mission_template)
				local item_altered = false

				for package_name, _ in pairs(dependencies) do
					if new_dependencies[package_name] == nil then
						item_altered = true

						break
					end
				end

				if not item_altered then
					for package_name, _ in pairs(new_dependencies) do
						if dependencies[package_name] == nil then
							item_altered = true

							break
						end
					end
				end

				item_altered = item_altered or self:_item_instance_altered(slot_name, item, profile, new_profile)

				if item_altered then
					changed_loadout_items[slot_name] = {
						reason = "item_altered",
						new_item = new_item
					}
				end
			end
		end
	end

	for slot_name, new_item in pairs(new_loadout) do
		repeat
			if ItemSlotSettings[slot_name] then
				local item = loadout[slot_name]

				if not item then
					changed_loadout_items[slot_name] = {
						reason = "item_added",
						new_item = new_item
					}
				end

				break
			else
				Log.error("ProfileUtil", string.format("Unknown gear slot %s", slot_name))
			end
		until true
	end

	return changed_loadout_items
end

function PackageSynchronizerHost:_item_instance_altered(slot_name, item, profile, new_profile)
	local new_weapon_modifiers = profile.weapon_modifiers and profile.weapon_modifiers[slot_name]
	local old_weapon_modifiers = new_profile.weapon_modifiers and new_profile.weapon_modifiers[slot_name]
	local item_altered = false

	if new_weapon_modifiers or old_weapon_modifiers then
		item_altered = true
	end

	return item_altered
end

function PackageSynchronizerHost:_calculate_changed_talents(old_profile, new_profile)
	local old_talents = old_profile.talents
	local new_talents = new_profile.talents
	local talents_changed = false

	for talent_name, _ in pairs(old_talents) do
		if not new_talents[talent_name] then
			talents_changed = true

			break
		end
	end

	if not talents_changed then
		for talent_name, _ in pairs(new_talents) do
			if not old_talents[talent_name] then
				talents_changed = true

				break
			end
		end
	end

	if talents_changed then
		local changes = {
			specialization_name = new_profile.specialization,
			talents = new_talents
		}

		return changes
	else
		return nil
	end
end

function PackageSynchronizerHost:_increment_alias_version(peer_id, sync_peer_id, sync_local_player_id)
	local data = self._sync_states[peer_id]
	local peer_data = data.peer_states[sync_peer_id]
	local player_data = peer_data.player_states[sync_local_player_id]
	local alias_version = player_data.alias_version
	local new_alias_version = alias_version + 1

	if new_alias_version > 16 then
		new_alias_version = 1
	end

	player_data.alias_version = new_alias_version

	return new_alias_version
end

function PackageSynchronizerHost:update(dt)
	local syncs = self._syncs

	for peer_id, players_data in pairs(syncs) do
		for local_player_id, sync_data in pairs(players_data) do
			local is_player_synced_by_all = self:_is_player_synced_by_all(peer_id, local_player_id)

			if sync_data.handled_profile_changes and sync_data.notified_clients and is_player_synced_by_all then
				self:_handle_profile_changes_after_sync(peer_id, local_player_id, sync_data)

				players_data[local_player_id] = nil
			end

			if sync_data.handled_profile_changes and not sync_data.notified_clients then
				local sync_states = self._sync_states

				for _, data in pairs(sync_states) do
					if data.ready then
						local channel_id = data.channel_id

						if channel_id then
							local alias_version = data.peer_states[peer_id].player_states[local_player_id].alias_version

							RPC.rpc_player_profile_packages_changed(channel_id, peer_id, local_player_id, alias_version)
						end
					end
				end

				self._hosted_synchronizer_client:player_profile_packages_changed(peer_id, local_player_id)

				sync_data.notified_clients = true
			end

			if not sync_data.handled_profile_changes then
				sync_data.handled_profile_changes = true
			end
		end

		if not next(players_data) then
			syncs[peer_id] = nil
		end
	end

	local resyncs = self._resyncs

	for peer_id, data in pairs(resyncs) do
		for local_player_id, previously_loaded_profile in pairs(data) do
			if not syncs[peer_id] or not syncs[peer_id][local_player_id] then
				self:_player_profile_changed(peer_id, local_player_id, previously_loaded_profile)

				data[local_player_id] = nil
			end
		end

		if not next(data) then
			self._resyncs[peer_id] = nil
		end
	end
end

function PackageSynchronizerHost:_handle_profile_changes_before_sync(player, sync_data)
	local changed_profile_fields = sync_data.changed_profile_fields
	local changed_inventory_items = changed_profile_fields.inventory

	self:_handle_inventory_changes_before_sync(changed_inventory_items, player, sync_data)

	local changed_talents = changed_profile_fields.talents

	if changed_talents then
		self:_handle_talent_changes_before_sync(player, sync_data)
	end
end

function PackageSynchronizerHost:_handle_inventory_changes_before_sync(inventory_changes, player, sync_data)
	local player_unit = player.player_unit

	if not player_unit then
		return
	end

	local fixed_t = FixedFrame.get_latest_fixed_time()
	local inventory_component = ScriptUnit.extension(player_unit, "unit_data_system"):read_component("inventory")
	local wielded_slot = inventory_component.wielded_slot
	local unequipped_wielded_slot = false
	local slot_configuration = PlayerCharacterConstants.slot_configuration

	for slot_name, data in pairs(inventory_changes) do
		if slot_configuration[slot_name] then
			local reason = data.reason

			if reason == "item_removed" or reason == "item_replaced" or reason == "item_altered" then
				if slot_name == wielded_slot then
					PlayerUnitVisualLoadout.wield_slot("slot_unarmed", player_unit, fixed_t)

					unequipped_wielded_slot = true
				end

				PlayerUnitVisualLoadout.unequip_item_from_slot(player_unit, slot_name, fixed_t)
			end
		end
	end

	if unequipped_wielded_slot then
		sync_data.wield_slot_after_sync = wielded_slot
	end
end

function PackageSynchronizerHost:_handle_talent_changes_before_sync(player, sync_data)
	local player_unit = player.player_unit

	if not unit_alive(player_unit) then
		return
	end

	local fixed_t = FixedFrame.get_latest_fixed_time()
	local inventory_component = ScriptUnit.extension(player_unit, "unit_data_system"):read_component("inventory")
	local wielded_slot = inventory_component.wielded_slot
	local unequipped_wielded_slot = false

	for _, ability_slot_name in pairs(ability_configuration) do
		if wielded_slot == ability_slot_name then
			PlayerUnitVisualLoadout.wield_slot("slot_unarmed", player_unit, fixed_t)

			unequipped_wielded_slot = true

			break
		end
	end

	local specialization_extension = ScriptUnit.extension(player_unit, "specialization_system")

	specialization_extension:remove_gameplay_features(fixed_t)

	if unequipped_wielded_slot then
		sync_data.wield_slot_after_sync = wielded_slot
	end
end

function PackageSynchronizerHost:_handle_profile_changes_after_sync(peer_id, local_player_id, sync_data)
	local player = Managers.player:player(peer_id, local_player_id)
	local player_unit = player.player_unit

	if not player_unit then
		return
	end

	local changed_profile_fields = sync_data.changed_profile_fields
	local changed_inventory_items = changed_profile_fields.inventory
	local fixed_t = FixedFrame.get_latest_fixed_time()

	self:_handle_inventory_changes_after_sync(changed_inventory_items, player_unit, fixed_t)

	local changed_talents = changed_profile_fields.talents

	if changed_talents then
		self:_handle_talent_changes_after_sync(changed_talents, player)
	end

	local wield_slot_after_sync = sync_data.wield_slot_after_sync

	if wield_slot_after_sync then
		PlayerUnitVisualLoadout.wield_slot(wield_slot_after_sync, player_unit, fixed_t)
	end
end

function PackageSynchronizerHost:_handle_inventory_changes_after_sync(inventory_changes, player_unit, fixed_t)
	local slot_configuration = PlayerCharacterConstants.slot_configuration

	for slot_name, data in pairs(inventory_changes) do
		if slot_configuration[slot_name] then
			local reason = data.reason

			if reason == "item_added" or reason == "item_replaced" or reason == "item_altered" then
				local item = data.new_item

				PlayerUnitVisualLoadout.equip_item_to_slot(player_unit, item, slot_name, nil, fixed_t)
			end
		end
	end
end

function PackageSynchronizerHost:_handle_talent_changes_after_sync(talent_changes, player)
	local player_unit = player.player_unit

	if not unit_alive(player_unit) then
		return
	end

	local specialization_name = talent_changes.specialization_name
	local talents = talent_changes.talents
	local fixed_t = FixedFrame.get_latest_fixed_time()
	local specialization_extension = ScriptUnit.extension(player_unit, "specialization_system")

	specialization_extension:select_new_specialization(specialization_name, talents, fixed_t)
end

function PackageSynchronizerHost:is_peer_synced(peer_id, debug_log)
	local prioritization_template = self._prioritization_template
	local required_package_aliases = prioritization_template.required_package_aliases
	local sync_states = self._sync_states
	local peer_states = sync_states[peer_id].peer_states

	for sync_peer_id, peer_data in pairs(peer_states) do
		local player_states = peer_data.player_states

		for sync_local_player_id, player_data in pairs(player_states) do
			local alias_states = player_data.alias_states

			if not sync_states[sync_peer_id] or sync_states[sync_peer_id].enabled then
				local synced = true

				for i = 1, #required_package_aliases do
					local alias = required_package_aliases[i]
					local alias_state = alias_states[alias]

					if alias_state ~= SYNC_STATES.synced then
						synced = false

						break
					end
				end

				if not synced then
					if debug_log then
						Log.info("PackageSynchronizerHost", "peer %s has not synced all other peers! has not synced: %s", peer_id, sync_peer_id)
					end

					return false
				end
			end
		end
	end

	for sync_peer_id, data in pairs(sync_states) do
		if data.enabled then
			local player_states = data.peer_states[peer_id].player_states
			local synced = true

			for _, player_data in pairs(player_states) do
				local alias_states = player_data.alias_states

				for i = 1, #required_package_aliases do
					local alias = required_package_aliases[i]
					local alias_state = alias_states[alias]

					if alias_state ~= SYNC_STATES.synced then
						synced = false

						break
					end
				end
			end

			if not synced then
				if debug_log then
					Log.info("PackageSynchronizerHost", "peer %s is not synced by all other peers! not synced by: %s", peer_id, sync_peer_id)
				end

				return false
			end
		end
	end

	return true
end

function PackageSynchronizerHost:_is_player_synced_by_all(peer_id, local_player_id)
	local prioritization_template = self._prioritization_template
	local required_package_aliases = prioritization_template.required_package_aliases
	local sync_states = self._sync_states

	for sync_peer_id, data in pairs(sync_states) do
		if data.enabled then
			local alias_states = data.peer_states[peer_id].player_states[local_player_id].alias_states

			for i = 1, #required_package_aliases do
				local alias = required_package_aliases[i]
				local alias_state = alias_states[alias]

				if alias_state ~= SYNC_STATES.synced then
					return false
				end
			end
		end
	end

	return true
end

function PackageSynchronizerHost:bot_synced_by_all(local_player_id)
	local peer_id = self._peer_id
	local synced = self:_is_player_synced_by_all(peer_id, local_player_id)

	return synced
end

function PackageSynchronizerHost:peers_synced(peer_ids)
	for _, peer_id in ipairs(peer_ids) do
		if not self:is_peer_synced(peer_id) then
			return false
		end
	end

	return true
end

function PackageSynchronizerHost:enable_peers(peer_ids)
	local sync_states = self._sync_states

	for _, peer_id in ipairs(peer_ids) do
		if sync_states[peer_id] then
			sync_states[peer_id].enabled = true
		end
	end

	for peer_id, data in pairs(sync_states) do
		if peer_id ~= self._peer_id then
			local channel_id = data.channel_id

			RPC.rpc_package_synchronizer_enable_peers(channel_id, peer_ids)
		end
	end

	local hosted_synchronizer_client = self._hosted_synchronizer_client

	if hosted_synchronizer_client then
		hosted_synchronizer_client:enable_peers(peer_ids)
	end
end

function PackageSynchronizerHost:add_peer(new_peer_id)
	local new_peer_states = {}
	local alias_states = {}

	for i = 1, #PlayerPackageAliases do
		local alias = PlayerPackageAliases[i]
		alias_states[alias] = SYNC_STATES.not_synced
	end

	local players = Managers.player:players_at_peer(new_peer_id)

	for peer_id, data in pairs(self._sync_states) do
		local peer_states = data.peer_states
		peer_states[new_peer_id] = {
			player_states = {}
		}

		for local_player_id, _ in pairs(players) do
			peer_states[new_peer_id].player_states[local_player_id] = {
				alias_version = 1,
				alias_states = table.clone(alias_states)
			}
		end

		new_peer_states[peer_id] = {
			player_states = {}
		}
		local player_states = peer_states[peer_id].player_states

		for local_player_id, _ in pairs(player_states) do
			new_peer_states[peer_id].player_states[local_player_id] = {
				alias_version = 1,
				alias_states = table.clone(alias_states)
			}
		end
	end

	new_peer_states[new_peer_id] = {
		player_states = {}
	}

	if players then
		for local_player_id, _ in pairs(players) do
			new_peer_states[new_peer_id].player_states[local_player_id] = {
				alias_version = 1,
				alias_states = table.clone(alias_states)
			}
		end
	end

	local data = {
		enabled = false,
		ready = false,
		peer_states = new_peer_states
	}
	self._sync_states[new_peer_id] = data

	if new_peer_id ~= self._peer_id then
		self._hosted_synchronizer_client:add_peer(new_peer_id)

		local channel_id = Managers.connection:peer_to_channel(new_peer_id)
		data.channel_id = channel_id

		self._network_delegate:register_connection_channel_events(self, channel_id, unpack(RPCS))
	end
end

function PackageSynchronizerHost:add_bot(local_player_id)
	local alias_states = {}

	for i = 1, #PlayerPackageAliases do
		local alias = PlayerPackageAliases[i]
		alias_states[alias] = SYNC_STATES.not_synced
	end

	local sync_states = self._sync_states
	local peer_id = self._peer_id

	for _, data in pairs(sync_states) do
		local peer_data = data.peer_states[peer_id]
		local player_states = peer_data.player_states
		player_states[local_player_id] = {
			alias_version = 1,
			alias_states = table.clone(alias_states)
		}
	end

	self._hosted_synchronizer_client:add_bot(peer_id, local_player_id)
end

function PackageSynchronizerHost:remove_bot(local_player_id)
	local sync_states = self._sync_states
	local peer_id = self._peer_id

	for _, data in pairs(sync_states) do
		local peer_data = data.peer_states[peer_id]
		local player_states = peer_data.player_states
		player_states[local_player_id] = nil
	end

	self._hosted_synchronizer_client:remove_bot(peer_id, local_player_id)

	if self._syncs[peer_id] then
		self._syncs[peer_id][local_player_id] = nil
	end

	if self._resyncs[peer_id] then
		self._resyncs[peer_id][local_player_id] = nil
	end
end

function PackageSynchronizerHost:ready_peer(peer_id)
	local data = self._sync_states[peer_id]
	data.ready = true
	local my_peer_id = self._peer_id

	if peer_id ~= my_peer_id and self._mission_name then
		local channel_id = data.channel_id
		local mission_name_id = NetworkLookup.missions[self._mission_name]

		RPC.rpc_package_synchronizer_set_mission_name(channel_id, mission_name_id)
		RPC.rpc_reevaluate_all_profile_packages(channel_id)
	end
end

function PackageSynchronizerHost:remove_peer(peer_id)
	local data = self._sync_states[peer_id]
	self._sync_states[peer_id] = nil

	for other_peer_id, other_peer_data in pairs(self._sync_states) do
		local peer_states = other_peer_data.peer_states
		peer_states[peer_id] = nil
	end

	if peer_id ~= self._peer_id then
		self._hosted_synchronizer_client:remove_peer(peer_id)

		local channel_id = data.channel_id

		self._network_delegate:unregister_channel_events(channel_id, unpack(RPCS))
	end

	self._syncs[peer_id] = nil
	self._resyncs[peer_id] = nil
end

function PackageSynchronizerHost:alias_loading_complete(peer_id, loaded_peer_id, loaded_local_player_id, alias)
	local peer_states = self._sync_states[peer_id].peer_states
	local player_states = peer_states[loaded_peer_id].player_states
	local alias_states = player_states[loaded_local_player_id].alias_states
	alias_states[alias] = SYNC_STATES.synced
end

function PackageSynchronizerHost:destroy()
	local sync_states = self._sync_states
	local local_peer_id = self._peer_id

	for peer_id, data in pairs(sync_states) do
		if peer_id ~= local_peer_id then
			local channel_id = data.channel_id

			self._network_delegate:unregister_channel_events(channel_id, unpack(RPCS))
		end
	end

	Managers.event:unregister(self, "mechanism_changed")
	Managers.event:unregister(self, "updated_player_profile_synced")
end

function PackageSynchronizerHost:rpc_package_synchronizer_ready_peer(channel_id)
	local peer_id = Managers.connection:channel_to_peer(channel_id)
	local template_name = self._prioritization_template.name
	local template_id = NetworkLookup.package_synchronization_template_names[template_name]

	RPC.rpc_set_package_prioritization(channel_id, template_id)
	self:ready_peer(peer_id)

	local sync_states = self._sync_states
	local data = sync_states[peer_id]
	local peer_states = data.peer_states

	for sync_peer_id, peer_data in pairs(peer_states) do
		local player_sync_states = peer_data.player_states

		for sync_local_player_id, _ in pairs(player_sync_states) do
			local alias_version = self:_increment_alias_version(peer_id, sync_peer_id, sync_local_player_id)

			RPC.rpc_set_alias_version(channel_id, sync_peer_id, sync_local_player_id, alias_version)
		end
	end
end

function PackageSynchronizerHost:rpc_alias_loading_complete(channel_id, peer_id, loaded_peer_id, loaded_local_player_id, alias_index, alias_version)
	local sync_states = self._sync_states
	local data = sync_states[peer_id]
	local peer_states = data.peer_states
	local other_peer_data = peer_states[loaded_peer_id]

	if not other_peer_data then
		return
	end

	local player_states = other_peer_data.player_states
	local player_data = player_states[loaded_local_player_id]

	if not player_data then
		return
	end

	local player_alias_version = player_data.alias_version

	if player_alias_version ~= alias_version then
		return
	end

	local alias = PlayerPackageAliases[alias_index]

	self:alias_loading_complete(peer_id, loaded_peer_id, loaded_local_player_id, alias)
end

return PackageSynchronizerHost