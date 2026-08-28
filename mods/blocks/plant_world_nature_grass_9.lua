local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/plant.lua")

create_plant("everwild:grass_9", "Grass 9", "plantlike", "plant_world_nature_grass_9.png", {oddly_breakable_by_hand = 3}, "everwild_items:ripped_grass_string", 3, {fill_ratio = 0.05})
