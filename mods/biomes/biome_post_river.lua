local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/biome.lua")

create_biome("everwild_post_river", "everwild:grass", 1, "everwild:dirt", 10, "everwild:rock", 11, 50, 50, 50)
