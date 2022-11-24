local RPCS = {
	"rpc_gameobject_sync"
}
local RemoteWaitForGameObjectSyncState = class("RemoteWaitForGameObjectSyncState")

function RemoteWaitForGameObjectSyncState:init(state_machine, shared_state)
	self._shared_state = shared_state
	self._time = 0
	self._got_sync_rpc = false

	shared_state.network_delegate:register_session_channel_events(self, shared_state.channel_id, unpack(RPCS))
end

function RemoteWaitForGameObjectSyncState:destroy()
	local shared_state = self._shared_state

	shared_state.network_delegate:unregister_channel_events(shared_state.channel_id, unpack(RPCS))
end

function RemoteWaitForGameObjectSyncState:update(dt)
	local shared_state = self._shared_state
	self._time = self._time + dt

	if shared_state.game_object_sync_done and self._got_sync_rpc then
		RPC.rpc_gameobject_sync_reply(self._shared_state.channel_id)

		return "synchronized"
	end

	if shared_state.timeout < self._time then
		if self._got_sync_rpc then
			Log.info("RemoteWaitForGameObjectSyncState", "Timeout waiting for game object sync %s", shared_state.peer_id)
		else
			Log.info("RemoteWaitForGameObjectSyncState", "Timeout waiting for rpc_gameobject_sync %s", shared_state.peer_id)
		end

		return "timeout", {
			game_reason = "timeout"
		}
	end

	local state, reason = Network.channel_state(shared_state.channel_id)

	if state == "disconnected" then
		return "disconnect", {
			engine_reason = reason
		}
	end
end

function RemoteWaitForGameObjectSyncState:rpc_gameobject_sync(channel_id)
	self._got_sync_rpc = true
end

return RemoteWaitForGameObjectSyncState
