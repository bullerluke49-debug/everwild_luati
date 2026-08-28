local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/liquids.lua")
register_liquid("lava", "Lava", "liquid_world_nature_lava.png", 5, 10, 1, 5, 5, 15, "lava")