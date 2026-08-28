core.register_tool("everwild_items:flint_dagger", {
    description = "Flint Dagger",
    inventory_image = "tool_world_nature_flint_dagger.png",
    tool_capabilities = {
        full_punch_interval = 10.0,
        max_drop_level = 0,
        groupcaps = {
            fleshy = {
                times = {[1] = 1.5, [2] = 2.5, [3] = 3.5},
                uses = 2,
                maxlevel = 1,
            },
        },
        damage_groups = {fleshy = 2},
    },
})

core.register_tool("everwild_items:rough_flint_dagger", {
    description = "Rough Flint Dagger",
    inventory_image = "tool_world_nature_flint_dagger.png",
    tool_capabilities = {
        full_punch_interval = 7.0,
        max_drop_level = 0,
        groupcaps = {
            fleshy = {
                times = {[1] = 1.5, [2] = 2.5, [3] = 3.5},
                uses = 8,
                maxlevel = 1,
            },
        },
        damage_groups = {fleshy = 2},
    },
})

core.register_tool("everwild_items:rough_flint_pick", {
    description = "Rough Flint Pick",
    inventory_image = "tool_world_nature_flint_dagger.png",
    tool_capabilities = {
        full_punch_interval = 6.0,
        max_drop_level = 0,
        groupcaps = {
            crumbly = {
                times = {[1] = 1.5, [2] = 2.5, [3] = 3.5},
                uses = 8,
                maxlevel = 1,
            },
        },
    },
})

core.register_craft({
    output = "everwild_items:flint_dagger",
    recipe = {
        {"everwild_items:flint", "", ""},
        {"everwild_items:stick", "", ""},
        {"", "", ""},
    },
})

core.register_craft({
    output = "everwild_items:stick",
    recipe = {
        {"everwild_items:flint"}
    },
})

core.register_craft({
    output = "everwild_items:rough_flint_pick",
    recipe = {
        {"everwild_items:flint", "everwild_items:flint", "everwild_items:flint"},
        {"everwild_items:ripped_grass_string", "everwild_items:stick", "everwild_items:ripped_grass_string"},
        {"everwild_items:ripped_grass_string", "everwild_items:stick", "everwild_items:ripped_grass_string"},
    },
})
