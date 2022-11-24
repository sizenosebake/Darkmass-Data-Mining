local BotNavTransition = require("scripts/managers/bot_nav_transition/utilities/bot_nav_transition")
local SharedNav = require("scripts/components/utilities/shared_nav")
local BotJumpAssist = component("BotJumpAssist")

function BotJumpAssist:init(unit, is_server)
	self._is_server = is_server
	local run_update = false

	return run_update
end

function BotJumpAssist:on_gameplay_post_init(unit, level)
	if self._is_server then
		local wanted_from = Unit.world_position(unit, 1)
		local via = Unit.world_position(unit, Unit.node(unit, "waypoint"))
		local wanted_to = Unit.world_position(unit, Unit.node(unit, "destination"))
		local should_jump = self:get_data(unit, "should_jump")
		local make_permanent = true
		local success, transition_index = Managers.state.bot_nav_transition:create_transition(wanted_from, via, wanted_to, should_jump, make_permanent)

		if success then
			self._transition_index = transition_index
		else
			Log.error("BotJumpAssist", "Failed creating bot nav transition at %s.", tostring(wanted_from))
		end
	end
end

function BotJumpAssist:destroy(unit)
	if self._is_server and self._transition_index then
		Managers.state.bot_nav_transition:unregister_transition(self._transition_index)
	end
end

function BotJumpAssist:enable(unit)
end

function BotJumpAssist:disable(unit)
end

function BotJumpAssist:editor_init(unit)
	if not rawget(_G, "LevelEditor") then
		return
	end

	local world = Application.main_world()
	self._world = world
	self._physics_world = World.physics_world(world)
	local line_object = World.create_line_object(world)
	self._line_object = line_object
	self._drawer = DebugDrawer(line_object, "retained")
	self._should_jump = self:get_data(unit, "should_jump")

	if BotJumpAssist._nav_info == nil then
		BotJumpAssist._nav_info = SharedNav.create_nav_info()
	end

	self._my_nav_gen_guid = nil
	self._unit = unit
	self._should_debug_draw = false

	return true
end

function BotJumpAssist:editor_destroy(unit)
	if not rawget(_G, "LevelEditor") then
		return
	end

	local line_object = self._line_object
	local world = self._world

	LineObject.reset(line_object)
	LineObject.dispatch(world, line_object)
	World.destroy_line_object(world, line_object)

	self._line_object = nil
	self._world = nil
end

function BotJumpAssist:editor_update(unit)
	if not rawget(_G, "LevelEditor") then
		return
	end

	local with_traverse_logic = true
	local nav_gen_guid = SharedNav.check_new_navmesh_generated(BotJumpAssist._nav_info, self._my_nav_gen_guid, with_traverse_logic)

	if nav_gen_guid then
		self._my_nav_gen_guid = nav_gen_guid

		self:_editor_debug_draw(unit)
	end

	return true
end

function BotJumpAssist:_editor_debug_draw(unit)
	local drawer = self._drawer

	drawer:reset()

	local should_debug_draw = self._should_debug_draw
	local nav_world = BotJumpAssist._nav_info.nav_world

	if nav_world and should_debug_draw then
		local wanted_from = Unit.world_position(unit, 1)
		local via = Unit.world_position(unit, Unit.node(unit, "waypoint"))
		local wanted_to = Unit.world_position(unit, Unit.node(unit, "destination"))
		local traverse_logic = BotJumpAssist._nav_info.traverse_logic
		local success, from, to = BotNavTransition.check_nav_mesh(wanted_from, wanted_to, nav_world, traverse_logic, drawer)
		local any_error = from == nil

		if from then
			local should_jump = self._should_jump

			if success then
				local success_color = Color.green()

				LineObject.add_segmented_line(self._line_object, success_color, wanted_to, to, 20, 50)
				drawer:line(from, to, success_color)
				drawer:sphere(from, 0.3, success_color)
				drawer:sphere(to, 0.3, success_color)
				drawer:cone(to - Vector3.normalize(from - to) * 0.25, to, 0.3, Color.light_green(), 9, 9)

				local layer_name = BotNavTransition.calculate_nav_tag_layer(from, to, should_jump)

				if not layer_name then
					drawer:sphere((to + from) / 2, 0.25, Color.red())
					drawer:line(from, to, Color.red())

					any_error = true
				end
			else
				any_error = true
			end

			local physics_world = self._physics_world
			local waypoint = BotNavTransition.resolve_waypoint_position(from, via, should_jump, physics_world)

			drawer:sphere(waypoint, 0.15, Color.white())
		end

		if any_error then
			local start_position = from and from or wanted_from

			drawer:line(start_position, start_position + Vector3.up() * 15, Color.red())
		end
	end

	local world = self._world

	drawer:update(world)
end

function BotJumpAssist:editor_world_transform_modified(unit)
	if not rawget(_G, "LevelEditor") then
		return
	end

	self:_editor_debug_draw(unit)
end

function BotJumpAssist:editor_toggle_debug_draw(enable)
	if not rawget(_G, "LevelEditor") then
		return
	end

	self._should_debug_draw = enable

	self:_editor_debug_draw(self._unit)
end

BotJumpAssist.component_data = {
	should_jump = {
		ui_type = "check_box",
		value = true,
		ui_name = "Should Jump"
	}
}

return BotJumpAssist
