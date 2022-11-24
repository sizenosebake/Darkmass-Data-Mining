local TokenInterface = require("scripts/foundation/managers/token/token_interface")
local TokenManager = class("TokenManager")

function TokenManager:init()
	self._tokens = {}
	self._is_updating_tokens = false
end

function TokenManager:register_token(token, callback, timeout)
	assert_interface(token, TokenInterface)

	self._tokens[#self._tokens + 1] = {
		time = 0,
		token = token,
		callback = callback,
		timeout = timeout or math.huge
	}
end

function TokenManager:abort(token)
	local tokens = self._tokens

	for index, entry in ipairs(tokens) do
		if entry.token == token then
			token:close()
			table.swap_delete(tokens, index)

			return
		end
	end

	ferror("Invalid token. contents:\n%s", table.tostring(token))
end

function TokenManager:update(dt, t)
	local tokens = self._tokens
	self._is_updating_tokens = true

	for index = #tokens, 1, -1 do
		local entry = tokens[index]
		local token = entry.token
		entry.time = entry.time + dt

		token:update()

		if token:done() or entry.timeout <= entry.time then
			local callback = entry.callback

			if callback then
				local info = token:info()

				callback(info)
			end

			token:close()
			table.swap_delete(tokens, index)
		end
	end

	self._is_updating_tokens = false
end

function TokenManager:destroy()
	for id, entry in ripairs(self._tokens) do
		local token = entry.token

		token:close()

		self._tokens[id] = nil
	end
end

return TokenManager
