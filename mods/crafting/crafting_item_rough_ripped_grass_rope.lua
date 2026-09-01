local item="everwild_items:ripped_grass_string"
local output="everwild_items:rough_ripped_grass_rope"
local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/two_by_two_crafting.lua")
core.register_craft({
    output = "everwild_items:rough_ripped_grass_rope 1",
    recipe = {
        {"everwild_items:ripped_grass_string", "everwild_items:ripped_grass_string"},
        {"everwild_items:ripped_grass_string", "everwild_items:ripped_grass_string"},
    },
})


core.register_craft({
    output = "default:stick 1",
    recipe = {
        {"default:stick", "default:stick"},
        {"default:stick", "default:stick"},
    },
})



