local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/plant.lua")
dofile(lib_path.."/drops.lua")

create_plant("everwild:grass_5", "Grass 5", "plantlike", "plant_world_nature_grass_5.png", {oddly_breakable_by_hand = 3}, "everwild_items:ripped_grass_string", 3, {fill_ratio = 0.15})
local item_drop_list = {

    [""] = {
        loot = {
            {"everwild_items:ripped_grass_string", 0.01}
        }
    },

    ["everwild_items:stick"]={
        loot={
             {"everwild_items:ripped_grass_string", 0.04}
        }
    },

    ["everwild_items:flint"] = {
        damage=1,
        loot = {
            {"everwild_items:ripped_grass_string", 0.08}
        }
    },

     ["everwild_items:flint_dagger"] = {
        damage=25,
        loot = {
            {"everwild_items:ripped_grass_string", 0.16}
        }
    },
}

drops("everwild:grass_5",item_drop_list)