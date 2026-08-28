local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/liquids.lua")

register_liquid("water", "Water", "liquid_world_nature_water.png", 1, 0, 1, 1, 8, nil, "water")

core.register_alias("mapgen_water_source", "everwild_liquids:water_source")