data:extend(
    { 
        ------------------------- Технологии ------------------------
        -- Основные исследования 
        {
            type = "technology",
            name = "advanced-oil-refinery",
            icon = "__space-age-addon__/graphics/technology/oil-processing.png",
            icon_size = 64,
            localised_name = {"technology-name.advanced-oil-refinery"},
            prerequisites = {"advanced-oil-processing", "production-science-pack"},
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "advanced-oil-refinery"
                }
            },
            unit = {
                ingredients = {
                    {"automation-science-pack", 1}, 
                    {"logistic-science-pack", 1}, 
                    {"military-science-pack", 1},
                    {"chemical-science-pack", 1}, 
                    {"production-science-pack", 1}
                },
                time = 30,
                count = 5000
            }
        }, 
        -- Исследование жидкостного пакета
        {
            type = "technology",
            name = "fluid-science-pack",
            icon = "__space-age-addon__/graphics/technology/fluid-science-pack.png",
            icon_size = 256,
            prerequisites = {"cryogenic-science-pack", "electromagnetic-science-pack", "metallurgic-science-pack"},
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "fluid-science-pack"
                }
            },
            unit = {
                ingredients = {
                    {"automation-science-pack", 1}, 
                    {"logistic-science-pack", 1}, 
                    {"military-science-pack", 1},
                    {"chemical-science-pack", 1}, 
                    {"production-science-pack", 1}, 
                    {"utility-science-pack", 1},
                    {"space-science-pack", 1},
                    {"metallurgic-science-pack", 1}, 
                    {"electromagnetic-science-pack", 1},
                    {"cryogenic-science-pack", 1}
                },
                time = 30,
                count = 15000
            }
        }, 
        -- Исследования из жидкостных пакетов
        {
            type = "technology",
            name = "freon-processing",
            icon = "__space-age-addon__/graphics/technology/freon.png",
            icon_size = 256,

            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "freon-processing"
                }
            },

            prerequisites = {"fluid-science-pack"},

            unit = {
                ingredients = {
                    {"automation-science-pack", 1}, 
                    {"chemical-science-pack", 1}, 
                    {"space-science-pack", 1},
                    {"fluid-science-pack", 1}
                },
                count = 5000,
                time = 10
            }
        }, 
        {
            type = "technology",
            name = "pressed-solid-fuel",
            icon = "__space-age-addon__/graphics/technology/pressed-solid-fuel-tech.png",
            icon_size = 256,
            icon_mipmaps = 4,
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "pressed-solid-fuel"
                }
            },
            prerequisites = {"planet-discovery-aquilo"},
            unit = {
                ingredients = {
                    {"automation-science-pack", 1}, 
                    {"chemical-science-pack", 1}, 
                    {"production-science-pack", 1}, 
                    {"utility-science-pack", 1}, 
                    {"space-science-pack", 1}
                },
                count = 5000,
                time = 10
            }
        }, ------------------------ Металлургических ------------------------
        {
            type = "technology",
            name = "bulk-inserter-tier-2",
            icon = "__space-age-addon__/graphics/technology/bulk-inserter-tier-2.png",
            icon_size = 64,
            localised_name = {"technology-name.bulk-inserter-tier-2"},
            prerequisites = {"metallurgic-science-pack"},
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "bulk-inserter-tier-2"
                }
            },
            unit = {
                ingredients = {
                    {"automation-science-pack", 1}, 
                    {"logistic-science-pack", 1}, 
                    {"military-science-pack", 1},
                    {"chemical-science-pack", 1}, 
                    {"production-science-pack", 1}, 
                    {"utility-science-pack", 1},
                    {"space-science-pack", 1}, 
                    {"metallurgic-science-pack", 1}
                },
                time = 30,
                count = 15000
            }
        }, 
        {
            type = "technology",
            name = "magmothermic-energy",
            icon = "__space-age-addon__/graphics/technology/magmothermic-reactor-tech.png",
            icon_size = 64,
            localised_name = {"technology-name.magmothermic-energy"},
            localised_description = {"technology-description.magmothermic-energy"},
            prerequisites = {"metallurgic-science-pack", "uranium-processing"},
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "magmothermic-reactor"
                }, 
                {
                    type = "unlock-recipe",
                    recipe = "magmothermic-turbine"
                }, 
                {
                    type = "unlock-recipe",
                    recipe = "magmatic-fuel-cell-full"
                },
                {
                    type = "unlock-recipe",
                    recipe = "magmatic-fuel-cell-empty"
                },
                {
                    type = "unlock-recipe",
                    recipe = "magmatic-fuel"
                }
            },

            unit = {
                ingredients = {
                    {"automation-science-pack", 1}, 
                    {"logistic-science-pack", 1}, 
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1}, 
                    {"utility-science-pack", 1}, 
                    {"space-science-pack", 1},
                    {"metallurgic-science-pack", 1}
                },
                time = 30,
                count = 7500
            }
        }
    }
)
