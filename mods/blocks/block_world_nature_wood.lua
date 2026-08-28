local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/blocks.lua")

create_block("everwild:wood", "Wood", "block_world_nature_wood.png", {choppy = 3}, "#9b4d2f")
