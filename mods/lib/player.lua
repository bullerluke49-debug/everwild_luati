--core.register_allow_player_inventory_action(function(player, action, inventory, inventory_info))

core.register_allow_player_inventory_action(function(player, action, inventory, inventory_info)
    if achievement == nil then
        achievement = nil

        if inventory:get_location() ~= "current_player" then
            return
        end

        if inventory_info.listname == "craft_output" then
            if action == "put" then
                return 0
            end
        end

    end
end)