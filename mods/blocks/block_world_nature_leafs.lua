local lib_path = core.get_modpath("everwild_library")
local block_path = core.get_modpath("everwild_textures")
dofile(lib_path.."/drops.lua")

core.register_node("everwild:leafs", {
    description = "Leaves",

    tiles = {"block_world_nature_leafs.png"},

    drawtype = "allfaces_optional",
    walkable = false,

    paramtype = "light",
    paramtype2 = "color4dir",

    palette = "block_world_nature_leafs_color_pallete.png",
    param2 = 7,

    groups = {
        oddly_breakable_by_hand = 3
    },

    sunlight_propagates = true,
})


local item_drop_list = {

    [""] = {
        loot = {
            {"everwild_items:stick", 0.2, 0,0,10}
        }
    },

    ["everwild_items:stick"]={
        loot={
            {"everwild_items:stick", 0.3,0,10}
        }
    },

    ["everwild_items:flint"] = {
        damage=45,
        loot = {
            {"everwild_items:stick", 0.25,10},
            {"everwild:leafs", 0.01,10}
        }
    },

     ["everwild_items:flint_dagger"] = {
        damage=25,
        loot = {
            {"everwild_items:stick", 0.25,10},
            {"everwild:leafs", 0.01, 10000}
        }
    },
}

drops("everwild:leafs", item_drop_list, 1000, 5)
