data:extend(
{
  {
    type = "technology",
    name = "specialized-refineries",
    icon = SR_G_TECH,
    icon_size = 128,
    upgrade = "true",
    prerequisites = {"oil-processing","advanced-electronics"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "specialized-refinery"
      },
      {
        type = "unlock-recipe",
        recipe = "specialized-refining-petroleum"
      },
      {
        type = "unlock-recipe",
        recipe = "specialized-refining-light-oil"
      },
      {
        type = "unlock-recipe",
        recipe = "specialized-refining-heavy-oil"
      }
    },
    unit =
    {
      count = 1,
      ingredients = SR_T_I,
      time = SR_T_T
    },
    order = "d-a-d-1"
  }
})
