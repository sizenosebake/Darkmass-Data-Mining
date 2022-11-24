local LocalAwaitConnectionBootedState = class("LocalAwaitConnectionBootedState")
local RPCS = {
	"rpc_connection_booted_reply"
}
local TIMEOUT = 60

function LocalAwaitConnectionBootedState:init(state_machine, shared_state)
	self._shared_state = shared_state
	self._time = 0
	self._host_notified = false
	self._host_ready = false

	shared_state.event_delegate:register_connection_channel_events(self, shared_state.channel_id, unpack(RPCS))
end

function LocalAwaitConnectionBootedState:destroy()
	local shared_state = self._shared_state

	shared_state.event_delegate:unregister_channel_events(shared_state.channel_id, unpack(RPCS))
end

function LocalAwaitConnectionBootedState:update(dt)
	local shared_state = self._shared_state
	local state, reason = Network.channel_state(shared_state.channel_id)

	if state == "disconnected" then
		Log.info("LocalAwaitConnectionBootedState", "Connection channel disconnected")

		return "disconnected", {
			engine_reason = reason
		}
	end

	if shared_state.boot_complete and not self._host_notified then
		Log.info("LocalAwaitConnectionBootedState", "Boot complete, notifying host")
		RPC.rpc_connection_booted(shared_state.channel_id)

		self._host_notified = true
	end

	if self._host_ready then
		Log.info("LocalAwaitConnectionBootedState", "Host ready, proceeding to next state")

		return "done"
	end

	self._time = self._time + dt

	if TIMEOUT < self._time then
		Log.info("LocalAwaitConnectionBootedState", "Timeout waiting for connection boot to complete")

		return "timeout", {
			game_reason = "timeout"
		}
	end
end

function LocalAwaitConnectionBootedState:rpc_connection_booted_reply(channel_id)
	self._host_ready = true
end

return LocalAwaitConnectionBootedState
