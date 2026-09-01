local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/tool.lua")

make_tool(
    "everwild_items:rough_flint_pick",
    "Rough Flint Pick",
    "tool_world_nature_flint_dagger.png",
    {
        full_punch_interval = 6.0,
        max_drop_level = 0,

        groupcaps = {
            crumbly = {
                times = {
                    [1] = 1.5,
                    [2] = 2.5,
                    [3] = 3.5
                },
                uses = 8,
                maxlevel = 1
            }
        }
    }
)