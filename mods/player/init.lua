local lib_path = core.get_modpath("everwild_library")
local modpath = core.get_modpath(core.get_current_modname())
--dofile(modpath .. "/achievement.lua")
dofile(lib_path .. "/player.lua")
dofile(lib_path.."/formspec.lua")

core.register_on_joinplayer(function(player)

    player:set_physics_override({ gravity = 1.1 }) 
    local inv = player:get_inventory()
    inv:set_size("main",8)
    inv:set_size("craft", 5)
    player_inventory_formspec(player)
       
    core.chat_send_player(
    player:get_player_name(),
    "Craft: " .. inv:get_size("craft") ..
    " | Preview: " .. inv:get_size("craftpreview")
    
    


    )
 



end)



core.override_item("", {
    tool_capabilities = {
        full_punch_interval = 0.9,
        max_drop_level = 0,

        groupcaps = {
            oddly_breakable_by_hand = {
                times = {3.0, 1.5, 1.0},
                uses = 0,
                maxlevel = 1,
            },
        },

        damage_groups = {
            fleshy = 1,
        },
    },
})


