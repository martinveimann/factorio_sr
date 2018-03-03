data:extend(
{
  {
    type = "recipe",
    name = "specialized-refining-petroleum",
    category = "specialized-oil-processing",
    enabled = false,
    energy_required = refinery_petroleum_time_per_batch,
    ingredients = SR_R_PETROLEUM_IN,
    results= SR_R_PETROLEUM_OUT,
    main_product= "",
    icon = "__base__/graphics/icons/fluid/petroleum-gas.png",
    icon_size = 32,
    subgroup="fluid-recipes",
    order = "b[advanced-oil-processing]-a[specialized-refining-petroleum]"
  },
    {
    type = "recipe",
    name = "specialized-refining-light-oil",
    category = "specialized-oil-processing",
    enabled = false,
    energy_required = refinery_lightoil_time_per_batch,
    ingredients = SR_R_LIGHTOIL_IN,
    results= SR_R_LIGHTOIL_OUT,
    main_product= "",
    icon = "__base__/graphics/icons/fluid/light-oil.png",
    icon_size = 32,
    subgroup="fluid-recipes",
    order = "b[advanced-oil-processing]-a[specialized-refining-light-oil]"
  },
    {
    type = "recipe",
    name = "specialized-refining-heavy-oil",
    category = "specialized-oil-processing",
    enabled = false,
    energy_required = refinery_heavyoil_time_per_batch,
    ingredients = SR_R_HEAVYOIL_IN,
    results = SR_R_HEAVYOIL_OUT,
    main_product= "",
    icon = "__base__/graphics/icons/fluid/heavy-oil.png",
    icon_size = 32,
    subgroup="fluid-recipes",
    order = "b[advanced-oil-processing]-a[specialized-refining-heavy-oil]"
  },
  {
    type = "recipe",
    name = "specialized-refinery",
    energy_required = SR_R_T,
    ingredients = SR_R_I,
    result = "specialized-refinery",
    enabled = false
  }
}
)
