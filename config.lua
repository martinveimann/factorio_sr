
-- --------------------------------------------------------------------------------------------- --
-- Hi there! Here you can change a couple of settings so this mod caters to your specific needs. --
-- --------------------------------------------------------------------------------------------- --

-- Swap inlets (water & crude oil).
refinery_swap_inlets = false

-- How much polution the refinery causes
refinery_pollution = 0.01 / 1.5

-- How much energy the refinery uses
refinery_energy_usage = "330kW"

-- How many modules can be placed in each factory
refinery_module_slots = 5

-- How fast the refinery produces 
refinery_crafting_speed = 4

-- Since 1.0.2 the specialized refineries have slightly different graphics than the
-- original refineries in game. If you set the value below to 'true'
-- it looks the same again as a regular refinery
refinery_vanilla_graphics = false

-- The ingredients it requires to create a specialized refinery
refinery_create_required_materials = {
	  {"oil-refinery", 1},
      {"steel-plate", 2},
      {"iron-gear-wheel", 4},
      {"advanced-circuit", 1},
      {"pipe", 1}
}

-- Time it takes to create a refinery using the resources above
refinery_create_required_time = 20

-- --------------------------------------------------------------------------------------------- --
-- PRODUCTION SETTINGS
-- --------------------------------------------------------------------------------------------- --

-- In the process water is used by default. But you could disable it if you want.
refinery_requires_water = true

-- How much water is used in the process
refinery_water_usage_per_batch = 4

-- --------------------------------------------------------------------------------------------- --

-- How much crude oil does it cost to make petroleum
refinery_crude_oil_per_petroleum_batch = 15

-- How much petroleum you get for the crude oil above
refinery_petroleum_per_batch = 15

-- Time it takes to create petroleum from crude oil
refinery_petroleum_time_per_batch = 5

-- --------------------------------------------------------------------------------------------- --

-- How much crude oil does it cost to make light oil
refinery_crude_oil_per_lightoil_batch = 15

-- How much light oil you get for the crude oil above
refinery_lightoil_per_batch = 15

-- Time it takes to create light oil from crude oil
refinery_lightoil_time_per_batch = 5

-- --------------------------------------------------------------------------------------------- --
-- How much crude oil does it cost to make heavy oil
refinery_crude_oil_per_heavyoil_batch = 15

-- How much heavy oil you get for the crude oil above
refinery_heavyoil_per_batch = 15

-- Time it takes to create heavy oil from crude oil
refinery_heavyoil_time_per_batch = 5

-- --------------------------------------------------------------------------------------------- --
-- TECHNOLOGY SETTINGS
-- --------------------------------------------------------------------------------------------- --

-- The technology takes 10 seconds to research by default, feel free to change
technology_time_to_research = 10

-- The technology requires 1 of each science pack (red vial, blue vial and green vial)
technology_required_materials = {
	{"science-pack-1", 1},
	{"science-pack-2", 1},
	{"science-pack-3", 1}
}