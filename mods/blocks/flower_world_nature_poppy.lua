local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/plant.lua")

create_plant("everwild:poppy", "Poppy", "plantlike", "flower_world_nature_poppy.png", {oddly_breakable_by_hand = 3}, nil, 1.0, {place_on = {"everwild:gravel", "everwild:grass", "everwild:dirt"}, y_max = 31000, sidelen = 20, fill_ratio = 0.05}, nil, nil)
