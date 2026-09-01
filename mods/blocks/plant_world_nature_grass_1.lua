local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/plant.lua")

create_plant("everwild:grass_1", "Grass 1", "plantlike", "plant_world_nature_grass_1.png", {oddly_breakable_by_hand = 3}, 
nil, 3, {fill_ratio = 0.05})
