local LevelPropsBroadphaseManager = class("LevelPropsBroadphaseManager")
local CHECK_INTERVAL = 3

function LevelPropsBroadphaseManager:init()
	self._check_timer = 0
	self._extension_systems = {}
end

function LevelPropsBroadphaseManager:destroy()
	table.clear(self._extension_systems)
end

function LevelPropsBroadphaseManager:update(dt, t)
	if self._check_timer < t then
		for _, extension_system in ipairs(self._extension_systems) do
			if extension_system.update_level_props_broadphase then
				extension_system:update_level_props_broadphase()
			end
		end

		self._check_timer = self._check_timer + CHECK_INTERVAL
	end
end

function LevelPropsBroadphaseManager:register_extension_system(extension_system)
	table.insert(self._extension_systems, extension_system)
end

function LevelPropsBroadphaseManager:unregister_extension_system(extension_system)
	local index = table.find(self._extension_systems, extension_system)

	if index then
		table.swap_delete(self._extension_systems, index)
	end
end

return LevelPropsBroadphaseManager
