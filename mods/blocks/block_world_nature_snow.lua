local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/blocks.lua")

create_block("everwild:snow", "Snow", "block_world_nature_snow.png", {crumbly = 3})
