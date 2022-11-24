local Breed = require("scripts/utilities/breed")
local Health = {}

function Health.is_ragdolled(unit)
	local unit_data_extension = ScriptUnit.has_extension(unit, "unit_data_system")

	if unit_data_extension and unit_data_extension:is_owned_by_death_manager() then
		return true
	end

	return false
end

function Health.add(unit, amount_to_add, heal_type)
	local health_extension = ScriptUnit.has_extension(unit, "health_system")

	if not health_extension then
		return 0
	end

	local actual_health_added = health_extension:add_heal(amount_to_add, heal_type)

	return actual_health_added
end

function Health.play_fx(unit)
	local unit_data_extension = ScriptUnit.has_extension(unit, "unit_data_system")

	if unit_data_extension then
		local breed = unit_data_extension:breed()

		if Breed.is_player(breed) then
			local fx_extension = ScriptUnit.extension(unit, "fx_system")

			fx_extension:spawn_exclusive_particle("content/fx/particles/screenspace/player_heal_tick", Vector3(0, 0, 1))
			fx_extension:trigger_exclusive_wwise_event("wwise/events/ui/play_hud_heal_2d")
		end
	end
end

function Health.current_health_percent(unit)
	local health_extension = ScriptUnit.has_extension(unit, "health_system")

	if not health_extension then
		return 0
	end

	local current_health_percent = health_extension:current_health_percent()

	return current_health_percent
end

function Health.current_health(unit)
	local health_extension = ScriptUnit.has_extension(unit, "health_system")

	if not health_extension then
		return 0
	end

	local current_health = health_extension:current_health()

	return current_health
end

function Health.damage_taken(unit)
	local health_extension = ScriptUnit.has_extension(unit, "health_system")

	if not health_extension then
		return 0
	end

	local damage_taken = health_extension:damage_taken()

	return damage_taken
end

function Health.permanent_damage_taken(unit)
	local health_extension = ScriptUnit.has_extension(unit, "health_system")

	if not health_extension then
		return 0
	end

	local damage_taken = health_extension:permanent_damage_taken()

	return damage_taken
end

function Health.permanent_damage_taken_percent(unit)
	local health_extension = ScriptUnit.has_extension(unit, "health_system")

	if not health_extension then
		return 0
	end

	local permanent_damage_taken_percent = health_extension:permanent_damage_taken_percent()

	return permanent_damage_taken_percent
end

function Health.is_damagable(unit)
	return not not ScriptUnit.has_extension(unit, "health_system")
end

function Health.calculate_num_segments(damage_taken, max_health, max_wounds)
	local health_per_wound = max_wounds > 0 and max_health / max_wounds or 0

	if health_per_wound <= 0 then
		return 0
	end

	local wanted_wounds = math.max(max_wounds - math.floor(damage_taken / health_per_wound), 0)

	return wanted_wounds
end

function Health.number_of_health_segements_damage_taken(damage_taken, max_health, max_wounds)
	local number_of_health_segements_left = Health.calculate_num_segments(damage_taken, max_health, max_wounds)
	local number_of_health_segments_taken = max_wounds - number_of_health_segements_left
	local health_per_wound = max_wounds > 0 and max_health / max_wounds or 0
	local health_left = max_health - damage_taken
	local current_segement_health = math.clamp(health_left - health_per_wound * (number_of_health_segements_left - 1), 0, health_per_wound)

	return number_of_health_segments_taken, current_segement_health
end

return Health
