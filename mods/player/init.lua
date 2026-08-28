local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/player.lua")
dofile(lib_path.."/formspec.lua")

core.register_on_joinplayer(function(player)
    set_inventory_slots(8,player)

    player_inventory_formspec(player)
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