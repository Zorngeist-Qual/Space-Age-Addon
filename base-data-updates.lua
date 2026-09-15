
data.raw["assembling-machine"]["advanced-oil-refinery"].crafting_categories = {"oil-processing",
                                                                                     "advanced-oil-processing",
                                                                                     "oil-processing-or-advanced-oil-processing" }


table.insert(data.raw.lab["lab"].inputs, "fluid-science-pack")
data.raw.lab["lab"].icons_positioning =
{
  {inventory_index = defines.inventory.lab_modules, shift = {0, 0.9}},
  {inventory_index = defines.inventory.lab_input, shift = {0, 0}, max_icons_per_row = 6, separation_multiplier = 1/1.1}
}
