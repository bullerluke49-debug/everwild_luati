local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/plant.lua")
dofile(lib_path.."/drops.lua")
create_plant("everwild:flint", "flint", "plantlike", "block_world_nature_flint.png", 
{oddly_breakable_by_hand = 3}, "everwild_items:ripped_grass_string", 0.5, {fill_ratio = 0.01})





local item_drop_list = {

    [""] = {
        loot = {
            {"everwild:flint", 0.7, 0}
        }
    },

    ["everwild_items:stick"]={
        loot={
            {"everwild:flint", 0.8, 3}
        }
    },

    ["everwild_items:flint"] = {
        loot = {
            {"everwild:flint", 0.9, 5}
        }
    },

}

drops("everwild:flint",item_drop_list)
