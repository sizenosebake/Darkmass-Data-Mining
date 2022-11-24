local RPCS = {
	"rpc_request_host_type_reply"
}
local LocalRequestHostTypeState = class("LocalRequestHostTypeState")

function LocalRequestHostTypeState:init(state_machine, shared_state)
	self._shared_state = shared_state
	self._time = 0

	RPC.rpc_request_host_type(shared_state.channel_id)
	shared_state.event_delegate:register_connection_channel_events(self, shared_state.channel_id, unpack(RPCS))
end

function LocalRequestHostTypeState:destroy()
	local shared_state = self._shared_state

	shared_state.event_delegate:unregister_channel_events(shared_state.channel_id, unpack(RPCS))
end

function LocalRequestHostTypeState:update(dt)
	local shared_state = self._shared_state
	self._time = self._time + dt

	if shared_state.timeout < self._time then
		Log.info("LocalRequestHostTypeState", "Timeout waiting for rpc_request_host_type_reply")

		return "timeout", {
			game_reason = "timeout"
		}
	end

	local state, reason = Network.channel_state(shared_state.channel_id)

	if state == "disconnected" then
		Log.info("LocalRequestHostTypeState", "Connection channel disconnected")

		return "disconnected", {
			engine_reason = reason
		}
	end

	if self._shared_state.is_dedicated ~= nil then
		return "host type reply"
	end
end

function LocalRequestHostTypeState:rpc_request_host_type_reply(channel_id, is_dedicated, max_members)
	self._shared_state.is_dedicated = is_dedicated
	self._shared_state.max_members = max_members
end

return LocalRequestHostTypeState
