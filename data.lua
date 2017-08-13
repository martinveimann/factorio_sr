require("config")
require("core")
require("prototypes.category")
require("prototypes.entities")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")
data.raw["assembling-machine"]["oil-refinery"].fast_replaceable_group = "assembling-machine"

-- Allow productivity modules in the specialized refineries by adding the recipies as intermediate products
table.insert(data.raw.module["productivity-module"].limitation, "specialized-refining-petroleum")
table.insert(data.raw.module["productivity-module"].limitation, "specialized-refining-light-oil")
table.insert(data.raw.module["productivity-module"].limitation, "specialized-refining-heavy-oil")
