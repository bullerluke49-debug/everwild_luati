local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/plant.lua")

create_plant("everwild:grass_9", "Grass 9", "plantlike", "plant_world_nature_grass_9.png", {oddly_breakable_by_hand = 3}, "everwild_items:ripped_grass_string", 3, {fill_ratio = 0.05})

dofile(lib_path.."/drops.lua")

local item_drop_list = {

    [""] = {
        loot = {
            {"everwild_items:ripped_grass_string", 0.16}
        }
    },

    ["everwild_items:stick"]={
        loot={
             {"everwild_items:ripped_grass_string", 0.32}
        }
    },

    ["everwild_items:flint"] = {
        damage=31,
        loot = {
            {"everwild_items:ripped_grass_string", 0.64}
        }
    },

     ["everwild_items:flint_dagger"] = {
        damage=45,
        loot = {
            {"everwild_items:ripped_grass_string", 0.64}
        }
    },
}

drops("everwild:grass_9",item_drop_list)