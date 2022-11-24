require("scripts/extension_systems/weapon/actions/action_weapon_base")

local BuffSettings = require("scripts/settings/buff/buff_settings")
local proc_events = BuffSettings.proc_events
local PROC_INTERVAL = 0.3
local ActionWindup = class("ActionWindup", "ActionWeaponBase")

function ActionWindup:start(action_settings, t, time_scale, params)
	ActionWindup.super.start(self, action_settings, t, time_scale, params)

	self._proc_trigger_time = self:_latest_chain_time(action_settings)
end

function ActionWindup:fixed_update(dt, t, time_in_action)
	if self._proc_trigger_time and self._proc_trigger_time <= time_in_action then
		self._proc_trigger_time = self._proc_trigger_time + PROC_INTERVAL
		local buff_extension = self._buff_extension
		local param_table = buff_extension:request_proc_event_param_table()

		if param_table then
			buff_extension:add_proc_event(proc_events.on_windup_trigger, param_table)
		end
	end
end

function ActionWindup:_latest_chain_time(action_settings)
	local allowed_chain_actions = action_settings.allowed_chain_actions

	if not allowed_chain_actions then
		return math.huge
	end

	local latest_chain_time = 0

	for action_input, chain_action in pairs(allowed_chain_actions) do
		local action_chain_time = chain_action.chain_time

		if action_chain_time and latest_chain_time < action_chain_time then
			latest_chain_time = action_chain_time
		end
	end

	return latest_chain_time > 0 and latest_chain_time or math.huge
end

function ActionWindup:server_correction_occurred()
	self._proc_trigger_time = self:_latest_chain_time(self._action_settings)
end

return ActionWindup
