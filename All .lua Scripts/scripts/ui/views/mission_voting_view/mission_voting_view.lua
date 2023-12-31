local Definitions = require("scripts/ui/views/mission_voting_view/mission_voting_view_definitions")
local ScriptWorld = require("scripts/foundation/utilities/script_world")
local UIFonts = require("scripts/managers/ui/ui_fonts")
local UIRenderer = require("scripts/managers/ui/ui_renderer")
local UIWidget = require("scripts/managers/ui/ui_widget")
local UISoundEvents = require("scripts/settings/ui/ui_sound_events")
local MissionTemplates = require("scripts/settings/mission/mission_templates")
local MissionTypes = require("scripts/settings/mission/mission_types")
local ZoneSettings = require("scripts/settings/zones/zones")
local CircumstanceTemplates = require("scripts/settings/circumstance/circumstance_templates")
local MissionDetailsBlueprints = require("scripts/ui/views/mission_voting_view/mission_voting_view_blueprints")
local ViewStyles = require("scripts/ui/views/mission_voting_view/mission_voting_view_styles")
local UIWidgetGrid = require("scripts/ui/widget_logic/ui_widget_grid")
local InputDevice = require("scripts/managers/input/input_device")
local InputUtils = require("scripts/managers/input/input_utils")
local DangerSettings = require("scripts/settings/difficulty/danger_settings")
local MissionObjectiveTemplates = require("scripts/settings/mission_objective/mission_objective_templates")
local MissionVotingViewTestify = GameParameters.testify and require("scripts/ui/views/mission_voting_view/mission_voting_view_testify")

local function get_input_text(action_name, input_service_name)
	local alias_key = Managers.ui:get_input_alias_key(action_name, input_service_name)
	local input_text = InputUtils.input_text_for_current_input_device(input_service_name, alias_key)

	return input_text
end

local MissionVotingView = class("MissionVotingView", "BaseView")

function MissionVotingView:init(settings, context)
	if context then
		if context.qp then
			self._voting_id = context.voting_id
			self._backend_mission_id = context.backend_mission_id
			self._is_quickplay = true
		else
			self._voting_id = context.voting_id
			self._mission_data = context.mission_data
			self._is_quickplay = false
		end
	end

	self._mission_icons_widgets = {}
	self._selcted_button_index = 1
	self._gamepad_active = InputDevice.gamepad_active

	MissionVotingView.super.init(self, Definitions, settings)
end

function MissionVotingView:on_enter()
	MissionVotingView.super.on_enter(self)

	self._allow_close_hotkey = false

	self:_setup_main_page_widgets()
	self:_setup_button_widgets()
	self:_setup_details_page_static_widgets()
	self:_create_offscreen_renderer()

	if self._is_quickplay then
		self:_populate_quickplay_data()
	else
		self:_populate_data(self._mission_data)
	end

	self:_set_button_callbacks()
	self:toggle_details(false)

	if self._gamepad_active then
		self:_set_button_selected(self._selcted_button_index)
	end

	self:_play_sound(UISoundEvents.mission_vote_popup_enter)
end

function MissionVotingView:on_exit()
	MissionVotingView.super.on_exit(self)
	self:_destroy_renderer()
end

function MissionVotingView:update(dt, t, input_service)
	self:_update_timer_bar(dt)

	if not self._is_quickplay then
		self._details_list_grid:update(dt, t, input_service)
	end

	if GameParameters.testify then
		Testify:poll_requests_through_handler(MissionVotingViewTestify, self)
	end

	if input_service:get("back") and not self._has_voted then
		self:cb_on_decline_mission_pressed()
	end

	if input_service:get("next") and not self._is_quickplay then
		self:cb_on_toggle_details_pressed()
	end

	self:_handle_gamepad_input(input_service)

	if self._gamepad_active ~= InputDevice.gamepad_active then
		self:toggle_details(self._is_showing_details)

		self._gamepad_active = InputDevice.gamepad_active

		if InputDevice.gamepad_active then
			self:_set_button_selected(self._selcted_button_index)
		else
			self:_set_button_selected(nil)
		end
	end

	local pass_input, pass_draw = MissionVotingView.super.update(self, dt, t, input_service)

	return false, false
end

function MissionVotingView:draw(dt, t, input_service, layer)
	MissionVotingView.super.draw(self, dt, t, input_service, layer)

	if self._is_showing_details and self._offscreen_renderer then
		local offscreen_renderer = self._offscreen_renderer

		UIRenderer.begin_pass(offscreen_renderer, self._ui_scenegraph, input_service, dt, self._render_settings)

		local offscreen_widgets = self._mission_details_widgets
		local grid = self._details_list_grid

		for i = 1, #offscreen_widgets do
			local widget = offscreen_widgets[i]

			if grid:is_widget_visible(widget) then
				UIWidget.draw(widget, offscreen_renderer)
			end
		end

		UIRenderer.end_pass(offscreen_renderer)
	end
end

function MissionVotingView:on_resolution_modified()
	MissionVotingView.super.on_resolution_modified(self)

	if not self._is_quickplay then
		self._details_list_grid:on_resolution_modified()
	end
end

function MissionVotingView:cb_on_accept_mission_pressed()
	self:_play_sound(UISoundEvents.mission_vote_popup_accept)

	local success, fail_reason = Managers.voting:cast_vote(self._voting_id, "yes")

	if not success then
		-- Nothing
	end

	self:_show_confirmed_message()

	self._has_voted = true

	if true then
		Log.info("MissionVotingView", "Failed casting vote in voting %s, reason: %s", self._voting_id, fail_reason)
		self:_close_view()
	end
end

function MissionVotingView:cb_on_decline_mission_pressed()
	self:_play_sound(UISoundEvents.mission_vote_popup_decline)

	local success, fail_reason = Managers.voting:cast_vote(self._voting_id, "no")

	if not success then
		Log.info("MissionVotingView", "Failed casting vote in voting %s, reason: %s", self._voting_id, fail_reason)
		self:_close_view()
	end

	self._has_voted = true
end

function MissionVotingView:cb_on_toggle_details_pressed()
	if not self:_is_animation_active(self._toggle_details_page_animation_id) then
		local show_details_flag = not self._is_showing_details
		local params = {
			show_details_flag = show_details_flag,
			source_heights = show_details_flag and self._main_page_heights or self._details_page_heights,
			target_heights = show_details_flag and self._details_page_heights or self._main_page_heights
		}
		self._toggle_details_page_animation_id = self:_start_animation("switch_page", nil, params)
	end
end

function MissionVotingView:set_player_name()
	local title_text = Localize("loc_mission_voting_view_title_format", true, self.view_data)
	local title_widget = self._widgets_by_name.title_text
	title_widget.content.text = title_text
end

function MissionVotingView:toggle_details(show_details_flag)
	local toggle_details_button = self._widgets_by_name.toggle_details_button
	local button_content = toggle_details_button.content
	local text = nil

	if show_details_flag then
		self._additional_widgets = self._details_static_widgets
		text = Localize(MissionDetailsBlueprints.button_strings.hide_details)
	else
		self._additional_widgets = self._mission_info_widgets
		text = Localize(MissionDetailsBlueprints.button_strings.show_details)
	end

	button_content.text = self:_get_gamepad_details_button_text(text)
	self._is_showing_details = show_details_flag
end

function MissionVotingView:_close_view()
	Managers.ui:close_view(self.view_name)
end

function MissionVotingView:_update_timer_bar(dt)
	local timer_bar_widget = self._widgets_by_name.timer_bar
	local _, time_left_normalized = Managers.voting:time_left(self._voting_id)
	time_left_normalized = time_left_normalized or 0
	local style = timer_bar_widget.style.timer_bar
	local bar_width, _ = self:_scenegraph_size(timer_bar_widget.scenegraph_id)
	style.size[1] = bar_width * time_left_normalized
	style.color[1] = 255 * math.min(1, time_left_normalized * time_left_normalized * 1000)
end

function MissionVotingView:_draw_widgets(dt, t, input_service, ui_renderer)
	MissionVotingView.super._draw_widgets(self, dt, t, input_service, ui_renderer)

	local additional_widgets = self._additional_widgets
	local num_widgets = #additional_widgets

	for i = 1, num_widgets do
		local widget = additional_widgets[i]

		UIWidget.draw(widget, ui_renderer)
	end

	local button_widgets = self._button_widgets
	local num_buttons = #button_widgets

	for i = 1, num_buttons do
		local widget = button_widgets[i]

		UIWidget.draw(widget, ui_renderer)
	end

	local icons_widgets = self._mission_icons_widgets
	local num_icons = #icons_widgets

	for i = 1, num_icons do
		local widget = icons_widgets[i]

		UIWidget.draw(widget, ui_renderer)
	end
end

function MissionVotingView:_create_offscreen_renderer()
	local new_world_layer_id = 10
	local view_name = self.view_name
	local world_name = self.__class_name .. "_ui_offscreen_world"
	local world = Managers.ui:create_world(world_name, new_world_layer_id, nil, view_name)
	local viewport_name = "offscreen_viewport"
	local viewport_type = "overlay_offscreen"
	local viewport_layer = 1
	local viewport = Managers.ui:create_viewport(world, viewport_name, viewport_type, viewport_layer)
	local renderer_name = self.__class_name .. "offscreen_renderer"
	self._offscreen_renderer = Managers.ui:create_renderer(renderer_name, world)
	self._offscreen_world = {
		name = world_name,
		world = world,
		viewport = viewport,
		viewport_name = viewport_name,
		renderer_name = renderer_name
	}
end

function MissionVotingView:_destroy_renderer()
	if self._offscreen_renderer then
		self._offscreen_renderer = nil
	end

	local world_data = self._offscreen_world

	if world_data then
		Managers.ui:destroy_renderer(world_data.renderer_name)
		ScriptWorld.destroy_viewport(world_data.world, world_data.viewport_name)
		Managers.ui:destroy_world(world_data.world)

		self._offscreen_world = nil
	end
end

function MissionVotingView:_setup_main_page_widgets()
	local definitions = {
		widget_definitions = self._definitions.mission_info_widget_definitions
	}
	self._mission_info_widgets = {}

	self:_setup_mission_info_icons(self._mission_data)
	self:_create_widgets(definitions, self._mission_info_widgets, self._widgets_by_name)
end

function MissionVotingView:_setup_button_widgets()
	local definitions = {
		widget_definitions = self._definitions.buttons_widget_definitions
	}
	self._button_widgets = {}

	self:_create_widgets(definitions, self._button_widgets, self._widgets_by_name)
end

function MissionVotingView:_setup_details_page_static_widgets()
	local definitions = {
		widget_definitions = self._definitions.details_static_widgets_definitions
	}
	self._details_static_widgets = {}

	self:_create_widgets(definitions, self._details_static_widgets, self._widgets_by_name)
end

function MissionVotingView:_populate_data(mission_data)
	self:_set_mission_data(mission_data)

	local details_widgets_total_height = self:_set_details_data(mission_data)

	self:_calculate_page_heights(details_widgets_total_height)
	self:_resize_dialog_heights(self._main_page_heights)
end

function MissionVotingView:_get_gamepad_details_button_text(button_text)
	local gamepad_active = InputDevice.gamepad_active
	local input_text = get_input_text("next", "View")
	local new_text = gamepad_active and string.format("%s %s", input_text, button_text) or button_text

	return new_text
end

function MissionVotingView:_set_button_selected(index)
	local button_widgets = self._button_widgets

	for i = 1, #button_widgets do
		local button = button_widgets[i]

		if not button then
			return
		end

		local hotspot = button.content.hotspot
		local is_selected = index and i == index and true or false
		hotspot.is_selected = is_selected
		local content = button.content
		local text = MissionDetailsBlueprints.button_strings.selectable_buttons[content.name]
		local button_text = Localize(text)
		local input_text = get_input_text("confirm_pressed", "View")
		local new_text = is_selected and string.format("%s %s", input_text, button_text) or button_text
		button.content.text = new_text
	end
end

function MissionVotingView:_handle_gamepad_input(input_service)
	if not self._gamepad_active then
		return
	end

	if self._is_showing_details then
		local right_stick_value = input_service:get("navigate_controller_right")

		if right_stick_value[2] > 0.01 then
			local scroll_progress = self._details_list_grid:scrollbar_progress()
			local progress = scroll_progress - 0.1
			local new_progress = progress >= 0 and progress or 0

			self._details_list_grid:set_scrollbar_progress(new_progress)
		elseif right_stick_value[2] < -0.01 then
			local scroll_progress = self._details_list_grid:scrollbar_progress()
			local progress = scroll_progress + 0.1
			local new_progress = progress <= 1 and progress or 1

			self._details_list_grid:set_scrollbar_progress(new_progress)
		end
	end

	if input_service:get("navigate_up_continuous") then
		local current_index = self._selcted_button_index + 1 <= #self._button_widgets and self._selcted_button_index + 1 or 1

		self:_set_button_selected(current_index)

		self._selcted_button_index = current_index
	elseif input_service:get("navigate_down_continuous") then
		local current_index = self._selcted_button_index - 1 >= 1 and self._selcted_button_index - 1 or #self._button_widgets

		self:_set_button_selected(current_index)

		self._selcted_button_index = current_index
	end
end

function MissionVotingView:_set_requester_portrait(portrait)
	local portrait_widget = self._widgets_by_name.player_portrait
	portrait_widget.content.portrait = portrait
end

local function calculate_danger_level(mission_data)
	local danger = mission_data.challenge
	local dangel_level_text = DangerSettings.by_index[danger].display_name

	return danger, dangel_level_text
end

local function calculate_quickplay_danger_level(backend_mission_id)
	local challenge = tonumber(string.sub(backend_mission_id, -1))
	local dangel_level_text = DangerSettings.by_index[challenge].display_name

	return challenge, dangel_level_text
end

function MissionVotingView:_populate_quickplay_data()
	local quickplay_settings = MissionDetailsBlueprints.quickplay_data
	local zone_image_widget = self._widgets_by_name.zone_image
	zone_image_widget.content.texture = "content/ui/materials/missions/quickplay"
	local details_button = self._widgets_by_name.toggle_details_button
	details_button.content.hotspot.disabled = true
	local mission_info_widget = self._widgets_by_name.mission_info
	local mission_info_widget_content = mission_info_widget.content
	mission_info_widget_content.mission_title = Utf8.upper(Localize(quickplay_settings.mission_title))
	zone_image_widget.style.texture.uvs = {
		{
			0,
			0.25
		},
		{
			1,
			1
		}
	}
	local mission_type_widget = self._widgets_by_name.mission_type
	local mission_type_widget_content = mission_type_widget.content
	mission_type_widget_content.mission_type = Localize(quickplay_settings.mission_type)
	local mission_rewards_text = self._widgets_by_name.rewards_text
	mission_rewards_text.content.visible = false
	local danger_level_widget = self._widgets_by_name.mission_danger_info
	local danger_level, danger_level_text = calculate_quickplay_danger_level(self._backend_mission_id)

	self:_set_difficulty_icons(danger_level_widget.style, danger_level)

	danger_level_widget.content.danger_text = Utf8.upper(Localize(danger_level_text))

	self:_set_scenegraph_position("mission_difficulty_left", 20, nil, , "center")

	local accept_confirmation_widget = self._widgets_by_name.accept_confirmation
	accept_confirmation_widget.visible = false
end

function MissionVotingView:_set_mission_data(mission_data)
	local mission_template = MissionTemplates[mission_data.map]
	local zone_settings = ZoneSettings[mission_template.zone_id]
	local zone_image_widget = self._widgets_by_name.zone_image
	local zone_images = zone_settings.images

	if zone_images then
		zone_image_widget.content.texture = zone_images.mission_vote
	end

	local mission_info_widget = self._widgets_by_name.mission_info
	local mission_info_widget_content = mission_info_widget.content
	local mission_title = mission_template.mission_name and Utf8.upper(Localize(mission_template.mission_name)) or "n/a"
	mission_info_widget_content.mission_title = mission_title
	local zone_name = Localize(zone_settings.name)
	local mission_type_widget = self._widgets_by_name.mission_type
	mission_type_widget.content.mission_type = zone_name

	self:_set_rewards_info(mission_data)

	local danger_level_widget = self._widgets_by_name.mission_danger_info
	local danger_level, danger_level_text = calculate_danger_level(mission_data)

	self:_set_difficulty_icons(danger_level_widget.style, danger_level)

	danger_level_widget.content.danger_text = Utf8.upper(Localize(danger_level_text))
	local accept_confirmation_widget = self._widgets_by_name.accept_confirmation
	accept_confirmation_widget.visible = false
end

function MissionVotingView:_set_button_callbacks()
	local accept_button_widget = self._widgets_by_name.accept_button
	accept_button_widget.content.hotspot.pressed_callback = callback(self, "cb_on_accept_mission_pressed")
	local decline_button_widget = self._widgets_by_name.decline_button
	decline_button_widget.content.hotspot.pressed_callback = callback(self, "cb_on_decline_mission_pressed")
	local toggle_details_button_widget = self._widgets_by_name.toggle_details_button
	toggle_details_button_widget.content.hotspot.pressed_callback = callback(self, "cb_on_toggle_details_pressed")
end

function MissionVotingView:_create_mission_icons_info(scenegraph_id, icon, x_offset, color)
	local icon_color = color and color or Color.white(255, true)
	local icon_definition = UIWidget.create_definition({
		{
			value_id = "texture",
			style_id = "texture",
			pass_type = "texture",
			value = icon,
			style = {
				vertical_alignment = "center",
				horizontal_alignment = "center",
				color = icon_color,
				size = {
					37.199999999999996,
					37.199999999999996
				},
				offset = {
					10 + x_offset,
					0,
					25
				}
			}
		}
	}, scenegraph_id)

	return icon_definition
end

function MissionVotingView:_setup_mission_info_icons(mission_data)
	table.clear(self._mission_icons_widgets)

	local offset_x = 42.199999999999996
	local mission_icon_settings = {}

	if self._is_quickplay then
		mission_icon_settings[#mission_icon_settings + 1] = {
			icon = MissionDetailsBlueprints.quickplay_data.icon,
			color = {
				255,
				169,
				191,
				153
			}
		}
	else
		local mission_template = MissionTemplates[mission_data.map]

		if not mission_template then
			return
		end

		local has_flash_mission = not not mission_data.flags.flash
		local has_side_mission = not not mission_data.sideMission
		local has_circumstance = mission_data.circumstance and mission_data.circumstance ~= "default"
		local mission_type = MissionTypes[mission_template.mission_type]
		mission_icon_settings[#mission_icon_settings + 1] = {
			icon = mission_type.icon,
			color = {
				255,
				169,
				191,
				153
			}
		}

		if has_flash_mission then
			mission_icon_settings[#mission_icon_settings + 1] = {
				icon = MissionDetailsBlueprints.icons.flash,
				color = {
					255,
					169,
					191,
					153
				}
			}
		end

		if has_side_mission then
			local side_missions = MissionObjectiveTemplates.side_mission.objectives
			local side_mission_template = side_missions[mission_data.sideMission]

			if side_mission_template then
				mission_icon_settings[#mission_icon_settings + 1] = {
					icon = side_mission_template.icon,
					color = {
						255,
						169,
						191,
						153
					}
				}
			end
		end

		if has_circumstance then
			local circumstance = mission_data.circumstance
			local circumstance_template = CircumstanceTemplates[circumstance]

			if circumstance_template then
				local circumstance_ui_settings = circumstance_template.ui
				mission_icon_settings[#mission_icon_settings + 1] = {
					icon = circumstance_ui_settings.icon,
					color = Color.golden_rod(255, true)
				}
			end
		end
	end

	local num_icons = #mission_icon_settings

	if num_icons ~= 1 then
		local half_icons = math.floor(num_icons / 2)
		local even_offset = -(half_icons * offset_x) + 18.599999999999998
		local odd_offset = -(half_icons * offset_x)
		local offset = num_icons % 2 == 0 and even_offset or odd_offset

		self:_set_scenegraph_position("mission_icons_pivot", math.floor(offset) - 10)
	end

	for i = 1, num_icons do
		local settings = mission_icon_settings[i]
		local settings_color = settings.color and settings.color or nil
		local mission_icon_def = self:_create_mission_icons_info("mission_icons_pivot", settings.icon, (i - 1) * offset_x, settings_color)
		self._mission_icons_widgets[#self._mission_icons_widgets + 1] = UIWidget.init("mission_icon_" .. i, mission_icon_def)
	end
end

function MissionVotingView:_set_details_data(mission_data)
	local scenegraph_id = "details_panel_content"
	local include_mission_header = true
	local details_data = MissionDetailsBlueprints.utility_functions.prepare_details_data(mission_data, include_mission_header)
	local details_widgets = self:_create_details_widgets(details_data, scenegraph_id)
	local total_height = self:_layout_details_widgets(details_widgets, scenegraph_id)
	self._mission_details_widgets = details_widgets

	return total_height
end

function MissionVotingView:_set_salary(mission_data)
	local salary_widget = self._widgets_by_name.mission_info_salary
	local base_xp = mission_data.xp
	local content = salary_widget.content
	content.experience_text = tostring(base_xp)
	content.credits_text = mission_data.credits

	self:_horizontally_layout_salary_passes(salary_widget)
end

function MissionVotingView:_set_rewards_info(mission_data)
	local main_mission_rewards_widget = self._widgets_by_name.reward_main_mission
	local base_xp = math.floor(mission_data.xp)
	local base_salary = math.floor(mission_data.credits)
	local rewards_string = " %d\t %d"
	main_mission_rewards_widget.content.reward_main_mission_text = string.format(rewards_string, base_salary, base_xp)
end

function MissionVotingView:_horizontally_layout_salary_passes(salary_widget)
	local style = salary_widget.style
	local xp_text_width = self:_calc_text_size(salary_widget, "experience_text")
	local xp_text_style = style.experience_text
	local credits_icon_style = style.credits_icon
	credits_icon_style.offset[1] = xp_text_style.offset[1] + xp_text_width + credits_icon_style.base_margin_left
	local credits_text_width = self:_calc_text_size(salary_widget, "credits_text")
	local credits_text_style = style.credits_text
	credits_text_style.offset[1] = credits_icon_style.offset[1] + credits_icon_style.size[1]
	local total_width = credits_text_style.offset[1] + credits_text_width

	self:_set_scenegraph_size("mission_salary", total_width)
end

function MissionVotingView:_set_difficulty_icons(style, difficulty_value)
	local difficulty_icon_style = style.difficulty_icon
	difficulty_icon_style.amount = difficulty_value
end

function MissionVotingView:_set_circumstance(mission_data)
	local circumstance_id = mission_data.circumstance
	local circumstance_widget = self._widgets_by_name.mission_info_circumstance

	if circumstance_id == "default" then
		circumstance_widget.visible = false
		local _, mission_info_height = self:_scenegraph_size("mission_info")

		self:_set_scenegraph_size("mission_info_panel", nil, mission_info_height)
	else
		local circumstance_template = CircumstanceTemplates[circumstance_id]
		local content = circumstance_widget.content
		content.text = self:_localize(circumstance_template.ui.display_name)
		content.icon = circumstance_template.ui.icon
		local text_width = self:_calc_text_size(circumstance_widget, "text")

		self:_set_scenegraph_size("mission_circumstance", text_width + ViewStyles.mission_info_circumstance.icon.size[1])

		local circumstance_height_addition = ViewStyles.circumstance_height_addition
		local _, outer_panel_height = self:_scenegraph_size("outer_panel")

		self:_set_scenegraph_size("outer_panel", nil, outer_panel_height + circumstance_height_addition)

		local _, inner_panel_height = self:_scenegraph_size("inner_panel")

		self:_set_scenegraph_size("inner_panel", nil, inner_panel_height + circumstance_height_addition)

		local _, body_panel_height = self:_scenegraph_size("body_panel")

		self:_set_scenegraph_size("body_panel", nil, body_panel_height + circumstance_height_addition)
	end
end

function MissionVotingView:_create_details_widgets(content, scenegraph_id)
	local templates = MissionDetailsBlueprints.templates
	local widget_definitions = {}
	local created_widgets = {}

	for i = 1, #content do
		local entry = content[i]
		local template_name = entry.template
		local template = templates[template_name]
		local widget_definition = widget_definitions[template_name]

		if not widget_definition then
			widget_definition = UIWidget.create_definition(template.pass_template, scenegraph_id, nil, template.size, template.style)
			widget_definitions[template_name] = widget_definition
		end

		local widget_name = scenegraph_id .. "_widget_" .. i
		local widget = self:_create_widget(widget_name, widget_definition)

		if template.init then
			template.init(widget, entry.widget_data, self._ui_renderer)
		end

		created_widgets[#created_widgets + 1] = widget
	end

	return created_widgets
end

function MissionVotingView:_layout_details_widgets(widgets, grid_scenegraph_id)
	local interaction_scenegraph_id = "details_panel"
	local view_definitions = self._definitions
	local list_end_margin = {
		size = view_definitions.details_panel_end_padding
	}
	local alignment_list = {
		list_end_margin
	}

	for i = 1, #widgets do
		alignment_list[#alignment_list + 1] = widgets[i]
	end

	alignment_list[#alignment_list + 1] = list_end_margin
	local widget_spacing = view_definitions.details_widget_spacing
	local grid_direction = "down"
	local scrollbar_widget = self._widgets_by_name.details_scrollbar
	local details_list_grid = UIWidgetGrid:new(widgets, alignment_list, self._ui_scenegraph, grid_scenegraph_id, grid_direction, widget_spacing)

	details_list_grid:assign_scrollbar(scrollbar_widget, grid_scenegraph_id, interaction_scenegraph_id)

	self._details_list_grid = details_list_grid

	return details_list_grid:length()
end

function MissionVotingView:_resize_dialog_heights(heights)
	self:_set_scenegraph_size("mission_info", nil, heights.mission_info_height)
	self:_set_scenegraph_size("mission_info_panel", nil, heights.mission_info_panel_height)
	self:_set_scenegraph_size("zone_image", nil, heights.zone_image_height)
	self:_set_scenegraph_size("body_panel", nil, heights.body_height)
	self:_set_scenegraph_size("inner_panel", nil, heights.inner_panel_height)
	self:_set_scenegraph_size("outer_panel", nil, heights.outer_panel_height)
end

function MissionVotingView:_calculate_page_heights(details_page_needed_height)
	local _, outer_panel_height = self:_scenegraph_size("outer_panel")
	local _, inner_panel_height = self:_scenegraph_size("inner_panel")
	local _, body_height = self:_scenegraph_size("body_panel")
	local _, zone_image_height = self:_scenegraph_size("zone_image")
	local _, mission_info_panel_height = self:_scenegraph_size("mission_info_panel")
	local _, details_page_expanded_height = self:_scenegraph_size("details_panel_content")
	local _, outer_panel_y_offset = self:_scenegraph_position("outer_panel")
	local _, zone_image_y_offset = self:_scenegraph_position("zone_image")
	local body_y_offset = zone_image_y_offset + zone_image_height - 110
	local _, zone_image_bottom_fade_height = self:_scenegraph_size("zone_image_bottom_fade")
	local _, circumstance_icon_height = self:_scenegraph_size("circumstance_icon")
	local _, zone_image_panel_height = self:_scenegraph_size("zone_image_panel")
	self._main_page_heights = {
		outer_panel_height = outer_panel_height,
		inner_panel_height = inner_panel_height,
		body_height = body_height,
		zone_image_height = zone_image_height,
		mission_info_panel_height = mission_info_panel_height,
		outer_panel_y_offset = outer_panel_y_offset,
		body_y_offset = body_y_offset,
		zone_image_panel_height = zone_image_panel_height,
		zone_image_bottom_fade_height = zone_image_bottom_fade_height,
		circumstance_icon_height = circumstance_icon_height
	}
	local details_page_overhang = 0
	local details_page_height = body_height + zone_image_height

	if details_page_needed_height > details_page_height and details_page_height < details_page_expanded_height then
		details_page_overhang = math.min(details_page_needed_height, details_page_expanded_height) - details_page_height
		details_page_height = details_page_height + details_page_overhang
	end

	local acceptable_overflow = 20

	if details_page_needed_height > details_page_expanded_height + acceptable_overflow then
		self._use_details_scrollbar = true
	end

	self._details_page_heights = {
		zone_image_panel_height = 0,
		zone_image_height = 0,
		circumstance_icon_height = 0,
		zone_image_bottom_fade_height = 0,
		outer_panel_height = outer_panel_height + details_page_overhang,
		inner_panel_height = inner_panel_height + details_page_overhang,
		body_height = details_page_height,
		mission_info_panel_height = details_page_height,
		outer_panel_y_offset = outer_panel_y_offset + details_page_overhang / 2,
		body_y_offset = zone_image_y_offset
	}
end

function MissionVotingView:_show_confirmed_message()
	local accept_button = self._widgets_by_name.accept_button
	accept_button.visible = false
	local decline_button = self._widgets_by_name.decline_button
	decline_button.visible = false
	local accept_confirmation_widget = self._widgets_by_name.accept_confirmation
	accept_confirmation_widget.visible = true
end

function MissionVotingView:_calc_text_size(widget, text_and_style_id)
	local text = widget.content[text_and_style_id]
	local text_style = widget.style[text_and_style_id]
	local text_options = UIFonts.get_font_options_by_style(text_style)

	if not text_style.size and not widget.content.size then
		local size = {
			self:_scenegraph_size(widget.scenegraph_id)
		}
	end

	return UIRenderer.text_size(self._ui_renderer, text, text_style.font_type, text_style.font_size, size, text_options)
end

function MissionVotingView:_add_dummy_portrait()
	return "content/ui/materials/icons/portraits/default"
end

return MissionVotingView
