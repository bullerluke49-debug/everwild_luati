local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/blocks.lua")

create_block("everwild:grass","Grass","block_world_nature_grass.png",{crumbly=3,}, "#62b85d")