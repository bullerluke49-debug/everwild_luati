local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/plant.lua")

create_plant("everwild:grass_8", "Grass 8", "plantlike", "plant_world_nature_grass_8.png", {oddly_breakable_by_hand = 3}, "everwild_items:ripped_grass_string", 3, {fill_ratio = 0.07})
dofile(lib_path.."/drops.lua")

local item_drop_list = {

    [""] = {
        loot = {
            {"everwild_items:ripped_grass_string", 0.08}
        }
    },

    ["everwild_items:stick"]={
        loot={
             {"everwild_items:ripped_grass_string", 0.16}
        }
    },

    ["everwild_items:flint"] = {
        damage=21,
        loot = {
            {"everwild_items:ripped_grass_string", 0.32}
        }
    },

     ["everwild_items:flint_dagger"] = {
        damage=40,
        loot = {
            {"everwild_items:ripped_grass_string", 0.64}
        }
    },
}

drops("everwild:grass_8",item_drop_list)