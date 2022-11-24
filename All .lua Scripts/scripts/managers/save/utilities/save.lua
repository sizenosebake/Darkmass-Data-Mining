local ScriptSaveToken = require("scripts/managers/save/script_save_token")
local Save = {}
local SaveDummy = {
	auto_save = function ()
		return {}
	end,
	auto_load = function ()
		return {}
	end,
	progress = function ()
		return {
			done = true,
			data = {}
		}
	end,
	close = function ()
	end
}

function Save.implementation(use_cloud)
	if PLATFORM == "xbs" or PLATFORM == "linux" then
		return SaveDummy
	elseif use_cloud and HAS_STEAM and Cloud.enabled() then
		return Cloud
	else
		return SaveSystem
	end
end

function Save.abort(save_token)
	Managers.token:abort(save_token)
end

function Save.auto_save(file_name, data, callback, use_cloud)
	local system = Save.implementation(use_cloud)
	local token = system.auto_save(file_name, data)
	local save_token = ScriptSaveToken:new(system, token)

	Managers.token:register_token(save_token, callback)

	return save_token
end

function Save.auto_load(file_name, callback, use_cloud)
	local system = Save.implementation(use_cloud)
	local token = system.auto_load(file_name)
	local save_token = ScriptSaveToken:new(system, token)

	Managers.token:register_token(save_token, callback)

	return save_token
end

return Save
