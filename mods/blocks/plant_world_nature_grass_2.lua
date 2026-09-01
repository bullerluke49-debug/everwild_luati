local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/plant.lua")

create_plant("everwild:grass_2", "Grass 2", "plantlike", 
"plant_world_nature_grass_2.png", {oddly_breakable_by_hand = 3}, nil, 3, {fill_ratio = 0.07})
