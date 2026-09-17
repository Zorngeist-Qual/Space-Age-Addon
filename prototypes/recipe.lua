function create_recipe_parameter(number)
  data:extend(
  {
    {
      type = "recipe",
      name = "parameter-" .. number,
      icon = "__base__/graphics/icons/parameter/parameter-" .. number .. ".png",
      localised_name = {"parameter-x", tostring(number)},
      subgroup = "parameters",
      category = "parameters",
      order = "a",
      parameter = true,
      allow_productivity = true
    },
  })
end

for n = 0, 9 do
  create_recipe_parameter(n)
end

data:extend(
    {
        ------------------------ Научные пакеты\science-pack ------------------------
        {
            type = "recipe",
            name = "fluid-science-pack",
            icon = "__space-age-addon__/graphics/icons/fluid-science-pack.png",
            enabled = false,
            category = "chemistry-or-cryogenics",
            surface_conditions = {
                {
                    property = "pressure",
                    min = 300,
                    max = 300
                }
            },
            main_product = "fluid-science-pack",
            allow_productivity = true,
            ingredients = {
                {type = "item", name = "plastic-bar", amount = 5},
                {type = "item", name = "calcite", amount = 1},
                {type = "fluid", name = "sulfuric-acid", amount = 80},
                {type = "fluid", name = "water", amount = 40},
            },
            energy_required = 32,
            results = {
                    {type="item", name="fluid-science-pack", amount= 1},
                    {type = "fluid", name = "steam", amount = 120, temperature = 500}
                }
        },
        ------------------------ Здания ------------------------

        {
            type = "recipe",
            name = "pump-mk2",
            icon = "__base__/graphics/icons/pump.png",
            subgroup = "energy-pipe-distribution",
            order = "b[pipe]-d[pump-mk2]",
            energy_required = 16,
            enabled = false,
            allow_quality = true,
            ingredients = {
                {type = "item", name = "pump", amount = 4},
                {type = "item", name = "processing-unit", amount = 12},
                {type = "item", name = "tungsten-plate", amount = 20},
                {type = "fluid", name = "ammonia", amount = 100}
            },
            results = {
                {type = "item", name = "pump-mk2", amount = 1}
            }
        },

        {
            type = "recipe",
            name = "advanced-oil-refinery",

            icon = "__space-age-addon__/graphics/icons/advanced-oil-refinery.png",
            subgroup = "production-machine",
            order = "e[advanced-oil-refinery]",

            energy_required = 8,
            ingredients = {
                {type = "item", name = "steel-plate", amount = 50},
                {type = "item", name = "electric-engine-unit", amount = 20},
                {type = "item", name = "refined-concrete", amount = 100},
                {type = "item", name = "processing-unit", amount = 25},
                {type = "item", name = "pipe", amount = 10}
            },
            results = {
                {type="item", name="advanced-oil-refinery", amount=1}
            },
            enabled = false
        },

        {
            type = "recipe",
            name = "magmothermic-reactor",
            localised_name = {"recipe-name.magmothermic-reactor"},
            icon = "__space-age-addon__/graphics/icons/magmothermic-reactor.png",
            icon_size = 256,
            icon_mipmaps = 4,

            energy_required = 16,
            ingredients = { 
                {type = "item", name = "tungsten-plate", amount = 50},
                {type = "item", name = "electric-engine-unit", amount = 20},
                {type = "item", name = "refined-concrete", amount = 100},
                {type = "item", name = "processing-unit", amount = 25},
                {type = "item", name = "pipe", amount = 10}
            },
            results = {
                {type="item", name="magmothermic-reactor", amount=1}
            },
            enabled = false
        },

        {
            type = "recipe",
            name = "magmothermic-turbine",
            localised_name = {"recipe-name.magmothermic-turbine"},
            icon = "__space-age-addon__/graphics/icons/magmothermic-turbine.png",
            icon_size = 256,
            icon_mipmaps = 4,

            energy_required = 8,

            ingredients = {
                {type = "item", name = "tungsten-plate", amount = 50},
                {type = "item", name = "electric-engine-unit", amount = 20},
                {type = "item", name = "refined-concrete", amount = 100},
                {type = "item", name = "processing-unit", amount = 25},
                {type = "item", name = "pipe", amount = 10}
            },

            results = {
                {type="item", name="magmothermic-turbine", amount=1}
            },

            enabled = false
        },
        ------------------------ Манипуляторы ------------------------
        {
            type = "recipe",
            name = "bulk-inserter-tier-2",
            localised_name = {"recipe-name.bulk-inserter-tier-2"},
            category = "metallurgy",
            enabled = false,
            energy_required = 1,
            ingredients = {
                {type = "item", name = "tungsten-plate", amount = 1},
                {type = "item", name = "advanced-circuit", amount = 15},
                {type = "item", name = "processing-unit", amount = 1},
                {type = "item", name = "bulk-inserter", amount = 1}
            },
            results = {
                {type="item", name="bulk-inserter-tier-2", amount=1}
            }
        },
        ------------------------ Предметы\Items ------------------------
        {
            type = "recipe",
            name = "pressed-solid-fuel",
            icon = "__space-age-addon__/graphics/icons/pressed-solid-fuel.png",
            icon_size = 256,
            icon_mipmaps = 4,
            category = "chemistry-or-cryogenics",
            energy_required = 1,
            ingredients = {
                {type = "item", name = "solid-fuel", amount = 50},
                {type = "fluid", name = "ammonia", amount = 100}
            },

            results = {
                {type = "item", name = "pressed-solid-fuel", amount = 1}
            },
            allow_productivity = true,
            subgroup = "fluid-recipes",
            enabled = false,
            order = "b[fluid-chemistry]-e[pressed-solid-fuel.png]",
            crafting_machine_tint = {
                primary = {r = 0.889, g = 0.628, b = 0.566, a = 1.000}, -- #e2a090ff
                secondary = {r = 0.803, g = 0.668, b = 0.644, a = 1.000}, -- #ccaaa4ff
                tertiary = {r = 0.854, g = 0.659, b = 0.576, a = 1.000}, -- #d9a892ff
                quaternary = {r = 1.000, g = 0.395, b = 0.127, a = 1.000}, -- #ff6420ff
            }
        },

        {
            type = "recipe",
            name = "magmatic-fuel-cell-empty",
            localised_name = {"recipe-name.magmatic-fuel-cell-empty"},
            category = "metallurgy",
            icon = "__space-age-addon__/graphics/icons/magmatic-fuel-cell-empty.png",
            icon_size = 256,
            icon_mipmaps = 4,
            subgroup = "vulcanus-processes",
            order = "a[magmatic-fuel-cell-empty]",
            energy_required = 10,
            allow_productivity = false,
            enabled = false,

            surface_conditions = {
                {
                    property = "pressure",
                    min = 4000,
                    max = 4000
                }
            },

            ingredients = {
                {type = "item", name = "tungsten-plate", amount = 20},
                {type = "item", name = "tungsten-carbide", amount = 5}
            },

            results = {
                {type = "item", name = "magmatic-fuel-cell-empty", amount = 1}
            }
        },

        {
            type = "recipe",
            name = "magmatic-fuel-cell-full",
            localised_name = {"recipe-name.magmatic-fuel-cell-full"},
            icon_size = 256,
            icon_mipmaps = 4,
            category = "metallurgy",
            icon = "__space-age-addon__/graphics/icons/magmatic-fuel-cell-full.png",
            subgroup = "vulcanus-processes",
            order = "b[magmatic-fuel-cell-full]",
            energy_required = 5,
            allow_productivity = false,
            enabled = false,

            surface_conditions = {
                {
                    property = "pressure",
                    min = 4000,
                    max = 4000
                }
            },

            ingredients = {
                {type = "item", name = "magmatic-fuel-cell-empty", amount = 1},
                {type = "fluid", name = "lava", amount = 1000}
            },

            results = {
                {type = "item", name = "magmatic-fuel-cell-full", amount = 1}
            }
        },
        {
            type = "recipe",
            name = "magmatic-fuel",
            localised_name = {"recipe-name.magmatic-fuel"},
            category = "metallurgy",
            icon = "__space-age-addon__/graphics/icons/magmatic-fuel.png",
            icon_size = 256,
            icon_mipmaps = 4,
            subgroup = "vulcanus-processes",
            order = "b[magmatic-fuel]",
            energy_required = 5,
            allow_productivity = false,
            enabled = false,

            surface_conditions = {
                {
                    property = "pressure",
                    min = 4000,
                    max = 4000
                }
            },

            ingredients = {
                {type = "item", name = "tungsten-plate", amount = 10},
                {type = "item", name = "tungsten-carbide", amount = 1},
                {type = "fluid", name = "lava", amount = 1000}
            },

            results = {
                {type = "item", name = "magmatic-fuel", amount = 1}
            }
        },


        ------------------------ Жидкости\Fluids ------------------------
        {
            type = "recipe",
            name = "freon-processing",
            icon = "__space-age-addon__/graphics/technology/freon.png",
            category = "chemistry-or-cryogenics",
            subgroup = "fluid-recipes",
            order = "d[other-chemistry]-b[freon-processing]",
            enabled = false,
            energy_required = 10,

            ingredients = {
                {type = "fluid", name = "fluorine", amount = 50},             -- жидкость 1
                {type = "fluid", name = "ammonia", amount = 50},              -- жидкость 2
                {type = "item", name = "calcite", amount = 1},                -- предмет 1
                {type = "item", name = "lithium", amount = 4},       -- предмет 2
            },

            results = {
                {type = "fluid", name = "freon", amount = 100, temperature = -50},             -- основной продукт
                {type = "item", name = "stone", amount = 1}         -- побочный продукт
            },

            always_show_products = true,
            show_amount_in_title = false,
            allow_decomposition = false,
            allow_quality = false,
            crafting_machine_tint = {
                primary = {r = 0.409, g = 0.694, b = 0.895, a = 1.000},
                secondary = {r = 1.000, g = 1.000, b = 1.000, a = 1.000},
                tertiary = {r = 0.540, g = 0.520, b = 0.520, a = 1.000},
                quaternary = {r = 0.750, g = 0.750, b = 0.750, a = 1.000},
            }
        },

        {
            type = "recipe",
            name = "deep-oil-processing",
            category = "advanced-oil-processing",
            enabled = false,
            energy_required = 5,

            ingredients = {
                {type = "fluid", name = "water", amount = 500},
                {type = "fluid", name = "crude-oil", amount = 100}
            },

            results = {
                {type = "fluid", name = "petroleum-gas", amount = 255}
            },

            allow_productivity = true,
            icon = "__space-age-addon__/graphics/fluid/petroleum-gas.png",
            icon_size = 64,
            subgroup = "fluid-recipes",
            order = "a[oil-processing]-b[advanced-oil-processing]",
            main_product = ""
        },

        {
            type = "recipe",
            name = "intermediate-oil-processing",
            category = "advanced-oil-processing",
            enabled = false,
            energy_required = 5,

            ingredients = {
                {type = "fluid", name = "water", amount = 500},
                {type = "fluid", name = "crude-oil", amount = 100}
            },

            results = {
                {type = "fluid", name = "light-oil", amount = 210}
            },

            allow_productivity = true,
            icon = "__space-age-addon__/graphics/fluid/light-oil.png",
            icon_size = 64,
            subgroup = "fluid-recipes",
            order = "a[oil-processing]-b[advanced-oil-processing]",
            main_product = ""
        },

        {
            type = "recipe",
            name = "primary-oil-processing",
            category = "advanced-oil-processing",
            enabled = false,
            energy_required = 5,

            ingredients = {
                {type = "fluid", name = "water", amount = 500},
                {type = "fluid", name = "crude-oil", amount = 100}
            },

            results = {
                {type = "fluid", name = "heavy-oil", amount = 180}
            },
            
            allow_productivity = true,
            icon = "__space-age-addon__/graphics/fluid/heavy-oil.png",
            icon_size = 64,
            subgroup = "fluid-recipes",
            order = "a[oil-processing]-b[advanced-oil-processing]",
            main_product = ""
        },
    }
)