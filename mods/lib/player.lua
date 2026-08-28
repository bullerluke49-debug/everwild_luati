

function set_inventory_slots(amount,player_character)
    local inv = player_character:get_inventory()
    inv:set_size("main",amount)
    inv:set_size("craft_output", 1)

    
end
--core.register_allow_player_inventory_action(function(player, action, inventory, inventory_info))

core.register_allow_player_inventory_action(function(player, action, inventory, inventory_info)
        
        if inventory:get_location()~= "current_player" then
        return
        end

        if inventory_info.listname=="craft_output" then
            if action == "put" then
                return 0
            end
        end

end)