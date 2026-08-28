local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/blocks.lua")

create_block("everwild:sand", "Sand", "block_world_nature_sand.png", {crumbly = 3})
