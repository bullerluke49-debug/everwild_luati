function register_liquid(liquid_name, description, texture, viscosity, damage, source_drowning, flowing_drowning, liquid_range, light_source, group_name)
    local source_name = "everwild_liquids:" .. liquid_name .. "_source"
    local flowing_name = "everwild_liquids:" .. liquid_name .. "_flowing"

    local groups = {
        liquid = 3,
        [group_name] = 1,
    }

    core.register_node(source_name, {
        description = description,
        drawtype = "liquid",
        liquid_move_physics = true,
        tiles = {texture},
        special_tiles = {{name = texture, backface_culling = false}},
        use_texture_alpha = "blend",
        paramtype = "light",
        light_source = light_source or 0,
        liquidtype = "source",
        liquid_alternative_flowing = flowing_name,
        liquid_alternative_source = source_name,
        liquid_viscosity = viscosity,
        liquid_renewable = true,
        liquid_range = liquid_range,
        drowning = source_drowning,
        damage_per_second = damage,
        buildable_to = true,
        pointable = false,
        diggable = false,
        groups = groups,
    })

    core.register_node(flowing_name, {
        description = "Flowing " .. description,
        drawtype = "flowingliquid",
        tiles = {texture},
        special_tiles = {
            {name = texture, backface_culling = false},
            {name = texture, backface_culling = false},
        },
        use_texture_alpha = "blend",
        light_source = light_source or 0,
        paramtype = "light",
        paramtype2 = "flowingliquid",
        liquidtype = "flowing",
        liquid_alternative_flowing = flowing_name,
        liquid_alternative_source = source_name,
        liquid_viscosity = viscosity,
        liquid_renewable = true,
        liquid_range = liquid_range,
        drowning = flowing_drowning,
        damage_per_second = damage,
        buildable_to = true,
        pointable = false,
        diggable = false,
        groups = groups,
    })
end
