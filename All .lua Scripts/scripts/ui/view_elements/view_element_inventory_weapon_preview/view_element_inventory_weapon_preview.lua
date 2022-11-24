local UIWeaponSpawner = require("scripts/managers/ui/ui_weapon_spawner")
local UIWorldSpawner = require("scripts/managers/ui/ui_world_spawner")
local ScriptWorld = require("scripts/foundation/utilities/script_world")
local ViewElementInventoryWeaponPreviewSettings = require("scripts/ui/view_elements/view_element_inventory_weapon_preview/view_element_inventory_weapon_preview_settings")
local WorldRenderUtils = require("scripts/utilities/world_render")
local UIRenderer = require("scripts/managers/ui/ui_renderer")
local UIWidget = require("scripts/managers/ui/ui_widget")
local definition_path = "scripts/ui/view_elements/view_element_inventory_weapon_preview/view_element_inventory_weapon_preview_definitions"
local BLUR_TIME = 0.3
local WORLD_LAYER_BACKGROUND = 0
local WORLD_LAYER_TOP_GUI = 1
local WORLD_LAYER_ITEM = 35
local ViewElementInventoryWeaponPreview = class("ViewElementInventoryWeaponPreview", "ViewElementBase")

function ViewElementInventoryWeaponPreview:init(parent, draw_layer, start_scale, context)
	local definitions = require(definition_path)
	self._reference_name = "ViewElementInventoryWeaponPreview_" .. tostring(self)

	ViewElementInventoryWeaponPreview.super.init(self, parent, draw_layer, start_scale, definitions)

	self._pass_draw = true
	self._pass_input = true
	self._shading_environment = context and context.shading_environment
	self._ignore_blur = context and context.ignore_blur
	self._draw_background = context and context.draw_background == true or false

	self:_setup_default_gui()
	self:_setup_background_gui()
	self:_initialize_preview_world()

	local on_enter_animation_callback = callback(self, "cb_start_experience_presentation")
	self._on_enter_anim_id = self:_start_animation("on_enter", self._widgets_by_name, self, on_enter_animation_callback)
end

function ViewElementInventoryWeaponPreview:_setup_default_gui()
	local ui_manager = Managers.ui
	local reference_name = self._reference_name
	local timer_name = "ui"
	local world_layer = WORLD_LAYER_TOP_GUI + self._draw_layer
	local world_name = reference_name .. "_ui_default_world"
	local view_name = self._parent.view_name
	self._world = ui_manager:create_world(world_name, world_layer, timer_name, view_name)
	local viewport_name = reference_name .. "_ui_default_world_viewport"
	local viewport_type = "overlay"
	local viewport_layer = 1
	self._viewport = ui_manager:create_viewport(self._world, viewport_name, viewport_type, viewport_layer)
	self._viewport_name = viewport_name
	self._ui_default_renderer = ui_manager:create_renderer(reference_name .. "_ui_default_renderer", self._world)
end

function ViewElementInventoryWeaponPreview:_setup_background_gui()
	local ui_manager = Managers.ui
	local reference_name = self._reference_name
	local timer_name = "ui"
	local world_layer = WORLD_LAYER_BACKGROUND + self._draw_layer
	local world_name = reference_name .. "_ui_background_world"
	local view_name = self._parent.view_name
	self._background_world = ui_manager:create_world(world_name, world_layer, timer_name, view_name)
	local shading_environment = "content/shading_environments/ui/ui_popup_background"
	local shading_callback = callback(self, "cb_background_shading_callback")
	local viewport_name = reference_name .. "_ui_background_world_viewport"
	local viewport_type = "overlay"
	local viewport_layer = 1
	self._background_viewport = ui_manager:create_viewport(self._background_world, viewport_name, viewport_type, viewport_layer, shading_environment, shading_callback)
	self._background_viewport_name = viewport_name
	self._ui_background_renderer = ui_manager:create_renderer(reference_name .. "_ui_background_renderer", self._background_world)
	local background_widget_definition = self._definitions.background_widget_definition
	self._background_widget = self:_create_widget("background_widget", background_widget_definition)

	if not self._ignore_blur then
		self._blur_duration = BLUR_TIME
	end
end

function ViewElementInventoryWeaponPreview:cb_background_shading_callback(world, shading_env, viewport, default_shading_environment_name)
	local gamma = Application.user_setting("gamma") or 0

	ShadingEnvironment.set_scalar(shading_env, "exposure_compensation", ShadingEnvironment.scalar(shading_env, "exposure_compensation") + gamma)

	local blur_value = World.get_data(world, "fullscreen_blur") or 0

	if blur_value > 0 then
		ShadingEnvironment.set_scalar(shading_env, "fullscreen_blur_enabled", 1)
		ShadingEnvironment.set_scalar(shading_env, "fullscreen_blur_amount", math.clamp(blur_value, 0, 1))
	else
		World.set_data(world, "fullscreen_blur", nil)
		ShadingEnvironment.set_scalar(shading_env, "fullscreen_blur_enabled", 0)
	end

	local greyscale_value = World.get_data(world, "greyscale") or 0

	if greyscale_value > 0 then
		ShadingEnvironment.set_scalar(shading_env, "grey_scale_enabled", 1)
		ShadingEnvironment.set_scalar(shading_env, "grey_scale_amount", math.clamp(greyscale_value, 0, 1))
		ShadingEnvironment.set_vector3(shading_env, "grey_scale_weights", Vector3(0.33, 0.33, 0.33))
	else
		World.set_data(world, "greyscale", nil)
		ShadingEnvironment.set_scalar(shading_env, "grey_scale_enabled", 0)
	end
end

function ViewElementInventoryWeaponPreview:_initialize_preview_world()
	local world_name = self._reference_name .. "_world"
	local world_layer = WORLD_LAYER_ITEM + self._draw_layer
	local world_timer_name = "ui"
	local view_name = self._parent.view_name
	self._world_spawner = UIWorldSpawner:new(world_name, world_layer, world_timer_name, view_name)

	self:_register_event("event_register_item_camera")
	self:_register_event("event_register_item_zoomed_camera")
	self:_register_event("event_register_item_spawn_point")

	local level_name = "content/levels/ui/weapon_preview/weapon_preview"
	local ignore_level_background = true

	self._world_spawner:spawn_level(level_name, nil, , , ignore_level_background)
end

function ViewElementInventoryWeaponPreview:event_register_item_spawn_point(spawn_point_unit)
	self:_unregister_event("event_register_item_spawn_point")

	self._spawn_point_unit = spawn_point_unit
end

function ViewElementInventoryWeaponPreview:event_register_item_camera(camera_unit)
	self:_unregister_event("event_register_item_camera")

	local viewport_name = self._reference_name .. "_viewport"
	local viewport_type = self._draw_background and "default" or "default_with_alpha"
	local viewport_layer = 1
	local shading_environment = self._shading_environment or ViewElementInventoryWeaponPreviewSettings.shading_environment

	self._world_spawner:create_viewport(camera_unit, viewport_name, viewport_type, viewport_layer, shading_environment)

	local viewport_scale_width, viewport_scale_height = self:_get_viewport_size_normalized()
	local viewport_scale_x, viewport_scale_y = self:_get_viewport_position_normalized()

	self._world_spawner:set_viewport_size(viewport_scale_width, viewport_scale_height)
	self._world_spawner:set_viewport_position(viewport_scale_x, viewport_scale_y)

	self._level_spawned = true
	self._camera = camera_unit
	self._camera_center_aligned = false
end

function ViewElementInventoryWeaponPreview:center_align(duration, additional_position_offset)
	local world_spawner = self._world_spawner
	local time = duration or 1
	local func_ptr = math.easeOutCubic
	self._camera_center_aligned = not self._camera_center_aligned
	local extra_position_x = additional_position_offset[1] or 0
	local extra_position_y = additional_position_offset[2] or 0
	local extra_position_z = additional_position_offset[3] or 0
	local boxed_camera_start_position = world_spawner:boxed_camera_start_position()
	local default_camera_world_position = Vector3.from_array(boxed_camera_start_position)
	local boxed_camera_start_rotation = world_spawner:boxed_camera_start_rotation()
	local default_camera_world_rotation = boxed_camera_start_rotation:unbox()
	local slot_camera_unit = self._camera_center_aligned and self._zoomed_camera or self._camera
	local target_world_position = slot_camera_unit and Unit.world_position(slot_camera_unit, 1) or default_camera_world_position
	local target_world_rotation = slot_camera_unit and Unit.world_rotation(slot_camera_unit, 1) or default_camera_world_rotation
	local camera_world_position = default_camera_world_position
	local camera_world_rotation = default_camera_world_rotation

	world_spawner:set_camera_position_axis_offset("x", target_world_position.x - camera_world_position.x + extra_position_x, time, func_ptr)
	world_spawner:set_camera_position_axis_offset("y", target_world_position.y - camera_world_position.y + extra_position_y, time, func_ptr)
	world_spawner:set_camera_position_axis_offset("z", target_world_position.z - camera_world_position.z + extra_position_z, time, func_ptr)

	local camera_world_rotation_x, camera_world_rotation_y, camera_world_rotation_z = Quaternion.to_euler_angles_xyz(camera_world_rotation)
	local target_world_rotation_x, target_world_rotation_y, target_world_rotation_z = Quaternion.to_euler_angles_xyz(target_world_rotation)

	world_spawner:set_camera_rotation_axis_offset("x", target_world_rotation_x - camera_world_rotation_x, time, func_ptr)
	world_spawner:set_camera_rotation_axis_offset("y", target_world_rotation_y - camera_world_rotation_y, time, func_ptr)
	world_spawner:set_camera_rotation_axis_offset("z", target_world_rotation_z - camera_world_rotation_z, time, func_ptr)
end

function ViewElementInventoryWeaponPreview:event_register_item_zoomed_camera(camera_unit)
	self:_unregister_event("event_register_item_zoomed_camera")

	self._zoomed_camera = camera_unit
end

function ViewElementInventoryWeaponPreview:_get_viewport_position_normalized()
	local viewport_scale_x = self._viewport_scale_x or 0
	local viewport_scale_y = self._viewport_scale_y or 0

	return viewport_scale_x, viewport_scale_y
end

function ViewElementInventoryWeaponPreview:_get_viewport_size_normalized()
	local viewport_scale_width = self._viewport_scale_width or 1
	local viewport_scale_height = self._viewport_scale_height or 1

	return viewport_scale_width, viewport_scale_height
end

function ViewElementInventoryWeaponPreview:on_resolution_modified(scale)
	ViewElementInventoryWeaponPreview.super.on_resolution_modified(self, scale)
	self:_update_viewport()
end

function ViewElementInventoryWeaponPreview:_update_viewport()
	local world_spawner = self._world_spawner

	if world_spawner then
		local ui_weapon_spawner = self._ui_weapon_spawner

		if ui_weapon_spawner then
			local viewport_scale_width, viewport_scale_height = self:_get_viewport_size_normalized()
			local viewport_scale_x, viewport_scale_y = self:_get_viewport_position_normalized()

			world_spawner:set_viewport_size(viewport_scale_width, viewport_scale_height)
			world_spawner:set_viewport_position(viewport_scale_x, viewport_scale_y)

			local new_position = self:_get_spawn_position()
		end
	end
end

local function linear_to_clip_depth(linear_depth, camera_near, camera_far)
	if linear_depth == 0 then
		return 0
	end

	return camera_far * (linear_depth - camera_near) / (linear_depth * (camera_far - camera_near))
end

function ViewElementInventoryWeaponPreview:_get_spawn_position()
	local world_spawner = self._world_spawner
	local camera = world_spawner:camera()
	local depth_multiplier = 1.8
	local weapon_spawn_depth = ViewElementInventoryWeaponPreviewSettings.weapon_spawn_depth * depth_multiplier
	local world_depth = linear_to_clip_depth(weapon_spawn_depth, Camera.near_range(camera), Camera.far_range(camera))
	world_depth = world_depth * (self._weapon_zoom_fraction or 1)
	local screen_width = RESOLUTION_LOOKUP.width
	local screen_height = RESOLUTION_LOOKUP.height
	local scale_x = self._weapon_spawn_scale_x or 0
	local scale_y = 1 - (self._weapon_spawn_scale_y or 0)
	local position = Vector3(scale_x * screen_width, scale_y * screen_height, 0)
	local world_position_offset = Camera.screen_to_world(camera, position, world_depth)

	return world_position_offset
end

function ViewElementInventoryWeaponPreview:set_weapon_zoom(fraction)
	local world_spawner = self._world_spawner
	self._weapon_zoom_fraction = fraction
	local amount = fraction * 1

	world_spawner:set_camera_position_axis_offset("y", amount, 0, math.easeOutCubic)
end

function ViewElementInventoryWeaponPreview:set_weapon_position_normalized(x_scale, y_scale)
	self._weapon_spawn_scale_x = x_scale
	self._weapon_spawn_scale_y = y_scale

	self:_update_viewport()
end

function ViewElementInventoryWeaponPreview:set_viewport_position_normalized(x, y)
	self._viewport_scale_x = x
	self._viewport_scale_y = y

	self:_update_viewport()
end

function ViewElementInventoryWeaponPreview:set_viewport_size_normalized(width_scale, height_scale)
	self._viewport_scale_width = width_scale
	self._viewport_scale_height = height_scale

	self:_update_viewport()
end

function ViewElementInventoryWeaponPreview:stop_presenting()
	if self._ui_weapon_spawner then
		self._ui_weapon_spawner:destroy()

		self._ui_weapon_spawner = nil
	end

	self._started = nil
	self._queued_presentation_item = nil
end

function ViewElementInventoryWeaponPreview:present_item(item, disable_auto_spin)
	if not self._level_spawned then
		self._queued_presentation_item = item

		return
	end

	if self._ui_weapon_spawner then
		self._ui_weapon_spawner:destroy()

		self._ui_weapon_spawner = nil
	end

	local world_spawner = self._world_spawner
	local world = world_spawner:world()
	local camera = world_spawner:camera()
	local unit_spawner = world_spawner:unit_spawner()
	local item_base_unit_name = item.base_unit
	local item_level_link_unit = self:_get_unit_by_value_key("weapon_alignment_tag", item_base_unit_name)
	local spawn_point_unit = item_level_link_unit or self._spawn_point_unit
	local spawn_position = Unit.world_position(spawn_point_unit, 1)
	local spawn_rotation = Unit.world_rotation(spawn_point_unit, 1)
	local spawn_scale = Unit.world_scale(spawn_point_unit, 1)
	local previewer_reference_name = self._reference_name
	local ui_weapon_spawner = UIWeaponSpawner:new(previewer_reference_name, world, camera, unit_spawner)
	local on_loaded_callback = callback(self, "cb_on_preview_loaded")

	ui_weapon_spawner:start_presentation(item, spawn_position, spawn_rotation, spawn_scale, on_loaded_callback)

	if not disable_auto_spin then
		local ignore_spin_randomness = true

		ui_weapon_spawner:activate_auto_spin(ignore_spin_randomness)
	end

	self._ui_weapon_spawner = ui_weapon_spawner
	self._started = true
end

function ViewElementInventoryWeaponPreview:cb_on_preview_loaded()
	local world_name = self._world_spawner:world_name()

	Managers.world:world_reset_dlss(world_name)
end

function ViewElementInventoryWeaponPreview:cb_start_experience_presentation()
	self._on_enter_anim_id = nil
end

function ViewElementInventoryWeaponPreview:destroy()
	if self._ui_background_renderer then
		self._ui_background_renderer = nil

		Managers.ui:destroy_renderer(self._reference_name .. "_ui_background_renderer")

		local world = self._background_world
		local viewport_name = self._background_viewport_name

		ScriptWorld.destroy_viewport(world, viewport_name)
		Managers.ui:destroy_world(world)

		self._background_viewport_name = nil
		self._background_world = nil
	end

	if self._ui_default_renderer then
		self._ui_default_renderer = nil

		Managers.ui:destroy_renderer(self._reference_name .. "_ui_default_renderer")

		local world = self._world
		local viewport_name = self._viewport_name

		ScriptWorld.destroy_viewport(world, viewport_name)
		Managers.ui:destroy_world(world)

		self._viewport_name = nil
		self._world = nil
	end

	if self._ui_weapon_spawner then
		self._ui_weapon_spawner:destroy()

		self._ui_weapon_spawner = nil
	end

	if self._world_spawner then
		self._world_spawner:destroy()

		self._world_spawner = nil
	end

	ViewElementInventoryWeaponPreview.super.destroy(self)
end

function ViewElementInventoryWeaponPreview:draw(dt, t, ui_renderer, render_settings, input_service)
	if not self._started then
		return
	end

	ui_renderer = self._ui_default_renderer
	local previous_alpha_multiplier = render_settings.alpha_multiplier
	local alpha_multiplier = self._alpha_multiplier or 0
	render_settings.alpha_multiplier = alpha_multiplier

	ViewElementInventoryWeaponPreview.super.draw(self, dt, t, ui_renderer, render_settings, input_service)

	local previous_layer = render_settings.start_layer
	render_settings.start_layer = (previous_layer or 0) + self._draw_layer
	local ui_scenegraph = self._ui_scenegraph
	local ui_background_renderer = self._ui_background_renderer

	if ui_background_renderer then
		UIRenderer.begin_pass(ui_background_renderer, ui_scenegraph, input_service, dt, render_settings)
		UIWidget.draw(self._background_widget, ui_background_renderer)
		UIRenderer.end_pass(ui_background_renderer)
	end

	render_settings.alpha_multiplier = previous_alpha_multiplier
end

function ViewElementInventoryWeaponPreview:update(dt, t, input_service)
	local world_spawner = self._world_spawner

	if world_spawner then
		world_spawner:update(dt, t)
	end

	if self._queued_presentation_item and self._level_spawned then
		local item = self._queued_presentation_item
		self._queued_presentation_item = nil

		self:present_item(item)
	end

	if self._ui_weapon_spawner then
		self._ui_weapon_spawner:update(dt, t, input_service)
	end

	if self._blur_duration then
		if self._blur_duration < 0 then
			self._blur_duration = nil
		else
			local progress = 1 - self._blur_duration / BLUR_TIME
			local anim_progress = math.easeOutCubic(progress)

			self:_set_background_blur(anim_progress)

			self._blur_duration = self._blur_duration - dt
			self._alpha_multiplier = anim_progress
		end
	end

	return ViewElementInventoryWeaponPreview.super.update(self, dt, t, input_service)
end

function ViewElementInventoryWeaponPreview:_set_background_blur(fraction)
	local max_value = 0.85
	local reference_name = self._reference_name
	local world_name = reference_name .. "_ui_background_world"
	local viewport_name = reference_name .. "_ui_background_world_viewport"

	WorldRenderUtils.enable_world_fullscreen_blur(world_name, viewport_name, max_value * fraction)
end

function ViewElementInventoryWeaponPreview:presentation_complete()
	return self._done
end

function ViewElementInventoryWeaponPreview:hidden()
	return self._hidden
end

function ViewElementInventoryWeaponPreview:hide()
	if not self._hidden then
		self._world_spawner:set_world_disabled(true)
	end

	self._hidden = true
end

function ViewElementInventoryWeaponPreview:show()
	if self._hidden then
		self._world_spawner:set_world_disabled(false)
	end

	self._hidden = false
end

function ViewElementInventoryWeaponPreview:_get_unit_by_value_key(key, value)
	local world_spawner = self._world_spawner
	local level = world_spawner:level()
	local level_units = Level.units(level)

	for i = 1, #level_units do
		local unit = level_units[i]

		if Unit.get_data(unit, key) == value then
			return unit
		end
	end
end

return ViewElementInventoryWeaponPreview
