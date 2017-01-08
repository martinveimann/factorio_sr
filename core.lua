-- --------------------------------------------------------------------------------------------- --
-- Process configuration
-- --------------------------------------------------------------------------------------------- --
-- general
SR_C_P = refinery_pollution
SR_C_E = refinery_energy_usage
SR_C_M = refinery_module_slots
SR_C_S = refinery_crafting_speed
SR_R_I = refinery_create_required_materials
SR_R_T = refinery_create_required_time
SR_T_T = technology_time_to_research
SR_T_I = technology_required_materials
SR_R_PETROLEUM_IN = {}
SR_R_LIGHTOIL_IN = {}
SR_R_HEAVYOIL_IN = {}
SR_R_PETROLEUM_OUT = {}
SR_R_LIGHTOIL_OUT = {}
SR_R_HEAVYOIL_OUT = {}
-- --------------------------------------------------------------------------------------------- --
function add_water()
	if refinery_requires_water == true then
		table.insert(SR_R_PETROLEUM_IN, {type="fluid", name="water", amount=refinery_water_usage_per_batch})
		table.insert(SR_R_LIGHTOIL_IN, {type="fluid", name="water", amount=refinery_water_usage_per_batch})
		table.insert(SR_R_HEAVYOIL_IN, {type="fluid", name="water", amount=refinery_water_usage_per_batch})
	end
end
function add_crude()
	table.insert(SR_R_PETROLEUM_IN, {type="fluid", name="crude-oil", amount=refinery_crude_oil_per_petroleum_batch})
	table.insert(SR_R_LIGHTOIL_IN, {type="fluid", name="crude-oil", amount=refinery_crude_oil_per_lightoil_batch})
	table.insert(SR_R_HEAVYOIL_IN, {type="fluid", name="crude-oil", amount=refinery_crude_oil_per_heavyoil_batch})
end
function add_outlets()
	table.insert(SR_R_PETROLEUM_OUT, {type="fluid", name="petroleum-gas", amount=refinery_petroleum_per_batch})
	table.insert(SR_R_LIGHTOIL_OUT, {type="fluid", name="light-oil", amount=refinery_lightoil_per_batch})
	table.insert(SR_R_HEAVYOIL_OUT, {type="fluid", name="heavy-oil", amount=refinery_heavyoil_per_batch})
end
-- --------------------------------------------------------------------------------------------- --
-- build inlets and outlets
if refinery_swap_inlets then
	add_crude()
	add_water()
else
	add_water()
	add_crude()
end
add_outlets()
-- --------------------------------------------------------------------------------------------- --
-- Grahpics
if refinery_vanilla_graphics == true then
	SR_G_TECH = "__base__/graphics/technology/oil-processing.png"
	SR_G_ENTITY_ICON = "__base__/graphics/icons/oil-refinery.png"
	SR_G_ENTITY = "__base__/graphics/entity/oil-refinery/oil-refinery.png"
else
	SR_G_TECH = "__specialized_refineries__/graphics/technology/oil-processing.png"
	SR_G_ENTITY_ICON = "__specialized_refineries__/graphics/icons/oil-refinery.png"
	SR_G_ENTITY = "__specialized_refineries__/graphics/entity/oil-refinery.png"
end
-- --------------------------------------------------------------------------------------------- --