local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/tool.lua")
make_tool("everwild_items:flint_dagger","Flint Dagger","tool_world_nature_flint_dagger.png",{
        full_punch_interval = 10.0,
        max_drop_level = 0,
       
        groupcaps = {
            fleshy = {
                times = {[1] = 1.5, [2] = 2.5, [3] = 3.5},
                uses = 2,
                maxlevel = 1,
            },
        },
        damage_groups = {fleshy = 2},
    })

