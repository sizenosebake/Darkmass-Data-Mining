local PlayerCharacterConstants = require("scripts/settings/player_character/player_character_constants")
local HudHealthBarLogic = require("scripts/ui/hud/elements/hud_health_bar_logic")
local PlayerUnitStatus = require("scripts/utilities/attack/player_unit_status")
local PlayerUnitVisualLoadout = require("scripts/extension_systems/visual_loadout/utilities/player_unit_visual_loadout")
local UIHudSettings = require("scripts/settings/ui/ui_hud_settings")
local UISettings = require("scripts/settings/ui/ui_settings")
local UIWidget = require("scripts/managers/ui/ui_widget")
local UIRenderer = require("scripts/managers/ui/ui_renderer")
local WeaponTemplate = require("scripts/utilities/weapon/weapon_template")
local ProfileUtils = require("scripts/utilities/profile_utils")

local function _apply_color_to_text(text, color)
	return "{#color(" .. color[2] .. "," .. color[3] .. "," .. color[4] .. ")}" .. text .. "{#reset()}"
end

local temp_ammo_display_texts = {}

local function convert_number_to_display_texts(amount, max_character, zero_numeral_color, color_zero_values, ignore_coloring)
	table.clear(temp_ammo_display_texts)

	max_character = math.min(max_character + 1, 3)
	local length = string.len(amount)
	local num_adds = max_character - length
	local zero_string = "0"
	local zero_string_colored = ignore_coloring and zero_string or _apply_color_to_text("0", zero_numeral_color)

	for i = 1, num_adds do
		temp_ammo_display_texts[#temp_ammo_display_texts + 1] = zero_string_colored
	end

	local num_amount_strings = string.format("%1d", amount)

	for i = 1, #num_amount_strings do
		local value = string.sub(num_amount_strings, i, i)

		if amount == 0 and color_zero_values then
			temp_ammo_display_texts[#temp_ammo_display_texts + 1] = zero_string_colored
		else
			temp_ammo_display_texts[#temp_ammo_display_texts + 1] = value
		end
	end

	return temp_ammo_display_texts
end

local HudElementPlayerPanelBase = class("HudElementPlayerPanelBase", "HudElementBase")

function HudElementPlayerPanelBase:init(parent, draw_layer, start_scale, data, definition_path, definition_settings)
	self._settings = definition_settings
	self._supported_features = self._settings.feature_list
	local definitions = require(definition_path)

	HudElementPlayerPanelBase.super.init(self, parent, draw_layer, start_scale, definitions)

	local health_bar_segment_definition = definitions.health_bar_segment_definition

	if health_bar_segment_definition then
		local segment_widgets = {}

		for i = 1, 10 do
			local widget = self:_create_widget("health_bar_segment_" .. i, health_bar_segment_definition)
			segment_widgets[i] = widget
		end

		self._health_bar_segment_widgets = segment_widgets
	end

	if self._supported_features.health then
		self._health_bar_logic = HudHealthBarLogic:new(self._settings.health_bar_settings)
	end

	if self._supported_features.toughness then
		self._toughness_bar_logic = HudHealthBarLogic:new(self._settings.toughness_bar_settings)
	end

	self._default_rich_presence_text = self:_localize("loc_hud_player_rich_presence_default", true)
	self._data = data
	local weapon_slots = {}
	local weapon_slot_configuration = PlayerCharacterConstants.slot_configuration_by_type.weapon

	for slot_id, config in pairs(weapon_slot_configuration) do
		weapon_slots[#weapon_slots + 1] = slot_id
	end

	self._weapon_slots = weapon_slots
	self._is_player_speaking = false

	Managers.event:register(self, "chat_manager_participant_update", "_chat_manager_participant_update")
end

function HudElementPlayerPanelBase:update(dt, t, ui_renderer, render_settings, input_service)
	HudElementPlayerPanelBase.super.update(self, dt, t, ui_renderer, render_settings, input_service)

	local player = self._data.player

	self:_update_player_features(dt, t, player, ui_renderer)

	if self._pulse_background_panel then
		self:_update_disabled_pulse()
	end
end

function HudElementPlayerPanelBase:_update_disabled_pulse(reset)
	local speed = 7
	local red_anim_progress = 0.5 + math.sin(Application.time_since_launch() * speed) * 0.5
	local intesity = reset and 0 or 1
	local red = red_anim_progress * 75 * intesity
	local widget = self._widgets_by_name.panel_background

	if widget then
		widget.dirty = true
	end
end

function HudElementPlayerPanelBase:_player_extensions(player)
	local player_unit = player.player_unit

	if Unit.alive(player_unit) then
		if not self._extensions then
			self._extensions = self._parent:get_all_player_extensions(player, {})
		end
	elseif self._extensions then
		self._extensions = nil
	end

	return self._extensions
end

function HudElementPlayerPanelBase:_update_player_features(dt, t, player, ui_renderer)
	local supported_features = self._supported_features
	local data = self._data
	local parent = self._parent
	local extensions = self:_player_extensions(player)
	local unit_data_extension = extensions and extensions.unit_data
	local visual_loadout_extension = extensions and extensions.visual_loadout
	local health_extension = extensions and extensions.health
	local toughness_extension = extensions and extensions.toughness
	local ability_extension = extensions and extensions.ability
	local coherency_extension = extensions and extensions.coherency
	self._player = player

	if supported_features.name then
		local my_player = parent:player()
		local profile = my_player and my_player:profile()
		local current_level = profile.current_level or 1

		if current_level ~= self._current_level then
			local player_name = player:name()

			if self._player_name_prefix then
				player_name = self._player_name_prefix .. player_name
			end

			if not supported_features.level then
				current_level = nil
			end

			self:_set_player_name(player_name, current_level)
		end
	end

	local insignia_item = nil
	local profile = player:profile()

	if profile then
		if not self._portrait_loaded_info or self._portrait_loaded_info.character_id ~= profile.character_id then
			self:_request_player_icon(ui_renderer)
		end

		local loadout = profile.loadout

		if loadout then
			local frame_item = loadout.slot_portrait_frame
			local frame_item_gear_id = frame_item and frame_item.gear_id

			if frame_item_gear_id ~= self._frame_item_gear_id then
				self._frame_item_gear_id = frame_item_gear_id

				self:_request_player_frame(frame_item, ui_renderer)
			end

			insignia_item = loadout.slot_insignia
		end
	end

	if supported_features.insignia then
		local insignia_item_gear_id = insignia_item and insignia_item.gear_id

		if insignia_item_gear_id ~= self._insignia_item_gear_id then
			self._insignia_item_gear_id = insignia_item_gear_id

			self:_request_player_insignia(insignia_item, ui_renderer)
		end
	end

	local is_party_player = player.is_party_player and player:is_party_player() or false
	local presence_id = player.presence_id and player:presence_id()

	if is_party_player ~= self._is_party_player or presence_id ~= self._presence_id then
		self._is_party_player = is_party_player
		self._presence_id = presence_id
		local draw_rich_precense = is_party_player
		local presence_text = player.presence_hud_text and player:presence_hud_text()

		self:_set_rich_presence(presence_text, draw_rich_precense, ui_renderer)
	end

	if supported_features.character_text then
		local archetype = profile.archetype

		if archetype ~= self._archetype then
			self._archetype = archetype
			local character_title = ProfileUtils.character_title(profile, true)

			self:_set_character_text(character_title, ui_renderer)
		end
	end

	local dead = nil

	if health_extension then
		if health_extension then
			dead = not health_extension:is_alive()

			if not health_extension:is_alive() then
				dead = false

				if false then
					dead = true
				end
			end
		end
	else
		dead = true
	end

	local disabled = false
	local knocked_down = false
	local hogtied = false
	local ledge_hanging = false
	local pounced = false
	local netted = false

	if not dead then
		disabled, knocked_down, hogtied, ledge_hanging, pounced, netted = self:_is_player_disabled(unit_data_extension)
	end

	if supported_features.voip then
		self:_set_speaking(self._is_player_speaking, ui_renderer)
	end

	local disabled_state_updated = false

	if disabled ~= self._disabled or knocked_down ~= self._knocked_down or ledge_hanging ~= self._ledge_hanging or hogtied ~= self._hogtied then
		self._disabled = disabled
		self._knocked_down = knocked_down
		self._hogtied = hogtied
		self._ledge_hanging = ledge_hanging
		disabled_state_updated = true
	end

	local show_as_dead = dead or hogtied or dead and not is_party_player
	local inventory_component = unit_data_extension and unit_data_extension:read_component("inventory")
	local carrying_luggable = not dead and not disabled and visual_loadout_extension and self:_is_player_carrying_luggable(inventory_component, visual_loadout_extension) or false
	local carrying_pocketable = false
	local pocketable_hud_icon = nil

	if not dead and visual_loadout_extension then
		carrying_pocketable, pocketable_hud_icon = self:_has_player_pocketable(inventory_component, visual_loadout_extension)
	end

	if disabled and not hogtied then
		local my_player = parent:player()

		if my_player ~= player and not self._disabled_world_marker_id then
			local player_unit = player.player_unit

			if Unit.alive(player_unit) then
				local marker_callback = callback(self, "_on_disabled_world_marker_spawned")
				local marker_type = "player_assistance"

				Managers.event:trigger("add_world_marker_unit", marker_type, player_unit, marker_callback, {
					player = player
				})
			end
		end
	elseif self._disabled_world_marker_id then
		Managers.event:trigger("remove_world_marker", self._disabled_world_marker_id)

		self._disabled_world_marker_id = nil
	end

	if supported_features.throwables then
		local throwables_visible = not dead and not hogtied and ability_extension ~= nil
		local throwables_status = self:_get_weapon_throwables_status(ability_extension)

		if throwables_status ~= self._throwables_status or throwables_visible ~= self._throwables_visible then
			self:_set_throwables_status(throwables_status, throwables_visible, ui_renderer)

			self._throwables_status = throwables_status
			self._throwables_visible = throwables_visible
		end
	end

	if supported_features.ammo then
		local ammo_visible = not dead and not hogtied and unit_data_extension ~= nil
		local ammo_status = unit_data_extension and self:_get_weapon_ammo_status(unit_data_extension)

		if ammo_status ~= self._ammo_status or ammo_visible ~= self._ammo_visible then
			self:_set_ammo_level(ammo_status, ammo_visible, ui_renderer)

			self._ammo_status = ammo_status
			self._ammo_visible = ammo_visible
		end
	end

	if supported_features.respawn_timer then
		local game_mode_manager = Managers.state.game_mode
		local time_manager = Managers.time
		local has_gameplay_timer = time_manager:has_timer("gameplay")
		local current_time = has_gameplay_timer and time_manager:time("gameplay")
		local ready_time_to_spawn = has_gameplay_timer and (hogtied and current_time or game_mode_manager:player_time_until_spawn(player))

		self:_set_player_respawn_timer(current_time, ready_time_to_spawn, dead)
	end

	local toughness_percentage = toughness_extension and toughness_extension:current_toughness_percent() or 0
	local max_toughness = toughness_extension and toughness_extension.max_toughness and toughness_extension:max_toughness() or 0

	if supported_features.toughness then
		local update_max_toughness = max_toughness ~= self._max_toughness
		local toughness_bar_logic = self._toughness_bar_logic

		toughness_bar_logic:update(dt, t, toughness_percentage, 1)

		local bar_fraction, bar_ghost_fraction, bar_max_fraction = toughness_bar_logic:animated_health_fractions()

		if bar_fraction and bar_ghost_fraction or update_max_toughness then
			local toughness_percentage_bar = toughness_extension and toughness_extension:current_toughness_percent_visual() or 0
			bar_fraction = bar_fraction or self._toughness_fraction or 0
			bar_ghost_fraction = bar_ghost_fraction or self._toughness_ghost_fraction or 0

			self:_apply_toughness_fraction(toughness_percentage_bar, bar_ghost_fraction, bar_max_fraction)

			if supported_features.toughness_text and (bar_fraction ~= self._toughness_fraction or update_max_toughness) then
				self:_apply_widget_number_text("toughness_text", toughness_percentage * max_toughness)
			end

			self._max_toughness = max_toughness
			self._toughness_fraction = bar_fraction
			self._toughness_ghost_fraction = bar_ghost_fraction
		end
	end

	if supported_features.toughness_hit_indicator then
		if toughness_percentage ~= self._toughness_percentage then
			if show_as_dead or knocked_down then
				if self._toughness_hit_progress then
					self._toughness_hit_progress = nil
					self._toughness_hit_armor_break = false

					self:_set_toughness_hit_anim_progress(1)
				end
			elseif self._toughness_percentage and toughness_percentage < self._toughness_percentage then
				self._toughness_hit_progress = 0
				self._toughness_hit_armor_break = toughness_percentage <= 0
			end

			self._toughness_percentage = toughness_percentage
		end

		if self._toughness_hit_progress then
			self._toughness_hit_progress = self._toughness_hit_progress + dt * 3

			if self._toughness_hit_progress >= 1 then
				self._toughness_hit_progress = nil

				self:_set_toughness_hit_anim_progress(0)
			else
				self:_set_toughness_hit_anim_progress(self._toughness_hit_progress, self._toughness_hit_armor_break)
			end
		end
	end

	local is_my_player = data.is_my_player
	local local_player = data.local_player

	if supported_features.coherency and not is_my_player then
		local coherency_visible = not dead and not hogtied and unit_data_extension ~= nil

		self:_update_coherency(coherency_extension, local_player, coherency_visible, ui_renderer)
	end

	if supported_features.pocketable then
		local pocketable_visible = not dead and not hogtied and unit_data_extension ~= nil

		if carrying_pocketable ~= self._carrying_pocketable or pocketable_hud_icon ~= self._pocketable_hud_icon or pocketable_visible ~= self._pocketable_visible then
			self._carrying_pocketable = carrying_pocketable
			self._pocketable_visible = pocketable_visible
			self._pocketable_hud_icon = pocketable_hud_icon

			self:_update_pocketable_presentation(pocketable_hud_icon, pocketable_visible, ui_renderer)
		end
	end

	self:_update_player_name_prefix()

	local player_status = false
	local player_status_changed = false

	if supported_features.status_icon then
		if dead then
			player_status = "dead"
		elseif hogtied then
			player_status = "hogtied"
		elseif pounced then
			player_status = "pounced"
		elseif netted then
			player_status = "netted"
		elseif knocked_down then
			player_status = "knocked_down"
		elseif ledge_hanging then
			player_status = "ledge_hanging"
		elseif carrying_luggable then
			player_status = "luggable"
		end

		if self._player_status ~= player_status then
			local status_icon = UIHudSettings.player_status_icons[player_status]
			local status_color = UIHudSettings.player_status_colors[player_status]
			self._player_status = player_status

			self:_set_status_icon(status_icon, status_color, ui_renderer)

			player_status_changed = true
		end
	end

	local shadow_portrait = player_status and true or false

	if self._shadow_portrait ~= shadow_portrait then
		self._shadow_portrait = shadow_portrait

		self:_set_shadowing_portrait(shadow_portrait)
	end

	local pulse_background_panel = ledge_hanging or knocked_down

	if pulse_background_panel ~= self._pulse_background_panel then
		self._pulse_background_panel = pulse_background_panel

		if not pulse_background_panel then
			self:_update_disabled_pulse(true)
		end
	end

	if dead ~= self._dead or show_as_dead ~= self._show_as_dead or player_status_changed then
		self._show_as_dead = show_as_dead

		self:_set_dead(dead, show_as_dead, ui_renderer)
	end

	if supported_features.health then
		local max_health = health_extension and health_extension:max_health() or 0
		local max_wounds = (not health_extension or knocked_down) and 1 or health_extension:max_wounds()
		local permanent_damage = health_extension and health_extension:permanent_damage_taken() or 0
		local health_percentage = health_extension and health_extension:current_health_percent() or 0
		local health_max_percentage = max_health > 0 and 1 - permanent_damage / max_health or 0
		local health_bar_logic = self._health_bar_logic

		health_bar_logic:update(dt, t, health_percentage, health_max_percentage)

		local bar_fraction, bar_ghost_fraction, bar_max_fraction = health_bar_logic:animated_health_fractions()
		bar_fraction = bar_fraction or health_percentage
		bar_ghost_fraction = bar_ghost_fraction or 0
		local update_max_health = max_health ~= self._max_health
		local update_max_wounds = max_wounds ~= self._max_wounds

		if bar_fraction and bar_ghost_fraction or update_max_health or update_max_wounds then
			local force_update = disabled_state_updated or player_status_changed or update_max_wounds

			self:_apply_health_fraction(bar_fraction, bar_ghost_fraction, bar_max_fraction, max_wounds, force_update)

			if supported_features.health_text and (bar_fraction ~= self._health_fraction or update_max_health) then
				self:_apply_widget_number_text("health_text", bar_fraction * max_health)
			end
		end

		self._max_wounds = max_wounds
		self._max_health = max_health
		self._health_fraction = bar_fraction
		self._health_ghost_fraction = bar_ghost_fraction
		self._health_max_fraction = bar_max_fraction
		self._health_max_percentage = health_max_percentage
	end
end

function HudElementPlayerPanelBase:_set_toughness_hit_anim_progress(progress, armor_break)
	local anim_progress = math.easeInCubic(math.ease_pulse(math.min(progress, 1)))
	local alpha_progress = anim_progress
	local max_alpha = 150

	if armor_break then
		anim_progress = math.ease_exp(progress)
		max_alpha = 25
	end

	local widgets_by_name = self._widgets_by_name
	local widget = widgets_by_name.panel_background

	if widget then
		local hit_indicator_style = widget.style.hit_indicator
		local alpha = alpha_progress * max_alpha
		hit_indicator_style.color[1] = alpha
		local extra_size = armor_break and 40 or 0
		local size_addition = hit_indicator_style.size_addition
		local default_size_addition = hit_indicator_style.default_size_addition
		size_addition[1] = default_size_addition[1] + extra_size * anim_progress
		size_addition[2] = default_size_addition[2] + extra_size * anim_progress
		local hit_indicator_armor_break_style = widget.style.hit_indicator_armor_break
		hit_indicator_armor_break_style.color[1] = armor_break and alpha or 0
		size_addition = hit_indicator_armor_break_style.size_addition
		size_addition[1] = extra_size * anim_progress
		size_addition[2] = extra_size * anim_progress
		widget.dirty = true
	end
end

function HudElementPlayerPanelBase:_on_disabled_world_marker_spawned(id)
	self._disabled_world_marker_id = id
end

function HudElementPlayerPanelBase:_has_player_pocketable(inventory_component, visual_loadout_extension)
	local slot_id = "slot_pocketable"
	local pocketable_name = inventory_component[slot_id]
	local weapon_template = pocketable_name and visual_loadout_extension:weapon_template_from_slot(slot_id)
	local equipped = weapon_template ~= nil
	local hud_icon = nil

	if equipped then
		hud_icon = weapon_template.hud_icon_small
	end

	return equipped, hud_icon
end

function HudElementPlayerPanelBase:_is_player_carrying_luggable(inventory_component, visual_loadout_extension)
	local slot_id = "slot_luggable"

	return PlayerUnitVisualLoadout.slot_equipped(inventory_component, visual_loadout_extension, slot_id) and inventory_component.wielded_slot == slot_id
end

function HudElementPlayerPanelBase:_is_player_disabled(unit_data_extension)
	if unit_data_extension then
		local character_state_component = unit_data_extension:read_component("character_state")
		local disabled_character_state_component = unit_data_extension:read_component("disabled_character_state")
		local _, requires_help = PlayerUnitStatus.is_disabled(character_state_component)
		local knocked_down = PlayerUnitStatus.is_knocked_down(character_state_component)
		local hogtied = PlayerUnitStatus.is_hogtied(character_state_component)
		local pounced = PlayerUnitStatus.is_pounced(disabled_character_state_component)
		local netted = PlayerUnitStatus.is_netted(disabled_character_state_component)
		local ledge_hanging = PlayerUnitStatus.is_ledge_hanging(character_state_component)

		return requires_help, knocked_down, hogtied, ledge_hanging, pounced, netted
	end

	return false
end

function HudElementPlayerPanelBase:_set_speaking(speaking, ui_renderer)
	local widgets_by_name = self._widgets_by_name
	local widget = widgets_by_name.voice_indicator

	if self._speaking ~= speaking then
		self:_set_widget_visible(widget, speaking, ui_renderer)

		self._speaking = speaking
	end
end

function HudElementPlayerPanelBase:_set_widget_visible(widget, visible, ui_renderer)
	if not widget.dirty then
		widget.dirty = widget.content.visible ~= visible
	end

	widget.content.visible = visible

	if not visible then
		UIWidget.destroy(ui_renderer, widget)
	end

	self._draw_health_segments = true
end

function HudElementPlayerPanelBase:_set_dead(is_dead, show_as_dead, ui_renderer)
	self._dead = is_dead
	local is_alive = not show_as_dead
	local supported_features = self._supported_features
	local widgets_by_name = self._widgets_by_name

	if supported_features.respawn_timer then
		local widget = widgets_by_name.respawn_timer
		local visible = show_as_dead

		self:_set_widget_visible(widget, visible, ui_renderer)
	end

	local panel_background_widget = widgets_by_name.panel_background

	if panel_background_widget then
		local style = panel_background_widget.style

		if style.health_icon then
			style.health_icon.color[1] = show_as_dead and 0 or 255
		end

		if style.toughness_icon then
			style.toughness_icon.color[1] = show_as_dead and 0 or 255
		end

		panel_background_widget.dirty = true
	end

	if supported_features.toughness then
		self:_set_widget_visible(widgets_by_name.toughness, is_alive, ui_renderer)
		self:_set_widget_visible(widgets_by_name.toughness_ghost, is_alive, ui_renderer)
		self:_set_widget_visible(widgets_by_name.toughness_bar_background, is_alive, ui_renderer)
	end
end

function HudElementPlayerPanelBase:_set_shadowing_portrait(should_shadow)
	local widget = self._widgets_by_name.player_icon
	local material_values = widget.style.texture.material_values
	material_values.desaturation = should_shadow and 1 or 0
	material_values.intensity = should_shadow and 0.25 or 1
	widget.dirty = true
end

function HudElementPlayerPanelBase:_set_status_icon(status_icon, status_color, ui_renderer)
	local widgets_by_name = self._widgets_by_name
	local widget = widgets_by_name.status_icon

	if status_icon then
		widget.content.texture = status_icon
	end

	if status_color then
		local color = widget.style.texture.color
		color[1] = status_color[1]
		color[2] = status_color[2]
		color[3] = status_color[3]
		color[4] = status_color[4]
	end

	local visible = status_icon and true or false

	self:_set_widget_visible(widget, visible, ui_renderer)

	widget.dirty = true
end

function HudElementPlayerPanelBase:_get_weapon_throwables_status(ability_extension)
	local max_status = 3

	if not ability_extension then
		return max_status
	end

	local equipped_abilities = ability_extension:equipped_abilities()
	local ability_id = "combat_ability"

	if not equipped_abilities[ability_id] then
		return max_status
	end

	local max_ability_charges = ability_extension:max_ability_charges(ability_id)
	local remaining_ability_charges = ability_extension:remaining_ability_charges(ability_id)
	local ability_charges_status = 0

	if max_ability_charges > 0 then
		local ability_charges_fraction = remaining_ability_charges / max_ability_charges
		ability_charges_status = math.ceil(ability_charges_fraction / (1 / max_status))

		if remaining_ability_charges == 1 then
			ability_charges_status = max_status
		end

		return ability_charges_status
	end

	return ability_charges_status
end

function HudElementPlayerPanelBase:_get_weapon_ammo_status(unit_data_extension)
	local weapon_slots = self._weapon_slots
	local total_current_ammo = 0
	local total_max_ammo = 0

	for i = 1, #weapon_slots do
		local slot_id = weapon_slots[i]
		local inventory_component = unit_data_extension:read_component(slot_id)

		if inventory_component then
			local max_clip = inventory_component.max_ammunition_clip or 0
			local max_reserve = inventory_component.max_ammunition_reserve or 0
			local current_clip = inventory_component.current_ammunition_clip or 0
			local current_reserve = inventory_component.current_ammunition_reserve or 0
			total_current_ammo = total_current_ammo + current_clip + current_reserve
			total_max_ammo = total_max_ammo + max_clip + max_reserve
		end
	end

	local max_status = 3
	local ammo_status = max_status

	if total_max_ammo > 0 then
		local weapon_ammo_fraction = total_current_ammo / total_max_ammo
		ammo_status = math.ceil(weapon_ammo_fraction / (1 / max_status))
	end

	return ammo_status
end

function HudElementPlayerPanelBase:_set_throwables_status(throwables_status, visible, ui_renderer)
	local widget = self._widgets_by_name.throwable
	local style = widget.style.texture
	local icon_color = style.color
	local color = nil

	if throwables_status <= 0 then
		color = UIHudSettings.color_tint_ammo_high
	elseif throwables_status <= 1 then
		color = UIHudSettings.color_tint_ammo_medium
	elseif throwables_status <= 2 then
		color = UIHudSettings.color_tint_ammo_low
	else
		color = UIHudSettings.color_tint_main_1
	end

	icon_color[2] = color[2]
	icon_color[3] = color[3]
	icon_color[4] = color[4]

	self:_set_widget_visible(widget, visible, ui_renderer)

	widget.dirty = true
end

function HudElementPlayerPanelBase:_set_ammo_level(ammo_status, visible, ui_renderer)
	ammo_status = ammo_status or 1
	local widget = self._widgets_by_name.ammo_status
	local style = widget.style
	local icon_style_name = "ammo"
	local icon_style = style[icon_style_name]
	local icon_color = icon_style.color
	local color = nil

	if ammo_status <= 0 then
		color = UIHudSettings.color_tint_ammo_high
	elseif ammo_status <= 1 then
		color = UIHudSettings.color_tint_ammo_medium
	elseif ammo_status <= 2 then
		color = UIHudSettings.color_tint_ammo_low
	else
		color = UIHudSettings.color_tint_main_1
	end

	icon_color[2] = color[2]
	icon_color[3] = color[3]
	icon_color[4] = color[4]

	self:_set_widget_visible(widget, visible, ui_renderer)

	widget.dirty = true
end

function HudElementPlayerPanelBase:_set_player_name(name, current_level)
	local widget = self._widgets_by_name.player_name
	local text = name

	if current_level then
		text = text .. " - " .. current_level .. " "
	end

	widget.content.text = text
	widget.dirty = true
end

function HudElementPlayerPanelBase:_update_pocketable_presentation(pocketable_hud_icon, visible, ui_renderer)
	local widget = self._widgets_by_name.pocketable
	widget.content.texture = pocketable_hud_icon
	visible = visible and pocketable_hud_icon ~= nil

	self:_set_widget_visible(widget, visible, ui_renderer)

	widget.dirty = true
end

function HudElementPlayerPanelBase:_request_player_frame(item, ui_renderer)
	self:_unload_portrait_frame(ui_renderer)

	if item then
		self:_load_portrait_frame(item)
	end
end

function HudElementPlayerPanelBase:_load_portrait_frame(item)
	local cb = callback(self, "_cb_set_player_frame")
	local icon_load_id = Managers.ui:load_item_icon(item, cb)
	self._frame_loaded_info = {
		icon_load_id = icon_load_id
	}
end

function HudElementPlayerPanelBase:_unload_portrait_frame(ui_renderer)
	local frame_loaded_info = self._frame_loaded_info

	if not frame_loaded_info then
		return
	end

	local widget = self._widgets_by_name.player_icon

	if not self.destroyed then
		local material_values = widget.style.texture.material_values
		material_values.portrait_frame_texture = "content/ui/textures/nameplates/portrait_frames/default"
		widget.dirty = true
	end

	if ui_renderer then
		UIWidget.set_visible(widget, ui_renderer, false)
		UIWidget.set_visible(widget, ui_renderer, true)
	end

	local icon_load_id = frame_loaded_info.icon_load_id

	Managers.ui:unload_item_icon(icon_load_id)

	self._frame_loaded_info = nil
end

function HudElementPlayerPanelBase:_cb_set_player_frame(item)
	if self.__deleted then
		return
	end

	local player = self._player

	if player.__deleted then
		return
	end

	local profile = player and player:profile()
	local loadout = profile and profile.loadout
	local icon = nil

	if item.icon then
		icon = item.icon
	else
		icon = "content/ui/textures/nameplates/portrait_frames/default"
	end

	local widget = self._widgets_by_name.player_icon
	local material_values = widget.style.texture.material_values
	material_values.portrait_frame_texture = icon
	widget.dirty = true
end

function HudElementPlayerPanelBase:_request_player_insignia(item, ui_renderer)
	self:_unload_portrait_insignia(ui_renderer)

	if item then
		self:_load_portrait_insignia(item)
	end
end

function HudElementPlayerPanelBase:_load_portrait_insignia(item)
	local cb = callback(self, "_cb_set_player_insignia")
	local icon_load_id = Managers.ui:load_item_icon(item, cb)
	self._insignia_loaded_info = {
		icon_load_id = icon_load_id
	}
end

function HudElementPlayerPanelBase:_unload_portrait_insignia(ui_renderer)
	local insignia_loaded_info = self._insignia_loaded_info

	if not insignia_loaded_info then
		return
	end

	local widget = self._widgets_by_name.player_icon

	if not self.destroyed then
		local insignia_style = widget.style.insignia
		local material_values = insignia_style.material_values
		insignia_style.color[1] = 0
		material_values.texture_map = "content/ui/textures/nameplates/insignias/default"
		widget.dirty = true
	end

	if ui_renderer then
		UIWidget.set_visible(widget, ui_renderer, false)
		UIWidget.set_visible(widget, ui_renderer, true)
	end

	local icon_load_id = insignia_loaded_info.icon_load_id

	Managers.ui:unload_item_icon(icon_load_id)

	self._insignia_loaded_info = nil
end

function HudElementPlayerPanelBase:_cb_set_player_insignia(item)
	if self.__deleted then
		return
	end

	local player = self._player

	if player.__deleted then
		return
	end

	local profile = player and player:profile()
	local loadout = profile and profile.loadout
	local icon = nil

	if item.icon then
		icon = item.icon
	else
		icon = "content/ui/textures/nameplates/insignias/default"
	end

	local widget = self._widgets_by_name.player_icon
	local insignia_style = widget.style.insignia
	local material_values = insignia_style.material_values
	insignia_style.color[1] = 255
	material_values.texture_map = icon
	widget.dirty = true
end

function HudElementPlayerPanelBase:_request_player_icon(ui_renderer)
	local widget = self._widgets_by_name.player_icon
	local material_values = widget.style.texture.material_values
	material_values.use_placeholder_texture = 1
	widget.dirty = true

	self:_load_portrait_icon(ui_renderer)
end

function HudElementPlayerPanelBase:_load_portrait_icon(ui_renderer)
	self:_unload_portrait_icon(ui_renderer)

	local player = self._player
	local profile = player:profile()
	local cb = callback(self, "_cb_set_player_icon")
	local icon_load_id = Managers.ui:load_profile_portrait(profile, cb)
	self._portrait_loaded_info = {
		icon_load_id = icon_load_id,
		character_id = profile.character_id
	}
end

function HudElementPlayerPanelBase:_unload_portrait_icon(ui_renderer)
	local portrait_loaded_info = self._portrait_loaded_info

	if not portrait_loaded_info then
		return
	end

	if ui_renderer then
		local widget = self._widgets_by_name.player_icon

		UIWidget.set_visible(widget, ui_renderer, false)
		UIWidget.set_visible(widget, ui_renderer, true)
	end

	local icon_load_id = portrait_loaded_info.icon_load_id

	Managers.ui:unload_profile_portrait(icon_load_id)

	self._portrait_loaded_info = nil
end

function HudElementPlayerPanelBase:_cb_set_player_icon(grid_index, rows, columns, render_target)
	local widget = self._widgets_by_name.player_icon
	local material_values = widget.style.texture.material_values
	material_values.use_placeholder_texture = 0
	material_values.rows = rows
	material_values.columns = columns
	material_values.grid_index = grid_index - 1
	material_values.texture_icon = render_target
	widget.dirty = true
end

function HudElementPlayerPanelBase:_set_character_text(character_title, ui_renderer)
	local character_text_widget = self._widgets_by_name.character_text

	if character_text_widget then
		local text = character_title
		character_text_widget.content.text = text
		character_text_widget.dirty = true
	end
end

function HudElementPlayerPanelBase:_set_rich_presence(text, visible, ui_renderer)
	local rich_presence_widget = self._widgets_by_name.rich_presence

	if rich_presence_widget then
		rich_presence_widget.content.text = visible and text or ""
		rich_presence_widget.dirty = true

		self:_set_widget_visible(rich_presence_widget, visible, ui_renderer)
	end

	local player_name_widget = self._widgets_by_name.player_name
	local player_name_default_offset = player_name_widget.style.text.default_offset

	if player_name_default_offset then
		if visible then
			player_name_widget.style.text.offset[2] = player_name_default_offset[2] + 5
		else
			player_name_widget.style.text.offset[2] = player_name_default_offset[2]
		end

		player_name_widget.dirty = true
	end
end

local temp_timer_text_context = {
	time = 0
}

function HudElementPlayerPanelBase:_set_player_respawn_timer(t, timer, is_dead)
	local time_left_text = ""

	if timer then
		timer = timer - t
		timer = math.max(0, timer)

		if timer == 0 then
			time_left_text = self:_localize("loc_hud_resurrectable")
		else
			temp_timer_text_context.time = math.round_with_precision(timer)
			time_left_text = self:_localize("loc_hud_resurrectable_in", true, temp_timer_text_context)
		end
	elseif is_dead then
		time_left_text = self:_localize("loc_hud_player_state_dead")
	end

	if time_left_text ~= self._widgets_by_name.respawn_timer.content.text then
		self._widgets_by_name.respawn_timer.content.text = time_left_text
		self._widgets_by_name.respawn_timer.dirty = true
	end
end

function HudElementPlayerPanelBase:_apply_toughness_fraction(toughness_fraction, toughness_ghost_fraction, toughness_max_fraction)
	local widgets_by_name = self._widgets_by_name
	local definitions = self._definitions
	local scenegraph_definition = definitions.scenegraph_definition
	local bar_width = scenegraph_definition.bar.size[1]

	if toughness_fraction ~= self._toughness_fraction then
		local toughness_id = "toughness"
		local toughness_widget = widgets_by_name[toughness_id]
		toughness_widget.style.texture.size[1] = bar_width * toughness_fraction
		toughness_widget.dirty = true
	end

	if toughness_ghost_fraction ~= self._toughness_ghost_fraction then
		local toughness_ghost_id = "toughness_ghost"
		local toughness_ghost_widget = widgets_by_name[toughness_ghost_id]
		toughness_ghost_widget.style.texture.size[1] = bar_width * toughness_ghost_fraction
		toughness_ghost_widget.dirty = true
	end
end

function HudElementPlayerPanelBase:_draw_health_bar(dt, t, ui_renderer)
	local segment_widgets = self._health_bar_segment_widgets

	if not segment_widgets or not self._draw_health_segments then
		return
	end

	local is_dead = self._dead
	local knocked_down = self._knocked_down
	local hogtied = self._hogtied
	local health_max_wounds = (is_dead or hogtied) and 0 or self._health_max_wounds or 1

	if self._previously_drawn_health_segments and self._previously_drawn_health_segments ~= health_max_wounds then
		for i = 1, #segment_widgets do
			local widget = segment_widgets[i]
			local visible = i <= health_max_wounds

			if not visible then
				UIWidget.destroy(ui_renderer, widget)
			end
		end
	end

	self._previously_drawn_health_segments = nil
	self._draw_health_segments = nil
	local health_fraction = self._health_fraction or 1
	local health_ghost_fraction = knocked_down and 0 or self._health_ghost_fraction
	local health_max_fraction = knocked_down and 1 or self._health_max_fraction
	local num_segments = health_max_wounds
	local spacing = 4
	local bar_size = self:scenegraph_size("bar")
	local bar_width = bar_size[1]
	local segment_width = (bar_width - (num_segments - 1) * spacing) / num_segments
	local step_fraction = 1 / num_segments
	local x_offset = (segment_width + spacing) * (num_segments - 1)

	for i = health_max_wounds, 1, -1 do
		local widget = segment_widgets[i]
		local widget_offset = widget.offset
		local segment_fraction_health = nil

		if health_fraction then
			local end_value = i * step_fraction
			local start_value = end_value - step_fraction
			segment_fraction_health = math.clamp((health_fraction - start_value) / step_fraction, 0, 1)
		end

		local segment_fraction_health_ghost = nil

		if health_ghost_fraction then
			local end_value = i * step_fraction
			local start_value = end_value - step_fraction
			segment_fraction_health_ghost = math.clamp((health_ghost_fraction - start_value) / step_fraction, 0, 1)
		end

		local segment_fraction_corruption = nil

		if health_max_fraction then
			local end_value = (num_segments + 1 - i) * step_fraction
			local start_value = end_value - step_fraction
			segment_fraction_corruption = math.clamp((1 - health_max_fraction - start_value) / step_fraction, 0, 1)
		end

		local widget_style = widget.style
		widget_style.corruption.size[1] = segment_fraction_corruption * segment_width
		widget_style.ghost.size[1] = segment_fraction_health_ghost * segment_width
		widget_style.health.size[1] = segment_fraction_health * segment_width
		widget_style.background.size[1] = segment_width
		widget.content.size[1] = segment_width
		widget_offset[1] = x_offset

		if knocked_down then
			self:_apply_color_values(widget_style.health.color, UIHudSettings.color_tint_alert_2, true)
		else
			self:_apply_color_values(widget_style.health.color, UIHudSettings.color_tint_main_1, true)
		end

		widget.dirty = true

		UIWidget.draw(widget, ui_renderer)

		x_offset = x_offset - (segment_width + spacing)
	end

	self._previously_drawn_health_segments = health_max_wounds
end

function HudElementPlayerPanelBase:_apply_health_fraction(health_fraction, health_ghost_fraction, health_max_fraction, max_wounds, force_update)
	local update = force_update and true or false

	if health_fraction ~= self._health_fraction then
		update = true
	end

	if health_ghost_fraction ~= self._health_ghost_fraction then
		update = true
	end

	if health_max_fraction ~= self._health_max_fraction then
		update = true
	end

	if health_max_fraction ~= self._health_max_fraction then
		update = true
	end

	if max_wounds ~= self._health_max_wounds then
		self._health_max_wounds = max_wounds
	end

	local settings = self._settings
	local critical_health_threshold = settings.critical_health_threshold
	self._on_critical_health = health_fraction <= critical_health_threshold

	if update then
		self._draw_health_segments = true
	end
end

function HudElementPlayerPanelBase:_apply_widget_number_text(widget_id, amount)
	local widgets_by_name = self._widgets_by_name
	local text_widget = widgets_by_name[widget_id]

	if text_widget then
		local health_value = math.ceil(amount)
		local zero_numeral_color = text_widget.style.text_1.dimmed_color or UIHudSettings.color_tint_main_3
		local ignore_coloring = false
		local health_texts = convert_number_to_display_texts(health_value, 3, zero_numeral_color, true, ignore_coloring)

		for i = 1, 3 do
			local key = "text_" .. i
			text_widget.content[key] = health_texts[i] or ""
		end

		text_widget.dirty = true
	end
end

function HudElementPlayerPanelBase:_apply_color_values(destination_color, target_color, include_alpha)
	if include_alpha then
		destination_color[1] = target_color[1]
	end

	destination_color[2] = target_color[2]
	destination_color[3] = target_color[3]
	destination_color[4] = target_color[4]
end

function HudElementPlayerPanelBase:_animate_color_value_by_progress(target, progress, from, to, include_alpha)
	local start_index = include_alpha and 1 or 2

	for i = start_index, 4 do
		target[i] = (to[i] - from[i]) * progress + from[i]
	end
end

function HudElementPlayerPanelBase:_update_coherency(coherency_extension, local_player, coherency_visible, ui_renderer)
	local in_coherence_units = coherency_extension and coherency_extension:in_coherence_units()
	local player_unit_spawn = Managers.state.player_unit_spawn
	local in_coherence_with_local_player = false

	if in_coherence_units then
		for unit, _ in pairs(in_coherence_units) do
			local player = player_unit_spawn:owner(unit)

			if player and player == local_player then
				in_coherence_with_local_player = true

				break
			end
		end
	end

	coherency_visible = coherency_visible and in_coherence_with_local_player

	if in_coherence_with_local_player ~= self._in_coherence_with_local_player or coherency_visible ~= self._coherency_visible then
		self._in_coherence_with_local_player = in_coherence_with_local_player
		local widget = self._widgets_by_name.coherency_indicator
		self._coherency_visible = coherency_visible
		widget.dirty = true

		self:_set_widget_visible(widget, coherency_visible, ui_renderer)
	end
end

local temp_player_color = UIHudSettings.color_tint_0

function HudElementPlayerPanelBase:_update_player_name_prefix()
	local my_player = self._data.player
	local player_slot = my_player and my_player.slot and my_player:slot()

	if player_slot ~= self._my_player_slot then
		local player_slot_colors = UISettings.player_slot_colors
		local color = player_slot_colors[player_slot] or temp_player_color
		self._my_player_slot = player_slot
		local profile = my_player and my_player:profile()
		local archetype = profile and profile.archetype
		local string_symbol = archetype.string_symbol
		local supported_features = self._supported_features

		if supported_features.player_color then
			self._player_name_prefix = "{#color(" .. color[2] .. "," .. color[3] .. "," .. color[4] .. ")}" .. string_symbol .. "{#reset()} "
		else
			self._player_name_prefix = string_symbol .. " "
		end
	end
end

function HudElementPlayerPanelBase:_chat_manager_participant_update(channel_handle, participant)
	if not participant.is_current_user and self._player and not self._player.__deleted and self._player._peer_id == participant.peer_id then
		self._is_player_speaking = participant.is_speaking
	end
end

function HudElementPlayerPanelBase:destroy(ui_renderer)
	Managers.event:unregister(self, "chat_manager_participant_update")
	HudElementPlayerPanelBase.super.destroy(self)
	self:_unload_portrait_icon(ui_renderer)
	self:_unload_portrait_frame(ui_renderer)
	self:_unload_portrait_insignia(ui_renderer)
	self:_destroy_widgets(ui_renderer)

	if self._disabled_world_marker_id then
		Managers.event:trigger("remove_world_marker", self._disabled_world_marker_id)

		self._disabled_world_marker_id = nil
	end
end

function HudElementPlayerPanelBase:_draw_widgets(dt, t, input_service, ui_renderer, render_settings)
	local widgets = self._widgets
	local num_widgets = #widgets

	for i = 1, num_widgets do
		local widget = widgets[i]

		if widget.dirty then
			UIWidget.draw(widget, ui_renderer)
		end
	end

	self:_draw_health_bar(dt, t, ui_renderer)
end

function HudElementPlayerPanelBase:set_visible(visible, ui_renderer, use_retained_mode)
	if use_retained_mode then
		if visible then
			self:set_dirty()
		else
			local use_retained_mode = true

			self:_destroy_widgets(ui_renderer)
		end
	end

	self._draw_health_segments = true
end

function HudElementPlayerPanelBase:_destroy_widgets(ui_renderer)
	local widgets = self._widgets
	local num_widgets = #widgets

	for i = 1, num_widgets do
		local widget = widgets[i]

		UIWidget.destroy(ui_renderer, widget)
	end

	local segment_widgets = self._health_bar_segment_widgets

	if segment_widgets then
		for i = 1, #segment_widgets do
			local widget = segment_widgets[i]

			UIWidget.destroy(ui_renderer, widget)
		end
	end
end

function HudElementPlayerPanelBase:set_dirty()
	HudElementPlayerPanelBase.super.set_dirty(self)

	local health_bar_segment_widgets = self._health_bar_segment_widgets

	if health_bar_segment_widgets then
		local num_widgets = #health_bar_segment_widgets

		for i = 1, num_widgets do
			local widget = health_bar_segment_widgets[i]
			widget.dirty = true
		end

		self._draw_health_segments = true
	end
end

function HudElementPlayerPanelBase:on_resolution_modified()
	HudElementPlayerPanelBase.super.on_resolution_modified(self)

	self._draw_health_segments = true
end

return HudElementPlayerPanelBase
