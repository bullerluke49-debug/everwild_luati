local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/plant.lua")
dofile(lib_path.."/drops.lua")
create_plant("everwild:flint", "flint", "plantlike", "block_world_nature_flint.png", 
{oddly_breakable_by_hand = 3}, "everwild_items:ripped_grass_string", 0.5, {fill_ratio = 0.01})





local item_drop_list = {

    [""] = {
        loot = {
            {"everwild_items:flint", 0.2}
        }
    },

    ["everwild_items:stick"]={
        loot={
            {"everwild_items:flint", 0.3}
        }
    },

    ["everwild_items:flint"] = {
        damage=10,
        loot = {
            {"everwild_items:flint", 0.5}
        }
    },

}

drops("everwild:flint",item_drop_list)
