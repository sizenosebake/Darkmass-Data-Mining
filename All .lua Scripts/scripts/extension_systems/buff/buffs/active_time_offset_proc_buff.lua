require("scripts/extension_systems/buff/buffs/proc_buff")

local ActiveTimeOffsetProcBuff = class("ActiveTimeOffsetProcBuff", "ProcBuff")

function ActiveTimeOffsetProcBuff:_is_active(t)
	local active_duration = self:_active_duration()
	local active_start_time = self._active_start_time
	local offseted_active_start_time = active_start_time + self._template.active_time_offset

	return t < offseted_active_start_time + active_duration
end

return ActiveTimeOffsetProcBuff