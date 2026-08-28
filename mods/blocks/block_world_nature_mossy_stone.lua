local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/blocks.lua")

create_block("everwild:mossy_stone", "Mossy Stone", "block_world_nature_mossy_stone.png", {cracky = 3})
