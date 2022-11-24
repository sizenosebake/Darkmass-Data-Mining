local MATERIAL_VARIABLE = "emissive_pulse"
local PULSE_VARIABLE = "pulse_speed"
local PULSE_SPEED = 9
local effect_template = {
	name = "chaos_beast_of_nurgle_weakspot",
	start = function (template_data, template_context)
		local unit = template_data.unit

		Unit.set_scalar_for_materials_in_unit_and_childs(unit, MATERIAL_VARIABLE, 1)
		Unit.set_scalar_for_materials_in_unit_and_childs(unit, PULSE_VARIABLE, PULSE_SPEED)
	end,
	update = function (template_data, template_context, dt, t)
	end,
	stop = function (template_data, template_context)
		local unit = template_data.unit

		Unit.set_scalar_for_materials_in_unit_and_childs(unit, MATERIAL_VARIABLE, 0)
	end
}

return effect_template
