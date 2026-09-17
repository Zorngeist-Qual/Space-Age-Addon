local sounds = require("__base__.prototypes.entity.sounds")
local space_age_sounds = require("__space-age__.prototypes.entity.sounds")
local item_sounds = require("__base__.prototypes.item_sounds")
local space_age_item_sounds = require("__space-age__.prototypes.item_sounds")
local item_tints = require("__base__.prototypes.item-tints")
local item_effects = require("__space-age__.prototypes.item-effects")
local meld = require("meld")
local simulations = require("__space-age__.prototypes.factoriopedia-simulations")

local make_tile_area = function(area, name)
    local result = {}
    local left_top = area[1]
    local right_bottom = area[2]
    for x = left_top[1], right_bottom[1] do
        for y = left_top[2], right_bottom[2] do
            table.insert(result, {
                position = {x, y},
                tile = name
            })
        end
    end
    return result
end

data:extend(item_effects.data)

data:extend(
    { 
        ------------------------ Научные пакеты ------------------------
        ---Жидкостный исследовательский пакет---
        {
            type = "tool",
            name = "fluid-science-pack",
            localised_description = {"item-description.science-pack"},
            icon = "__space-age-addon__/graphics/icons/fluid-science-pack.png",
            subgroup = "science-pack",
            color_hint = {
                text = "M"
            },
            order = "h",
            inventory_move_sound = item_sounds.science_inventory_move,
            pick_sound = item_sounds.science_inventory_pickup,
            drop_sound = item_sounds.science_inventory_move,
            stack_size = 200,
            default_import_location = "vulcanus",
            weight = 1 * kg,
            durability = 1,
            durability_description_key = "description.science-pack-remaining-amount-key",
            factoriopedia_durability_description_key = "description.factoriopedia-science-pack-remaining-amount-key",
            durability_description_value = "description.science-pack-remaining-amount-value",
            random_tint_color = item_tints.bluish_science
        }, 
        ------------------------ Здания ------------------------
        ------------------------ Помпа Т2 ------------------------
        {
            type = "item",
            name = "pump-mk2",
            icon = "__base__/graphics/icons/pump.png",
            subgroup = "energy-pipe-distribution",
            order = "b[pipe]-d[pump-mk2]",
            inventory_move_sound = item_sounds.fluid_inventory_move,
            pick_sound = item_sounds.fluid_inventory_pickup,
            drop_sound = item_sounds.fluid_inventory_move,
            place_result = "pump-mk2",
            stack_size = 50,
            weight = 10 * kg,
            random_tint_color = item_tints.yellowing_coal
        },
        ------------------------ Продвинутая нефтеперерабатывающая установка ------------------------
        {
            type = "item",
            name = "advanced-oil-refinery",
            icon = "__space-age-addon__/graphics/icons/advanced-oil-refinery.png",
            subgroup = "production-machine",
            order = "e[advanced-oil-refinery]",
            inventory_move_sound = item_sounds.drill_inventory_move,
            pick_sound = item_sounds.drill_inventory_pickup,
            drop_sound = item_sounds.drill_inventory_move,
            place_result = "advanced-oil-refinery",
            stack_size = 20,
            weight = 100 * kg
        }, 
        ------------------------ Манипуляторы --------------------------
        ------------------------ Массовые манипуляторы Т2 ------------------------
        {
            type = "item",
            name = "bulk-inserter-tier-2",
            icon = "__space-age-addon__/graphics/icons/bulk-inserter-tier-2.png",
            subgroup = "inserter",
            localised_name = {"item-name.bulk-inserter-tier-2"},
            color_hint = {
                text = "B"
            },
            order = "f[bulk-inserter]",
            inventory_move_sound = item_sounds.inserter_inventory_move,
            pick_sound = item_sounds.inserter_inventory_pickup,
            drop_sound = item_sounds.inserter_inventory_move,
            place_result = "bulk-inserter-tier-2",
            stack_size = 50,
            weight = 20 * kg
        }, 
        ------------------------ Предметы ------------------------
        ------------------------ Спрессованное топливо ------------------------
        {
            type = "item",
            name = "pressed-solid-fuel",
            icon = "__space-age-addon__/graphics/icons/pressed-solid-fuel.png",
            icon_size = 256,
            icon_mipmaps = 4,
            fuel_category = "chemical",
            fuel_value = "600MJ",
            fuel_acceleration_multiplier = 1.6,
            fuel_top_speed_multiplier = 1.3,
            subgroup = "raw-material",
            order = "b[chemistry]-a[solid-fuel]",
            inventory_move_sound = item_sounds.solid_fuel_inventory_move,
            pick_sound = item_sounds.solid_fuel_inventory_pickup,
            drop_sound = item_sounds.solid_fuel_inventory_move,
            stack_size = 50,
            weight = 1 * kg,
            random_tint_color = item_tints.yellowing_coal
        }, 
        
        ------------------------ Термо-магматические технологии ------------------------
        ------------------------ Магмотермический реактор ------------------------
        {
            type = "item",
            name = "magmothermic-reactor",
            localised_name = {"item-name.magmothermic-reactor"},
            icon = "__space-age-addon__/graphics/icons/magmothermic-reactor.png",
            icon_size = 256,
            icon_mipmaps = 4,
            subgroup = "energy",
            order = "f[magma-energy]-a[reactor]",
            inventory_move_sound = item_sounds.reactor_inventory_move,
            pick_sound = item_sounds.reactor_inventory_pickup,
            drop_sound = item_sounds.reactor_inventory_move,
            place_result = "magmothermic-reactor",
            weight = 1 * tons,
            stack_size = 10
        }, 
        ------------------------ Магмотермическая турбина ------------------------
        {
            type = "item",
            name = "magmothermic-turbine",
            localised_name = {"item-name.magmothermic-turbine"},
            icon = "__space-age-addon__/graphics/icons/magmothermic-turbine.png",
            icon_size = 256,
            icon_mipmaps = 4,
            subgroup = "energy",
            order = "f[magma-energy]-a[reactor]",
            inventory_move_sound = item_sounds.reactor_inventory_move,
            pick_sound = item_sounds.reactor_inventory_pickup,
            drop_sound = item_sounds.reactor_inventory_move,
            place_result = "magmothermic-turbine",
            weight = 500 * kg,
            stack_size = 10
        }, 
        ------------------------ Магматические топливные ячейки ------------------------
        {
            type = "item",
            name = "magmatic-fuel-cell-full",
            localised_name = {"item-name.magmatic-fuel-cell-full"},
            icon = "__space-age-addon__/graphics/icons/magmatic-fuel-cell-full.png",
            icon_size = 256,
            icon_mipmaps = 4,

            subgroup = "magmatic-processing",
            order = "b[magmatic-products]-a[magmatic-fuel-cell]",
            inventory_move_sound = item_sounds.nuclear_inventory_move,
            pick_sound = item_sounds.nuclear_inventory_pickup,
            drop_sound = item_sounds.nuclear_inventory_move,
            fuel_category = "magmatic",
            burnt_result = "magmatic-fuel-cell-empty",
            fuel_value = "2GJ",
            stack_size = 10,
            weight = 100 * kg
        }, 
        ------------------------ Пустые магматические топливные ячейки ------------------------
        {
            type = "item",
            name = "magmatic-fuel-cell-empty",
            icon_size = 256,
            icon_mipmaps = 4,
            localised_name = {"item-name.magmatic-fuel-cell-empty"},
            icon = "__space-age-addon__/graphics/icons/magmatic-fuel-cell-empty.png",
            subgroup = "magmatic-processing",
            order = "b[magmatic-products]-c[magmatic-fuel-cell-empty]",
            inventory_move_sound = item_sounds.nuclear_inventory_move,
            pick_sound = item_sounds.nuclear_inventory_pickup,
            drop_sound = item_sounds.nuclear_inventory_move,
            stack_size = 10,
            weight = 10 * kg
        }, 
        ------------------------ Магматическое топливо ------------------------
        {
            type = "item",
            name = "magmatic-fuel",
            icon = "__space-age-addon__/graphics/icons/magmatic-fuel.png",
            icon_size = 256,
            icon_mipmaps = 4,
            fuel_category = "chemical",
            fuel_value = "5GJ",
            fuel_acceleration_multiplier = 3.5,
            fuel_top_speed_multiplier = 1.8,
            subgroup = "magmatic-processing",
            order = "b[magmatic-products]-c[magmatic-fuel]",
            inventory_move_sound = item_sounds.fuel_cell_inventory_move,
            pick_sound = item_sounds.fuel_cell_inventory_pickup,
            drop_sound = item_sounds.fuel_cell_inventory_move,
            stack_size = 1,
            weight = 100 * kg
        }
    }
)
