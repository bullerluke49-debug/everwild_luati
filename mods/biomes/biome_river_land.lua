local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/biome.lua")

create_biome("everwild_river_land", "everwild:grass", 1, "everwild:dirt", 10, "everwild:rock", 1, 10, 50, 50)
