data:extend(
    {
        {
            type = "fluid",
            name = "freon",
            icon = "__space-age-addon__/graphics/technology/freon.png",
            subgroup = "fluid",
            order = "b[new-fluid]-e[nauvis]-a[freon]",
            default_temperature = -70,           -- "жидкое" состояние
            max_temperature = 80,                -- выше испаряется
            heat_capacity = "0.15kJ",            -- газообразный/хладагент
            base_color = {r=0, g=0.2, b=0.5},    -- глубокий синий
            flow_color = {r=0.3, g=0.7, b=1.0},   -- яркий голубой при движении
            auto_barrel = false                  -- без залива в бочки
        },
    }
)