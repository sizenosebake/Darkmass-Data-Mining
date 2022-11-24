local Action = require("scripts/utilities/weapon/action")
local Component = require("scripts/utilities/component")
local AmmoBelt = class("AmmoBelt")

function AmmoBelt:init(context, slot, weapon_template, fx_sources)
	local owner_unit = context.owner_unit
	self._weapon_actions = weapon_template.actions
	local unit_data_extension = ScriptUnit.extension(owner_unit, "unit_data_system")
	self._inventory_slot_component = unit_data_extension:read_component(slot.name)
	self._weapon_action_component = unit_data_extension:read_component("weapon_action")
	local unit_components = {}
	local num_attachments_1p = #slot.attachments_1p

	for ii = 1, num_attachments_1p do
		local attachment_unit = slot.attachments_1p[ii]
		local components = Component.get_components_by_name(attachment_unit, "AmmoBelt")

		for _, component in ipairs(components) do
			unit_components[#unit_components + 1] = {
				unit = attachment_unit,
				component = component
			}
		end
	end

	local num_attachments_3p = #slot.attachments_3p

	for ii = 1, num_attachments_3p do
		local attachment_unit = slot.attachments_3p[ii]
		local components = Component.get_components_by_name(attachment_unit, "AmmoBelt")

		for _, component in ipairs(components) do
			unit_components[#unit_components + 1] = {
				unit = attachment_unit,
				component = component
			}
		end
	end

	self._unit_components = unit_components
end

function AmmoBelt:fixed_update(unit, dt, t, frame)
end

function AmmoBelt:update(unit, dt, t)
	local inventory_slot_component = self._inventory_slot_component
	local current_ammo_clip = inventory_slot_component.current_ammunition_clip
	local current_ammo_reserve = inventory_slot_component.current_ammunition_reserve
	local max_ammo_clip = inventory_slot_component.max_ammunition_clip
	local action_settings = Action.current_action_settings_from_component(self._weapon_action_component, self._weapon_actions)
	local action_kind = action_settings and action_settings.kind
	local is_reloading = action_kind == "reload_state" or action_kind == "reload_shotgun"
	local unit_components = self._unit_components
	local num_components = #unit_components

	for ii = 1, num_components do
		local display = unit_components[ii]

		if is_reloading then
			current_ammo_clip = math.min(max_ammo_clip, current_ammo_reserve) or current_ammo_clip
		end

		display.component:set_ammo(display.unit, current_ammo_clip, max_ammo_clip)
	end
end

function AmmoBelt:update_first_person_mode(first_person_mode)
end

function AmmoBelt:wield()
end

function AmmoBelt:unwield()
end

function AmmoBelt:destroy()
end

return AmmoBelt
