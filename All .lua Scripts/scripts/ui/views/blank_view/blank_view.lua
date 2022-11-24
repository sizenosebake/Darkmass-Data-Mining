local definition_path = "scripts/ui/views/blank_view/blank_view_definitions"
local BaseView = require("scripts/ui/views/base_view")
local BlankView = class("BlankView", "BaseView")

function BlankView:init(settings, context)
	local definitions = require(definition_path)

	BaseView.init(self, definitions, settings)

	self._pass_draw = false
	self._loading_icon = context and context.loading_icon
end

function BlankView:draw(dt, t, input_service, layer)
	BaseView.draw(self, dt, t, input_service, layer)

	if self._loading_icon then
		Managers.ui:render_loading_icon()
	end
end

local system_name = "dialogue_system"

function BlankView:dialogue_system()
	local state_managers = Managers.state

	if state_managers then
		local extension_manager = state_managers.extension

		return extension_manager and extension_manager:has_system(system_name) and extension_manager:system(system_name)
	end
end

return BlankView
