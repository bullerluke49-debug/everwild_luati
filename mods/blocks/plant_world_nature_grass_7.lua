local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/plant.lua")

create_plant("everwild:grass_7", "Grass 7", "plantlike", "plant_world_nature_grass_7.png", {oddly_breakable_by_hand = 3}, "everwild_items:ripped_grass_string", 3, {fill_ratio = 0.09})
dofile(lib_path.."/drops.lua")

local item_drop_list = {

    [""] = {
        loot = {
            {"everwild_items:ripped_grass_string", 0.04}
        }
    },

    ["everwild_items:stick"]={
        loot={
             {"everwild_items:ripped_grass_string", 0.08}
        }
    },

    ["everwild_items:flint"] = {
        damage=11,
        loot = {
            {"everwild_items:ripped_grass_string", 0.16}
        }
    },

     ["everwild_items:flint_dagger"] = {
        damage=30,
        loot = {
            {"everwild_items:ripped_grass_string", 0.32}
        }
    },
}

drops("everwild:grass_7",item_drop_list)