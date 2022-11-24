local BaseCamera = require("scripts/managers/camera/cameras/base_camera")
local ScalableFovCamera = class("ScalableFovCamera", "TransformCamera")

function ScalableFovCamera:parse_parameters(camera_settings, parent_node)
	ScalableFovCamera.super.parse_parameters(self, camera_settings, parent_node)

	self._scale_function = camera_settings.scale_function
	self._scale_variable = camera_settings.scale_variable
	self._max_fov_offset = camera_settings.fov_offset * math.pi / 180
	self._current_fov_offset = 0
end

function ScalableFovCamera:update(dt, position, rotation, data)
	local scale = data[self._scale_variable] or 1
	local scale_value = self._scale_function(scale)
	local max_fov_offset = self._max_fov_offset
	self._current_fov_offset = max_fov_offset * scale_value

	BaseCamera.update(self, dt, position, rotation, data)
end

function ScalableFovCamera:vertical_fov()
	local parent_fov = self._parent_node:vertical_fov()

	return parent_fov + self._current_fov_offset * self._external_fov_multiplier
end

return ScalableFovCamera
