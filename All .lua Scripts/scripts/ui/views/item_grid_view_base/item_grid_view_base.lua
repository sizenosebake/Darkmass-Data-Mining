local ButtonPassTemplates = require("scripts/ui/pass_templates/button_pass_templates")
local Definitions = require("scripts/ui/views/item_grid_view_base/item_grid_view_base_definitions")
local ItemUtils = require("scripts/utilities/items")
local MasterItems = require("scripts/backend/master_items")
local ScriptWorld = require("scripts/foundation/utilities/script_world")
local UIRenderer = require("scripts/managers/ui/ui_renderer")
local UISoundEvents = require("scripts/settings/ui/ui_sound_events")
local ViewElementGrid = require("scripts/ui/view_elements/view_element_grid/view_element_grid")
local ViewElementInventoryWeaponPreview = require("scripts/ui/view_elements/view_element_inventory_weapon_preview/view_element_inventory_weapon_preview")
local ViewElementWeaponStats = require("scripts/ui/view_elements/view_element_weapon_stats/view_element_weapon_stats")
local ViewElementTabMenu = require("scripts/ui/view_elements/view_element_tab_menu/view_element_tab_menu")
local ItemGridViewBase = class("ItemGridViewBase", "BaseView")

function ItemGridViewBase:init(definitions, settings, context)
	if context and context.wallet_type then
		self._wallet_type = context.wallet_type
	end

	local merged_definitions = table.clone(Definitions)

	if definitions then
		table.merge_recursive(merged_definitions, definitions)
	end

	self._definitions = merged_definitions
	self._grow_direction = "down"
	self._context = context

	ItemGridViewBase.super.init(self, merged_definitions, settings, context)

	self._pass_input = true
	self._pass_draw = true
	self._render_settings = self._render_settings or {}
end

function ItemGridViewBase:on_enter()
	ItemGridViewBase.super.on_enter(self)

	self._weapon_stats = self:_setup_weapon_stats("weapon_stats", "weapon_stats_pivot")
	self._weapon_compare_stats = self:_setup_weapon_stats("weapon_compare_stats", "weapon_compare_stats_pivot")

	self:_setup_item_grid()
	self:_stop_previewing()

	self._item_definitions = MasterItems.get_cached()
	self._inventory_items = {}
	local ui_renderer = self._context and self._context.ui_renderer

	if ui_renderer then
		self._ui_default_renderer = ui_renderer
		self._ui_default_renderer_is_external = true
	else
		self:_setup_default_gui()
	end
end

local function comparator(definition)
	return function (a, b)
		local a_item = a.item
		local b_item = b.item

		for i = 1, #definition, 2 do
			local order = definition[i]
			local func = definition[i + 1]
			local is_lt = func(a_item, b_item)

			if is_lt ~= nil then
				if order == "<" then
					return is_lt
				else
					return not is_lt
				end
			end
		end

		return nil
	end
end

function ItemGridViewBase:_setup_sort_options()
	self._sort_options = {
		{
			display_name = Localize("loc_inventory_item_grid_sort_title_rarity") .. " ",
			sort_function = comparator({
				">",
				ItemUtils.compare_item_rarity,
				">",
				ItemUtils.compare_item_level,
				"<",
				ItemUtils.compare_item_name
			})
		},
		{
			display_name = Localize("loc_inventory_item_grid_sort_title_rarity") .. " ",
			sort_function = comparator({
				"<",
				ItemUtils.compare_item_rarity,
				"<",
				ItemUtils.compare_item_level,
				"<",
				ItemUtils.compare_item_name
			})
		},
		{
			display_name = Localize("loc_inventory_item_grid_sort_title_name") .. " ",
			sort_function = comparator({
				">",
				ItemUtils.compare_item_name,
				">",
				ItemUtils.compare_item_rarity,
				">",
				ItemUtils.compare_item_level
			})
		},
		{
			display_name = Localize("loc_inventory_item_grid_sort_title_name") .. " ",
			sort_function = comparator({
				"<",
				ItemUtils.compare_item_name,
				">",
				ItemUtils.compare_item_rarity,
				">",
				ItemUtils.compare_item_level
			})
		}
	}
	local sort_callback = callback(self, "cb_on_sort_button_pressed")

	self._item_grid:setup_sort_button(self._sort_options, sort_callback, 1)
end

function ItemGridViewBase:_setup_default_gui()
	local ui_manager = Managers.ui
	local reference_name = self.__class_name
	local timer_name = "ui"
	local world_layer = 100
	local world_name = reference_name .. "_ui_default_world"
	local view_name = self.view_name
	self._gui_world = ui_manager:create_world(world_name, world_layer, timer_name, view_name)
	local viewport_name = reference_name .. "_ui_default_world_viewport"
	local viewport_type = "overlay"
	local viewport_layer = 1
	self._gui_viewport = ui_manager:create_viewport(self._gui_world, viewport_name, viewport_type, viewport_layer)
	self._gui_viewport_name = viewport_name
	self._ui_default_renderer = ui_manager:create_renderer(reference_name .. "_ui_default_renderer", self._gui_world)
end

function ItemGridViewBase:_setup_menu_tabs(content)
	local id = "tab_menu"
	local layer = 10
	local tab_menu_settings = {
		fixed_button_size = true,
		horizontal_alignment = "center",
		button_spacing = 20,
		button_size = {
			200,
			50
		}
	}
	local tab_menu_element = self:_add_element(ViewElementTabMenu, id, layer, tab_menu_settings)
	self._tab_menu_element = tab_menu_element
	local input_action_left = "navigate_secondary_left_pressed"
	local input_action_right = "navigate_secondary_right_pressed"

	tab_menu_element:set_input_actions(input_action_left, input_action_right)

	local tab_button_template = table.clone(ButtonPassTemplates.tab_menu_button_icon)
	tab_button_template[1].style = {
		on_hover_sound = UISoundEvents.tab_secondary_button_hovered,
		on_pressed_sound = UISoundEvents.tab_secondary_button_pressed
	}
	local tab_ids = {}

	for i = 1, #content do
		local tab_content = content[i]
		local display_name = tab_content.display_name
		local display_icon = tab_content.icon
		local pressed_callback = callback(self, "cb_switch_tab", i)
		local tab_id = tab_menu_element:add_entry(display_name, pressed_callback, tab_button_template, display_icon)
		tab_ids[i] = tab_id
	end

	tab_menu_element:set_is_handling_navigation_input(true)

	self._tabs_content = content
	self._tab_ids = tab_ids

	self:_update_tab_bar_position()
end

function ItemGridViewBase:cb_switch_tab(index)
	if index ~= self._tab_menu_element:selected_index() then
		self._tab_menu_element:set_selected_index(index)

		local tabs_content = self._tabs_content
		local tab_content = tabs_content[index]
		local slot_types = tab_content.slot_types
		local display_name = tab_content.display_name

		self:_present_layout_by_slot_filter(slot_types, not tab_content.hide_display_name and display_name or nil)
	end
end

function ItemGridViewBase:_present_layout_by_slot_filter(slot_filter, optional_display_name)
	local layout = self._offer_items_layout

	if layout then
		local filtered_layout = {}

		for i = #layout, 1, -1 do
			local entry = layout[i]
			local item = entry.item
			local add_item = false

			if item then
				local slots = item.slots

				if slots then
					for _, slot_name in ipairs(slots) do
						if not slot_filter or table.find(slot_filter, slot_name) then
							add_item = true

							break
						end
					end
				else
					add_item = true
				end
			else
				add_item = true
			end

			if add_item then
				filtered_layout[#filtered_layout + 1] = entry
			end
		end

		self._filtered_offer_items_layout = filtered_layout
		self._grid_display_name = optional_display_name
		local sort_options = self._sort_options

		if sort_options then
			local sort_index = self._selected_sort_option_index or 1
			local selected_sort_option = sort_options[sort_index]
			local selected_sort_function = selected_sort_option.sort_function

			self:_sort_grid_layout(selected_sort_function)
		else
			self:_sort_grid_layout()
		end
	end
end

function ItemGridViewBase:grid_widgets()
	return self._item_grid:widgets()
end

function ItemGridViewBase:selected_grid_index()
	return self._item_grid:selected_grid_index()
end

function ItemGridViewBase:selected_grid_widget()
	return self._item_grid:selected_grid_widget()
end

function ItemGridViewBase:update_grid_widgets_visibility()
	return self._item_grid:update_grid_widgets_visibility()
end

function ItemGridViewBase:_update_tab_bar_position()
	if not self._tab_menu_element then
		return
	end

	local position = self:_scenegraph_world_position("grid_tab_panel")

	self._tab_menu_element:set_pivot_offset(position[1], position[2])
end

function ItemGridViewBase:_set_preview_widgets_visibility(visible)
	local widgets_by_name = self._widgets_by_name
	widgets_by_name.display_name.content.visible = visible
	widgets_by_name.display_name_divider.content.visible = visible
	widgets_by_name.display_name_divider_glow.content.visible = visible
	widgets_by_name.sub_display_name.content.visible = visible
end

function ItemGridViewBase:_stop_previewing()
	self._previewed_item = nil

	if self._weapon_preview then
		self._weapon_preview:stop_presenting()
	end

	if self._weapon_stats then
		self._weapon_stats:stop_presenting()
	end

	local visible = false

	self:_set_preview_widgets_visibility(visible)
end

function ItemGridViewBase:_preview_element(element)
	local item = element.real_item or element.item

	self:_preview_item(item)
end

function ItemGridViewBase:_preview_item(item)
	self:_stop_previewing()

	self._previewed_item = item
	local item_display_name = item.display_name

	if string.match(item_display_name, "unarmed") then
		return
	end

	local slots = item.slots or {}
	local item_type = item.item_type
	local is_weapon = item_type == "WEAPON_MELEE" or item_type == "WEAPON_RANGED"
	local can_compare = is_weapon or item_type == "GADGET"

	if is_weapon or item_type == "GADGET" or item_type == "PORTRAIT_FRAME" or item_type == "CHARACTER_INSIGNIA" then
		if self._weapon_stats then
			self._weapon_stats:present_item(item)
		end

		if self._weapon_compare_stats then
			local slot_name = self:_fetch_item_compare_slot_name(item)
			local equipped_item = slot_name and self.equipped_item_in_slot and self:equipped_item_in_slot(slot_name)

			if equipped_item and can_compare then
				if not self._previewed_equipped_item or self._previewed_equipped_item.gear_id ~= equipped_item.gear_id then
					self._previewed_equipped_item = equipped_item
					local is_equipped = true

					self._weapon_compare_stats:present_item(equipped_item, is_equipped)
				end
			else
				self._previewed_equipped_item = nil
			end

			local visible = can_compare and equipped_item and self._item_compare_toggled or false

			self._weapon_compare_stats:set_visibility(visible)
		end
	elseif item_type == "WEAPON_SKIN" then
		local visual_item = ItemUtils.weapon_skin_preview_item(item)

		if visual_item and self._weapon_stats then
			self._weapon_stats:present_item(item)
		end
	elseif (item_type == "GEAR_UPPERBODY" or item_type == "GEAR_LOWERBODY" or item_type == "GEAR_HEAD" or item_type == "GEAR_EXTRA_COSMETIC" or item_type == "END_OF_ROUND") and self._weapon_stats then
		self._weapon_stats:present_item(item)
	end

	local display_name = ItemUtils.display_name(item)
	local sub_display_name = ItemUtils.sub_display_name(item)
	local rarity_color = ItemUtils.rarity_color(item)
	local widgets_by_name = self._widgets_by_name
	widgets_by_name.sub_display_name.content.text = sub_display_name
	widgets_by_name.display_name.content.text = display_name
	widgets_by_name.display_name_divider_glow.style.texture.color = table.clone(rarity_color)
	local visible = true

	self:_set_preview_widgets_visibility(visible)
end

function ItemGridViewBase:_fetch_item_compare_slot_name(item)
	local slots = item and item.slots
	local slot_name = slots and slots[1]

	return slot_name
end

function ItemGridViewBase:is_previewing_item()
	return self._previewed_item ~= nil
end

function ItemGridViewBase:previewed_item()
	return self._previewed_item
end

function ItemGridViewBase:_destroy_weapon_preview()
	if self._weapon_preview then
		local reference_name = "weapon_preview"

		self:_remove_element(reference_name)

		self._weapon_preview = nil
	end
end

function ItemGridViewBase:_setup_weapon_preview()
	if not self._weapon_preview then
		local reference_name = "weapon_preview"
		local layer = 10
		local context = {
			ignore_blur = true
		}
		self._weapon_preview = self:_add_element(ViewElementInventoryWeaponPreview, reference_name, layer, context)
	end
end

function ItemGridViewBase:_setup_weapon_stats(reference_name, scenegraph_id)
	local layer = 10
	local context = self._definitions.weapon_stats_grid_settings
	local weapon_stats = self:_add_element(ViewElementWeaponStats, reference_name, layer, context)

	self:_update_weapon_stats_position(scenegraph_id, weapon_stats)

	return weapon_stats
end

function ItemGridViewBase:_update_weapon_stats_position(scenegraph_id, weapon_stats)
	local position = self:_scenegraph_world_position(scenegraph_id)

	weapon_stats:set_pivot_offset(position[1], position[2])
end

function ItemGridViewBase:_setup_item_grid(optional_grid_settings)
	if self._item_grid then
		self._item_grid = nil

		self:_remove_element("item_grid")
	end

	local context = optional_grid_settings or self._definitions.grid_settings
	local reference_name = "item_grid"
	local layer = 10
	self._item_grid = self:_add_element(ViewElementGrid, reference_name, layer, context)

	self:present_grid_layout({})
	self:_update_item_grid_position()
	self:_setup_sort_options()
end

function ItemGridViewBase:_update_item_grid_position()
	if not self._item_grid then
		return
	end

	local position = self:_scenegraph_world_position("item_grid_pivot")

	self._item_grid:set_pivot_offset(position[1], position[2])
end

function ItemGridViewBase:_grid_widget_by_name(widget_name)
	if not self._item_grid then
		return
	end

	return self._item_grid:widget_by_name(widget_name)
end

function ItemGridViewBase:on_exit()
	if self._inpect_view_opened then
		self._inpect_view_opened = nil

		if Managers.ui:view_active("inventory_weapon_details_view") then
			Managers.ui:close_view("inventory_weapon_details_view")
		end
	end

	if self._weapon_stats then
		self:_remove_element("weapon_stats")

		self._weapon_stats = nil
	end

	if self._weapon_compare_stats then
		self:_remove_element("weapon_compare_stats")

		self._weapon_compare_stats = nil
	end

	if self._ui_default_renderer then
		self._ui_default_renderer = nil

		if not self._ui_default_renderer_is_external then
			Managers.ui:destroy_renderer(self.__class_name .. "_ui_default_renderer")
		end

		if self._gui_world then
			local world = self._gui_world
			local viewport_name = self._gui_viewport_name

			ScriptWorld.destroy_viewport(world, viewport_name)
			Managers.ui:destroy_world(world)

			self._gui_viewport_name = nil
			self._gui_viewport = nil
			self._gui_world = nil
		end
	end

	self:_destroy_weapon_preview()
	ItemGridViewBase.super.on_exit(self)
end

function ItemGridViewBase:cb_on_sort_button_pressed(option)
	local option_sort_index = nil
	local sort_options = self._sort_options

	for i = 1, #sort_options do
		if sort_options[i] == option then
			option_sort_index = i

			break
		end
	end

	self._selected_sort_option_index = option_sort_index
	self._selected_sort_option = option
	local sort_function = option.sort_function

	self:_sort_grid_layout(sort_function)
end

function ItemGridViewBase:_sort_grid_layout(sort_function)
	if not self._filtered_offer_items_layout then
		return
	end

	local layout = table.clone_instance(self._filtered_offer_items_layout)

	if sort_function and #layout > 1 then
		table.sort(layout, sort_function)
	end

	local item_grid = self._item_grid
	local widget_index = item_grid:selected_grid_index()
	local selected_element = widget_index and item_grid:element_by_index(widget_index)
	local selected_item = selected_element and selected_element.item
	self._selected_gear_id = self._selected_gear_id or selected_item and selected_item.gear_id
	local on_present_callback = self._selected_gear_id and callback(function ()
		local new_selection_index = nil
		local grid_widgets = item_grid:widgets()

		for i = 1, #grid_widgets do
			local widget = grid_widgets[i]
			local content = widget.content
			local element = content.element

			if element then
				local item = element.item

				if item and item.gear_id == self._selected_gear_id then
					new_selection_index = i

					break
				end
			end
		end

		self._selected_gear_id = nil

		if new_selection_index then
			self._item_grid:focus_grid_index(new_selection_index)
		end
	end)

	self:present_grid_layout(layout, on_present_callback)
end

function ItemGridViewBase:present_grid_layout(layout, on_present_callback)
	local grid_display_name = self._grid_display_name
	local left_click_callback = callback(self, "cb_on_grid_entry_left_pressed")
	local left_double_click_callback = callback(self, "cb_on_grid_entry_left_double_click")
	local right_click_callback = callback(self, "cb_on_grid_entry_right_pressed")
	local generate_blueprints_function = require("scripts/ui/view_content_blueprints/item_blueprints")
	local grid_settings = self._definitions.grid_settings
	local grid_size = grid_settings.grid_size
	local ContentBlueprints = generate_blueprints_function(grid_size)
	local spacing_entry = {
		widget_type = "spacing_vertical_small"
	}

	table.insert(layout, 1, spacing_entry)
	table.insert(layout, #layout + 1, spacing_entry)

	local grow_direction = self._grow_direction or "down"

	self._item_grid:present_grid_layout(layout, ContentBlueprints, left_click_callback, right_click_callback, grid_display_name, grow_direction, on_present_callback, left_double_click_callback)
end

function ItemGridViewBase:cb_on_grid_entry_right_pressed(widget, element)
	local function cb_func()
		if self._destroyed then
			return
		end
	end

	self._update_callback_on_grid_entry_right_pressed = callback(cb_func)
end

function ItemGridViewBase:cb_on_grid_entry_left_double_click(widget, element)
	local function cb_func()
		if self._destroyed then
			return
		end

		self:_on_double_click(widget, element)
	end

	self._update_callback_on_grid_entry_left_double_click = callback(cb_func)
end

function ItemGridViewBase:_on_double_click(widget, element)
end

function ItemGridViewBase:cb_on_grid_entry_left_pressed(widget, element)
	local function cb_func()
		if self._destroyed then
			return
		end

		local item = element.item

		if Managers.ui:using_cursor_navigation() and item and item ~= self._previewed_item then
			local widget_index = self._item_grid:widget_index(widget) or 1

			self._item_grid:focus_grid_index(widget_index)
		end
	end

	self._update_callback_on_grid_entry_left_pressed = callback(cb_func)
end

function ItemGridViewBase:_handle_input(input_service)
end

function ItemGridViewBase:update(dt, t, input_service)
	if self._update_callback_on_grid_entry_left_pressed then
		self._update_callback_on_grid_entry_left_pressed()

		self._update_callback_on_grid_entry_left_pressed = nil
	end

	if self._update_callback_on_grid_entry_right_pressed then
		self._update_callback_on_grid_entry_right_pressed()

		self._update_callback_on_grid_entry_right_pressed = nil
	end

	if self._update_callback_on_grid_entry_left_double_click then
		self._update_callback_on_grid_entry_left_double_click()

		self._update_callback_on_grid_entry_left_double_click = nil
	end

	local synced_grid_index = self._synced_grid_index
	local item_grid = self._item_grid
	local grid_index = item_grid and item_grid:selected_grid_index() or nil
	local grid_index_changed = not synced_grid_index or grid_index and synced_grid_index ~= grid_index

	if grid_index_changed then
		local grid_element = grid_index and item_grid:element_by_index(grid_index)
		local item = grid_element and grid_element.item
		local offer = grid_element and grid_element.offer

		if item ~= self._previewed_item or offer ~= self._previewed_offer then
			self:_preview_element(grid_element)
		end

		self._synced_grid_index = grid_index
	end

	if not Managers.ui:using_cursor_navigation() then
		local item_grid = self._item_grid
		local selected_grid_widget = item_grid and item_grid:selected_grid_widget()

		if not selected_grid_widget then
			self._item_grid:select_first_index()

			selected_grid_widget = item_grid:selected_grid_widget()
			local selected_grid_element = selected_grid_widget and selected_grid_widget.content.element
			local selected_grid_item = selected_grid_element and selected_grid_element.item

			if selected_grid_item and selected_grid_item ~= self._previewed_item then
				local widget_index = item_grid:widget_index(selected_grid_widget) or 1

				self:_preview_element(selected_grid_element)
			end
		end
	end

	return ItemGridViewBase.super.update(self, dt, t, input_service)
end

function ItemGridViewBase:draw(dt, t, input_service, layer)
	local render_scale = self._render_scale
	local render_settings = self._render_settings
	local ui_renderer = self._ui_default_renderer
	render_settings.start_layer = layer
	render_settings.scale = render_scale
	render_settings.inverse_scale = render_scale and 1 / render_scale
	local ui_scenegraph = self._ui_scenegraph

	UIRenderer.begin_pass(ui_renderer, ui_scenegraph, input_service, dt, render_settings)
	self:_draw_widgets(dt, t, input_service, ui_renderer)
	UIRenderer.end_pass(ui_renderer)
	self:_draw_elements(dt, t, ui_renderer, render_settings, input_service)
end

function ItemGridViewBase:_draw_widgets(dt, t, input_service, ui_renderer, render_settings)
	ItemGridViewBase.super._draw_widgets(self, dt, t, input_service, ui_renderer, render_settings)
end

function ItemGridViewBase:on_resolution_modified(scale)
	ItemGridViewBase.super.on_resolution_modified(self, scale)
	self:_update_item_grid_position()

	if self._weapon_stats then
		self:_update_weapon_stats_position("weapon_stats_pivot", self._weapon_stats)
	end

	if self._weapon_compare_stats then
		self:_update_weapon_stats_position("weapon_compare_stats_pivot", self._weapon_compare_stats)
	end

	self:_update_tab_bar_position()
end

function ItemGridViewBase:select_grid_index(index, scrollbar_animation_progress, instant_scroll)
	self._item_grid:select_grid_index(index, scrollbar_animation_progress, instant_scroll)
end

function ItemGridViewBase:focus_grid_index(index, scrollbar_animation_progress, instant_scroll)
	self._item_grid:focus_grid_index(index, scrollbar_animation_progress, instant_scroll)
end

function ItemGridViewBase:scroll_to_grid_index(index)
	self._item_grid:scroll_to_grid_index(index)
end

function ItemGridViewBase:focus_on_offer(offer)
	if not offer then
		return
	end

	local item_grid = self._item_grid
	local widgets = item_grid:widgets()

	for i = 1, #widgets do
		local widget = widgets[i]
		local content = widget.content
		local element = content.element
		local element_offer = element.offer

		if element_offer and element_offer.offerId == offer.offerId then
			local widget_index = item_grid:widget_index(widget) or 1
			local scrollbar_animation_progress = item_grid:get_scrollbar_percentage_by_index(widget_index)
			local instant_scroll = true

			item_grid:focus_grid_index(widget_index, scrollbar_animation_progress, instant_scroll)

			if not Managers.ui:using_cursor_navigation() then
				item_grid:select_grid_index(widget_index)
			end

			self:_preview_element(element)

			break
		end
	end
end

function ItemGridViewBase:focus_on_item(item)
	if not item then
		return
	end

	local item_grid = self._item_grid
	local widgets = item_grid:widgets()

	for i = 1, #widgets do
		local widget = widgets[i]
		local content = widget.content
		local element = content.element
		local element_item = element.item

		if element_item and element_item.gear_id == item.gear_id then
			local widget_index = item_grid:widget_index(widget) or 1
			local scrollbar_animation_progress = item_grid:get_scrollbar_percentage_by_index(widget_index)
			local instant_scroll = true

			item_grid:focus_grid_index(widget_index, scrollbar_animation_progress, instant_scroll)

			if not Managers.ui:using_cursor_navigation() then
				item_grid:select_grid_index(widget_index)
			end

			self:_preview_element(element)

			break
		end
	end
end

function ItemGridViewBase:item_grid_index(item)
	if not item then
		return
	end

	local item_grid = self._item_grid
	local widgets = item_grid:widgets()

	for i = 1, #widgets do
		local widget = widgets[i]
		local content = widget.content
		local element = content.element
		local element_item = element.item

		if element_item and element_item.gear_id == item.gear_id then
			local widget_index = item_grid:widget_index(widget) or 1

			return widget_index
		end
	end
end

function ItemGridViewBase:first_grid_item()
	local item_grid = self._item_grid
	local widgets = item_grid:widgets()

	for i = 1, #widgets do
		local widget = widgets[i]
		local content = widget.content
		local element = content.element
		local element_item = element.item

		if element_item then
			return element_item
		end
	end
end

function ItemGridViewBase:element_by_index(index)
	return self._item_grid:element_by_index(index)
end

function ItemGridViewBase:trigger_sort_index(index)
	if self._item_grid then
		self._item_grid:trigger_sort_index(index)
	end
end

function ItemGridViewBase:cb_on_inspect_pressed()
	if self._previewed_item and not Managers.ui:view_active("inventory_weapon_details_view") then
		Managers.ui:open_view("inventory_weapon_details_view", nil, , , , {
			preview_item = self._previewed_item
		})

		self._inpect_view_opened = true
	end
end

function ItemGridViewBase:can_inspect_item()
	if self._previewed_item then
		return true
	end

	return false
end

function ItemGridViewBase:cb_on_toggle_item_compare()
	self._item_compare_toggled = not self._item_compare_toggled

	if self._weapon_compare_stats then
		self._weapon_compare_stats:set_visibility(self._item_compare_toggled)
	end
end

return ItemGridViewBase
