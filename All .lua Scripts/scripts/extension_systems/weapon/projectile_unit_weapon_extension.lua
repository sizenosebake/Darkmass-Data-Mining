local ProjectileUnitWeaponExtension = class("ProjectileUnitWeaponExtension")

function ProjectileUnitWeaponExtension:init(extension_init_context, unit, extension_init_data, ...)
	self._damage_profile_lerp_values = extension_init_data.damage_profile_lerp_values
	self._explosion_template_lerp_values = extension_init_data.explosion_template_lerp_values
end

local NO_LERP_VALUES = {}

function ProjectileUnitWeaponExtension:damage_profile_lerp_values(damage_profile_name_or_nil)
	local projectile_damage_profile_lerp_values = self._damage_profile_lerp_values
	local damage_profile_lerp_values = damage_profile_name_or_nil and projectile_damage_profile_lerp_values and projectile_damage_profile_lerp_values[damage_profile_name_or_nil]

	return damage_profile_lerp_values or projectile_damage_profile_lerp_values or NO_LERP_VALUES
end

function ProjectileUnitWeaponExtension:explosion_template_lerp_values(explosion_template_name_or_nil)
	local projectile_explosion_template = self._explosion_template_lerp_values
	local explosion_template_lerp_values = explosion_template_name_or_nil and projectile_explosion_template and projectile_explosion_template[explosion_template_name_or_nil]

	return explosion_template_lerp_values or projectile_explosion_template or NO_LERP_VALUES
end

return ProjectileUnitWeaponExtension
