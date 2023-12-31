local FixedFrame = require("scripts/utilities/fixed_frame")
local ItemPackage = require("scripts/foundation/managers/package/utilities/item_package")
local ItemSlotSettings = require("scripts/settings/item/item_slot_settings")
local MasterItems = require("scripts/backend/master_items")
local PlayerCharacterConstants = require("scripts/settings/player_character/player_character_constants")
local PlayerUnitVisualLoadout = require("scripts/extension_systems/visual_loadout/utilities/player_unit_visual_loadout")
local UISettings = require("scripts/settings/ui/ui_settings")
local WeaponTemplate = require("scripts/utilities/weapon/weapon_template")
local BuffTemplates = require("scripts/settings/buff/buff_templates")
local BuffSettings = require("scripts/settings/buff/buff_settings")
local WeaponTraitTemplates = require("scripts/settings/equipment/weapon_traits/weapon_trait_templates")
local RaritySettings = require("scripts/settings/item/rarity_settings")
local unit_alive = Unit.alive
local ItemUtils = {}

local function _character_save_data()
	local local_player_id = 1
	local player_manager = Managers.player
	local player = player_manager and player_manager:local_player(local_player_id)
	local character_id = player and player:character_id()
	local save_manager = Managers.save
	local character_data = character_id and save_manager and save_manager:character_data(character_id)

	return character_data
end

function ItemUtils.mark_item_id_as_new(gear_id, item_type)
	local character_data = _character_save_data()

	if not character_data then
		return
	end

	if not character_data.new_items then
		character_data.new_items = {}
	end

	if not character_data.new_item_notifications then
		character_data.new_item_notifications = {}
	end

	local new_items = character_data.new_items
	new_items[gear_id] = true
	local new_item_notifications = character_data.new_item_notifications
	new_item_notifications[gear_id] = true

	if item_type then
		if not character_data.new_items_by_type then
			character_data.new_items_by_type = {}
		end

		local new_items_by_type = character_data.new_items_by_type

		if not new_items_by_type[item_type] then
			new_items_by_type[item_type] = {}
		end

		new_items_by_type[item_type][gear_id] = true
	end

	Managers.save:queue_save()
	Managers.event:trigger("event_resync_character_news_feed")
end

function ItemUtils.unmark_item_id_as_new(gear_id)
	local character_data = _character_save_data()

	if not character_data then
		return
	end

	local new_items = character_data.new_items

	if new_items and new_items[gear_id] then
		new_items[gear_id] = nil
		local new_items_by_type = character_data.new_items_by_type

		if new_items_by_type then
			for item_type, items in pairs(new_items_by_type) do
				if items[gear_id] then
					items[gear_id] = nil

					break
				end
			end
		end

		Managers.save:queue_save()
	end
end

function ItemUtils.unmark_item_notification_id_as_new(gear_id)
	local character_data = _character_save_data()

	if not character_data then
		return
	end

	local new_item_notifications = character_data.new_item_notifications

	if new_item_notifications and new_item_notifications[gear_id] then
		new_item_notifications[gear_id] = nil

		Managers.save:queue_save()
	end
end

function ItemUtils.is_item_id_new(gear_id)
	local character_data = _character_save_data()

	if not character_data then
		return
	end

	local new_items = character_data.new_items

	return new_items[gear_id] or false
end

function ItemUtils.has_new_items_by_type(item_type)
	local character_data = _character_save_data()

	if not character_data then
		return
	end

	local new_items_by_type = character_data.new_items_by_type

	if new_items_by_type then
		local items = new_items_by_type[item_type]

		if items and not table.is_empty(items) then
			return true
		end
	end

	return false
end

function ItemUtils.new_item_ids()
	local character_data = _character_save_data()

	if not character_data then
		return
	end

	local new_items = character_data.new_items

	return new_items
end

function ItemUtils.new_item_notification_ids()
	local character_data = _character_save_data()

	if not character_data then
		return
	end

	local new_item_notifications = character_data.new_item_notifications

	return new_item_notifications
end

local temp_item_name_localization_context = {}

function ItemUtils.display_name(item)
	if not item then
		return "n/a"
	end

	local pattern = item.pattern
	local variant = item.variant
	local display_name = item.display_name
	local localization_function = Localize
	local pattern_localization_key = UISettings.item_pattern_localization_lookup[pattern]
	local pattern_display_name_localized = pattern_localization_key and localization_function(pattern_localization_key) or "-"
	local variant_localization_key = UISettings.item_variant_localization_lookup[variant]
	local variant_display_name_localized = variant_localization_key and localization_function(variant_localization_key) or "-"
	local display_name_localized = display_name and localization_function(display_name) or "-"
	temp_item_name_localization_context.pattern = pattern_display_name_localized
	temp_item_name_localization_context.variant = variant_display_name_localized
	temp_item_name_localization_context.item_display_name = display_name_localized
	local no_cache = true

	return display_name_localized
end

local temp_item_sub_display_name_localization_context = {
	rarity_color_b = 0,
	item_type = "n/a",
	rarity_name = "n/a",
	rarity_color_g = 0,
	rarity_color_r = 0
}

function ItemUtils.sub_display_name(item, required_level, no_color)
	local item_type_display_name_localized = ItemUtils.type_display_name(item)
	local level_display_name_localized = ItemUtils.level_display_name(item)
	local text = ""

	if item.rarity then
		local rarity_display_name_localized = ItemUtils.rarity_display_name(item)
		local rarity_color = ItemUtils.rarity_color(item)
		temp_item_sub_display_name_localization_context.rarity_color_r = rarity_color[2]
		temp_item_sub_display_name_localization_context.rarity_color_g = rarity_color[3]
		temp_item_sub_display_name_localization_context.rarity_color_b = rarity_color[4]
		temp_item_sub_display_name_localization_context.rarity_name = rarity_display_name_localized
		temp_item_sub_display_name_localization_context.item_type = item_type_display_name_localized
		text = rarity_display_name_localized
	else
		return item_type_display_name_localized
	end

	if required_level then
		local no_cache = true
		text = text .. " · {#color(120,120,120)}" .. Localize("loc_requires_level", no_cache, {
			level = required_level
		})
	end

	return text
end

function ItemUtils.trait_textures(trait_item, rarity)
	local item_trait_frame_texture_lookup = UISettings.item_trait_frame_texture_lookup
	local icon = trait_item.icon and trait_item.icon ~= "" and trait_item.icon
	local texture_icon = icon or "content/ui/textures/icons/traits/weapon_trait_default"
	local texture_frame = rarity and item_trait_frame_texture_lookup[rarity] or "content/ui/textures/icons/traits/trait_icon_frame_large"

	return texture_icon, texture_frame
end

function ItemUtils.character_level(item)
	local character_level = item.characterLevel or 0

	return character_level
end

local find_link_attachment_item_slot_path = nil

function find_link_attachment_item_slot_path(target_table, slot_id, item, link_item, optional_path)
	local unused_trinket_name = "content/items/weapons/player/trinkets/unused_trinket"
	local path = optional_path or nil

	for k, t in pairs(target_table) do
		if type(t) == "table" then
			if k == slot_id then
				if not t.item or t.item ~= unused_trinket_name then
					path = path and path .. "." .. k or k

					if link_item then
						t.item = item
					end

					return path, t.item
				else
					return nil
				end
			else
				local previous_path = path
				path = path and path .. "." .. k or k
				local alternative_path, path_item = find_link_attachment_item_slot_path(t, slot_id, item, link_item, path)

				if alternative_path then
					return alternative_path, path_item
				else
					path = previous_path
				end
			end
		end
	end
end

local trinket_slot_order = {
	"slot_trinket_1",
	"slot_trinket_2"
}

function ItemUtils.weapon_trinket_preview_item(item, optional_preview_item)
	local preview_item_name = optional_preview_item or "content/items/weapons/player/trinkets/preview_trinket"
	local preview_item = preview_item_name and MasterItems.get_item(preview_item_name)
	local visual_item = nil

	if preview_item then
		visual_item = table.clone_instance(preview_item)
	end

	if visual_item then
		visual_item.gear_id = item.gear_id

		for i = 1, #trinket_slot_order do
			local slot_id = trinket_slot_order[i]

			if find_link_attachment_item_slot_path(visual_item, slot_id, item, true) then
				break
			end
		end
	end

	return visual_item
end

function ItemUtils.weapon_skin_preview_item(item)
	local preview_item_name = item.preview_item
	local preview_item = preview_item_name and MasterItems.get_item(preview_item_name)
	local visual_item = nil

	if preview_item then
		visual_item = table.clone_instance(preview_item)
	end

	if visual_item then
		visual_item.gear_id = item.gear_id
		visual_item.slot_weapon_skin = item
	end

	return visual_item
end

function ItemUtils.item_level(item)
	local item_level = item.itemLevel
	local power = item_level or 0

	return " " .. tostring(power), item_level ~= nil
end

function ItemUtils.is_weapon_template_ranged(item)
	local weapon_template = WeaponTemplate.weapon_template_from_item(item)
	local keywords = weapon_template and weapon_template.keywords
	local search_result = keywords and table.find(keywords, "ranged")

	return search_result and search_result > 0
end

function ItemUtils.type_display_name(item)
	local item_type = item.item_type
	local item_type_localization_key = UISettings.item_type_localization_lookup[item_type]
	local item_type_display_name_localized = item_type_localization_key and Localize(item_type_localization_key) or "<undefined item_type>"

	return item_type_display_name_localized
end

function ItemUtils.level_display_name(item)
	local item_level = ItemUtils.item_level(item)
	local item_level_display_name_localized = Localize("loc_item_display_level_format_key", true, {
		level = item_level
	})

	return item_level_display_name_localized
end

function ItemUtils.type_texture(item)
	local item_type = item.item_type
	local item_type_texture_path = UISettings.item_type_texture_lookup[item_type] or "content/ui/textures/icons/item_types/weapons"

	return item_type_texture_path
end

function ItemUtils.variant_display_name(item)
	local variant = item.variant
	local variant_localization_key = UISettings.item_variant_localization_lookup[variant]
	local variant_display_name_localized = variant_localization_key and Localize(variant_localization_key) or "<undefined item_variant>"

	return variant_display_name_localized
end

function ItemUtils.pattern_display_name(item)
	local pattern = item.pattern
	local pattern_localization_key = UISettings.item_pattern_localization_lookup[pattern]
	local pattern_display_name_localized = pattern_localization_key and Localize(pattern_localization_key) or "<undefined item_pattern>"

	return pattern_display_name_localized
end

function ItemUtils.rarity_display_name(item)
	local rarity_settings = RaritySettings[item.rarity]
	local loc_key = rarity_settings and rarity_settings.display_name

	return loc_key and Localize(loc_key) or "<undefined item_rarity>"
end

function ItemUtils.rarity_color(item)
	local rarity_settings = RaritySettings[item.rarity]

	return rarity_settings and rarity_settings.color or {
		255,
		255,
		0,
		0
	}
end

function ItemUtils.keywords_text(item)
	local weapon_template = WeaponTemplate.weapon_template_from_item(item)
	local displayed_keywords = weapon_template.displayed_keywords
	local text = ""

	if displayed_keywords then
		for i = 1, #displayed_keywords do
			local keyword = displayed_keywords[i]
			local display_name = keyword.display_name
			text = text .. Localize(display_name)

			if i ~= #displayed_keywords then
				text = text .. " • "
			end
		end
	end

	return text
end

function ItemUtils.weapon_skin_requirement_text(item)
	local weapon_template_restriction = item.weapon_template_restriction
	local text = ""

	if not weapon_template_restriction or table.is_empty(weapon_template_restriction) then
		return text, false
	end

	local weapon_template_display_settings = UISettings.weapon_template_display_settings

	if not weapon_template_display_settings then
		return text, false
	end

	for i = 1, #weapon_template_restriction do
		local weapon_template_name = weapon_template_restriction[i]
		local template_display_settings = weapon_template_name and weapon_template_display_settings[weapon_template_name]
		local template_display_name = template_display_settings and template_display_settings.display_name
		local template_display_name_localized = template_display_name and Localize(template_display_name)

		if template_display_name_localized then
			text = text .. "• " .. template_display_name_localized

			if i < #weapon_template_restriction then
				text = text .. "\n"
			end
		end
	end

	return text, true
end

function ItemUtils.perk_item_by_id(perk_id)
	return MasterItems.get_item(perk_id)
end

local temp_item_rank_localization_context = {
	rank = 0
}

function ItemUtils.rank_display_text(item)
	local weapon_rank = Managers.progression:get_item_rank(item)
	temp_item_rank_localization_context.rank = weapon_rank
	local no_cache = true

	return Localize("loc_item_display_rank_format_key", no_cache, temp_item_rank_localization_context)
end

function ItemUtils.equip_weapon_skin(weapon_item, skin_item)
	local weapon_gear_id = weapon_item.gear_id
	local skin_gear_id = skin_item and skin_item.gear_id
	local attach_point = "slot_weapon_skin"

	return Managers.data_service.gear:attach_item_as_override(weapon_gear_id, attach_point, skin_gear_id)
end

function ItemUtils.equip_weapon_trinket(weapon_item, trinket_item, optional_path)
	local weapon_gear_id = weapon_item.gear_id
	local trinket_gear_id = trinket_item and trinket_item.gear_id
	local attach_point = optional_path

	if not attach_point then
		local link_attachment_item_to_slot = nil
		local unused_trinket_name = "content/items/weapons/player/trinkets/unused_trinket"

		function link_attachment_item_to_slot(target_table, slot_id, item, optional_path)
			local path = optional_path or nil

			for k, t in pairs(target_table) do
				if type(t) == "table" then
					local correct_path = k == slot_id

					if correct_path and (not t.item or t.item ~= unused_trinket_name) then
						t.item = item
						path = path and path .. "." .. k or k

						return path
					else
						local previous_path = path
						path = path and path .. "." .. k or k
						local alternative_path = link_attachment_item_to_slot(t, slot_id, item, path)

						if alternative_path then
							return alternative_path
						else
							path = previous_path
						end
					end
				end
			end
		end

		local master_item = weapon_item.__master_item
		attach_point = link_attachment_item_to_slot(master_item, "slot_trinket_1", trinket_item)
		attach_point = attach_point or link_attachment_item_to_slot(master_item, "slot_trinket_2", trinket_item)
	end

	return Managers.data_service.gear:attach_item_as_override(weapon_gear_id, attach_point .. ".item", trinket_gear_id)
end

function ItemUtils.equip_slot_items(items)
	local peer_id = Network.peer_id()
	local local_player_id = 1
	local player_manager = Managers.player
	local player = player_manager:player(peer_id, local_player_id)
	local player_unit = player.player_unit
	local is_server = Managers.state.game_session and Managers.state.game_session:is_server()
	local profile = player:profile()
	local archetype = profile.archetype
	local breed_name = archetype.breed
	local character_id = player:character_id()

	if items then
		local item_gear_ids_by_slots = {}

		for slot_name, item in pairs(items) do
			local breeds = item and item.breeds
			local breed_valid = not breeds or table.contains(breeds, breed_name)
			local slots = item and item.slots
			local slot_valid = not slots or table.contains(slots, slot_name)

			if breed_valid and slot_valid then
				item_gear_ids_by_slots[slot_name] = item.gear_id
			end
		end

		Managers.backend.interfaces.characters:equip_items_in_slots(character_id, item_gear_ids_by_slots):next(function (v)
			Log.debug("ItemUtils", "Items equipped in loadout slots")

			if is_server then
				local profile_synchronizer_host = Managers.profile_synchronization:synchronizer_host()

				profile_synchronizer_host:profile_changed(peer_id, local_player_id)
			else
				Managers.connection:send_rpc_server("rpc_notify_profile_changed", peer_id, local_player_id)
			end
		end):catch(function (errors)
			Log.error("ItemUtils", "Failed equipping items in loadout slots", errors)
		end)
	end
end

function ItemUtils.equip_slot_master_items(items)
	local peer_id = Network.peer_id()
	local local_player_id = 1
	local player_manager = Managers.player
	local player = player_manager and player_manager:player(peer_id, local_player_id)

	if not player then
		return
	end

	local is_server = Managers.state.game_session and Managers.state.game_session:is_server()
	local profile = player:profile()
	local archetype = profile.archetype
	local breed_name = archetype.breed
	local character_id = player:character_id()

	if items then
		local item_master_ids_by_slots = {}

		for slot_name, item in pairs(items) do
			local breeds = item and item.breeds
			local breed_valid = not breeds or table.contains(breeds, breed_name)
			local slots = item and item.slots
			local slot_valid = not slots or table.contains(slots, slot_name)

			if breed_valid and slot_valid then
				item_master_ids_by_slots[slot_name] = item.name
			end
		end

		Managers.backend.interfaces.characters:equip_master_items_in_slots(character_id, item_master_ids_by_slots):next(function (v)
			Log.debug("ItemUtils", "Master items equipped in loadout slots")

			if is_server then
				local profile_synchronizer_host = Managers.profile_synchronization:synchronizer_host()

				profile_synchronizer_host:profile_changed(peer_id, local_player_id)
			else
				Managers.connection:send_rpc_server("rpc_notify_profile_changed", peer_id, local_player_id)
			end
		end):catch(function (errors)
			Log.error("ItemUtils", "Failed equipping master items in loadout slots", errors)
		end)
	end
end

function ItemUtils.equip_item_in_slot(slot_name, item)
	local peer_id = Network.peer_id()
	local local_player_id = 1
	local player_manager = Managers.player
	local player = player_manager and player_manager:player(peer_id, local_player_id)

	if not player then
		return
	end

	local is_server = Managers.state.game_session and Managers.state.game_session:is_server()
	local profile = player:profile()
	local archetype = profile.archetype
	local breed_name = archetype.breed
	local breeds = item and item.breeds
	local breed_valid = not breeds or table.contains(breeds, breed_name)

	if not breed_valid then
		return
	end

	local character_id = player:character_id()

	if item then
		Managers.backend.interfaces.characters:equip_item_slot(character_id, slot_name, item.gear_id):next(function (v)
			Log.debug("ItemUtils", "Equipped!")

			if is_server then
				local profile_synchronizer_host = Managers.profile_synchronization:synchronizer_host()

				profile_synchronizer_host:profile_changed(peer_id, local_player_id)
			else
				Managers.connection:send_rpc_server("rpc_notify_profile_changed", peer_id, local_player_id)
			end
		end):catch(function (errors)
			Log.error("ItemUtils", "Equipping %s (ID: %s) to %s failed. User should be shown some error message! %s", item.name, item.gear_id, slot_name, errors)
		end)
	end
end

function ItemUtils.slot_name(item)
	return item.slots and item.slots[1]
end

function ItemUtils.item_slot(item)
	local slot_name = ItemUtils.slot_name(item)

	return slot_name and ItemSlotSettings[slot_name]
end

function ItemUtils.compare_item_name(a, b)
	local Localize = Localize
	local a_display_name = Localize(a.display_name)
	local b_display_name = Localize(b.display_name)

	if a_display_name < b_display_name then
		return true
	elseif b_display_name < a_display_name then
		return false
	end

	return nil
end

function ItemUtils.compare_item_rarity(a, b)
	local a_rarity = a.rarity or 0
	local b_rarity = b.rarity or 0

	if a_rarity < b_rarity then
		return true
	elseif b_rarity < a_rarity then
		return false
	end

	return nil
end

function ItemUtils.compare_item_level(a, b)
	local a_itemLevel = a.itemLevel or 0
	local b_itemLevel = b.itemLevel or 0

	if a_itemLevel < b_itemLevel then
		return true
	elseif b_itemLevel < a_itemLevel then
		return false
	end

	return nil
end

local function _get_lerp_stepped_value(range, lerp_value)
	local min = 1
	local max = #range
	local lerped_value = math.lerp(min, max, lerp_value)
	local index = math.round(lerped_value)
	local value = range[index]

	return value
end

local description_values = {}

function ItemUtils.perk_description(item, rarity, lerp_value)
	table.clear(description_values)

	local description = item.description
	local trait = item.trait

	if not trait then
		return Localize(description)
	end

	if item.description_values and next(item.description_values) then
		for i = 1, #item.description_values do
			local data = item.description_values[i]
			local description_rarity = tonumber(data.rarity)

			if description_rarity == rarity then
				local description_key = data.string_key
				local description_value = data.string_value
				description_values[description_key] = description_value
			end
		end

		local no_cache = true

		return Localize(description, no_cache, description_values)
	end

	local buff_id = trait
	local buff_template = BuffTemplates[buff_id]

	if not buff_template then
		return Localize(description)
	end

	local localization_info = buff_template.localization_info

	if not localization_info then
		return Localize(description)
	end

	local class_name = buff_template.class_name

	if class_name == "proc_buff" then
		local proc_buff_name = localization_info.proc_buff_name

		if proc_buff_name then
			buff_template = BuffTemplates[proc_buff_name]
			localization_info = buff_template.localization_info
		end
	end

	local is_meta_buff = buff_template.meta_buff
	local buff_template_stat_buffs = buff_template.stat_buffs or buff_template.meta_stat_buffs or buff_template.lerped_stat_buffs or buff_template.conditional_stat_buffs

	if buff_template_stat_buffs then
		for stat_buff_name, value in pairs(buff_template_stat_buffs) do
			if buff_template.lerped_stat_buffs then
				local min = value.min
				local max = value.max
				local lerp_value_func = value.lerp_value_func or math.lerp
				value = lerp_value_func(min, max, lerp_value)
			elseif is_meta_buff and type(value) == "table" then
				value = buff_template.lerp_function(value, lerp_value)
			elseif class_name == "stepped_range_buff" then
				value = _get_lerp_stepped_value(value, lerp_value)
			end

			local show_as = localization_info[stat_buff_name]

			if show_as and show_as == "percentage" then
				value = tostring(math.round(value * 100)) .. "%"
			end

			description_values[stat_buff_name] = value
		end
	end

	description_values.duration = buff_template.duration
	local final_description = Localize(description, true, description_values)

	Log.debug("ItemUtils", "perk_description %s", table.tostring(description_values))

	return final_description
end

function ItemUtils.trait_description(item, rarity, lerp_value)
	return ItemUtils.perk_description(item, rarity, lerp_value)
end

return ItemUtils
