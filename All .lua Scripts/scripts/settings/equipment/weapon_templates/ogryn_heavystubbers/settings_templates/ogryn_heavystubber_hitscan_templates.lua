local DamageProfileTemplates = require("scripts/settings/damage/damage_profile_templates")
local hitscan_templates = {}
local overrides = {}

table.make_unique(hitscan_templates)
table.make_unique(overrides)

hitscan_templates.default_ogryn_heavystubber_full_auto = {
	range = 100,
	damage = {
		impact = {
			damage_profile = DamageProfileTemplates.default_ogryn_heavystubber_assault_snp
		}
	}
}

return {
	base_templates = hitscan_templates,
	overrides = overrides
}
