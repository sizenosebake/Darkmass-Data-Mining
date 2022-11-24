local RPCS = {
	"rpc_reserve_slots_reply"
}
local LocalSlotReserveState = class("LocalSlotReserveState")

function LocalSlotReserveState:init(state_machine, shared_state)
	self._shared_state = shared_state
	self._time = 0
	self._reserve_done = false
	self._reserve_success = false

	RPC.rpc_reserve_slots(shared_state.channel_id, shared_state.slots_to_reserve)
	shared_state.event_delegate:register_connection_channel_events(self, shared_state.channel_id, unpack(RPCS))
end

function LocalSlotReserveState:destroy()
	local shared_state = self._shared_state

	shared_state.event_delegate:unregister_channel_events(shared_state.channel_id, unpack(RPCS))
end

function LocalSlotReserveState:update(dt)
	local shared_state = self._shared_state
	self._time = self._time + dt

	if shared_state.timeout < self._time then
		Log.info("LocalSlotReserveState", "Timeout waiting for rpc_reserve_slots_reply")

		return "timeout", {
			game_reason = "timeout"
		}
	end

	local state, reason = Network.channel_state(shared_state.channel_id)

	if state == "disconnected" then
		Log.info("LocalSlotReserveState", "Connection channel disconnected")

		return "disconnected", {
			engine_reason = reason
		}
	end

	if self._reserve_done then
		if self._reserve_success then
			shared_state.has_reserved = true

			return "slots allocated"
		else
			Log.info("LocalSlotReserveState", "Slot reservation rejected")

			return "slots rejected", {
				game_reason = "slot_reserve_rejected"
			}
		end
	end
end

function LocalSlotReserveState:rpc_reserve_slots_reply(channel_id, success)
	self._reserve_done = true
	self._reserve_success = success
end

return LocalSlotReserveState
