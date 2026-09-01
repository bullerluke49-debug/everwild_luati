

function screen_element(name, title, width, height)
    local exit_buttion_placement=width-5
    local screen = {
        name = name,
        title = title,
        width = width,
        height = height,

        formspec =
            "formspec_version[4]" ..
            "size[" .. width .. "," .. height .. "]" ..
            "button_exit[" .. exit_buttion_placement .. ",1;3,3;exit_button;X]"..
            "label[1,1;8,6;Test]"

    }

    return screen
end

function player_inventory_formspec(player_character)
     local inv = player_character:get_inventory()
     
     player_character:set_inventory_formspec(
        "formspec_version[4]" ..
        "size[10.35,10]" ..
        "label[0.5,0.3;Inventory]" ..
        "list[current_player;craft;0.35,6;2,3;]"..
        "list[current_player;craftpreview;2.95,6.5;1,1;]"..
        "list[current_player;main;0.35,8.7;8,1;]"
    )

end



function screen_element_show(screen, player_name)

    core.show_formspec(
        player_name,
        screen.name,
        screen.formspec
    )

end
