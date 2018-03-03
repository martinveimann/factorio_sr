data:extend(
{
  {
    type = "assembling-machine",
    name = "specialized-refinery",
    icon = SR_G_ENTITY_ICON,
    icon_size = 32,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "specialized-refinery"},
    max_health = 550,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    fast_replaceable_group = "assembling-machine",
    module_specification =
    {
      module_slots = SR_C_M
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"specialized-oil-processing"},
    crafting_speed = SR_C_S,
    has_backer_name = true,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = SR_C_P
    },
    energy_usage = SR_C_E,
    ingredient_count = 4,
    animation =
    {
      north =
      {
        filename = SR_G_ENTITY,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      east =
      {
        filename = SR_G_ENTITY,
        x = 337,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      south =
      {
        filename = SR_G_ENTITY,
        x = 674,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      west =
      {
        filename = SR_G_ENTITY,
        x = 1011,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      }
    },
    working_visualisations =
	{
		{
			north_position = util.by_pixel(34, -65),
			east_position = util.by_pixel(-52, -61),
			south_position = util.by_pixel(-59, -82),
			west_position = util.by_pixel(57, -58),
			animation =
			{
				filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
				line_length = 10,
				width = 20,
				height = 40,
				frame_count = 60,
				animation_speed = 0.75,
				shift = util.by_pixel(0, -14),
				hr_version = {
					filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
					line_length = 10,
					width = 40,
					height = 81,
					frame_count = 60,
					animation_speed = 0.75,
					scale = 0.5,
					shift = util.by_pixel(0, -14.25),
				},
			},
			light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
		}
	},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    pipe_covers = pipecoverspictures()
  }
}
)
