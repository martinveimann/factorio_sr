require("config")
require("core")
require("prototypes.category")
require("prototypes.entities")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")
data.raw["assembling-machine"]["oil-refinery"].fast_replaceable_group = "assembling-machine"

-- Allow productivity modules in the specialized refineries by adding the recipies as intermediate products
for i, module in pairs(data.raw.module) do
  if module.effect.productivity and module.limitation then
		table.insert(module.limitation, "specialized-refining-petroleum");
		table.insert(module.limitation, "specialized-refining-light-oil");
		table.insert(module.limitation, "specialized-refining-heavy-oil");
		if not module.limitation_message_key then
    	module.limitation_message_key = "production-module-usable-only-on-intermediates"
    end
  end
end
