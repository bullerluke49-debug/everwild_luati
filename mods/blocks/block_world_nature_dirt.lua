local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/blocks.lua")

create_block("everwild:dirt","Dirt","block_world_nature_dirt.png",{crumbly=3,})
