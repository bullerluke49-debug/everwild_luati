local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/blocks.lua")

create_block("everwild:gravel", "Gravel", "block_world_nature_gravel.png", {crumbly = 3})
core.override_item("everwild:gravel", {drop = "everwild_items:rubble"})
