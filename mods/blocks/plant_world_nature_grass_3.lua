local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/plant.lua")

create_plant("everwild:grass_3", "Grass 3", "plantlike", 
"plant_world_nature_grass_3.png", {oddly_breakable_by_hand = 3}, nil, 3, {fill_ratio = 0.09})
