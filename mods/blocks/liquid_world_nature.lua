local lib_path = core.get_modpath("everwild_library")

register_liquid("lava", "Lava", "liquid_world_nature_lava.png", 5, 10, 1, 5, 5, 15, "lava")
register_liquid("water", "Water", "liquid_world_nature_water.png", 1, 0, 1, 1, 8, nil, "water")

core.register_alias("mapgen_water_source", "everwild:water_source")
