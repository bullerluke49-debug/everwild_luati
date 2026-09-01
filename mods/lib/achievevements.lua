
local modpath = core.get_modpath("everwild_library")
local player_data={}

local node_achievement = dofile(modpath .. "/achievevements_lists/early.lua")dofile(modpath .. "/achievevements_lists/early.lua")

function achievement_of_player(name,details,player_name,stage)    
    local message="ACHIEVEMENT:\n".. name .. "\n" .. details.."\n\n"

    core.chat_send_player(player_name,tostring(message))

 
   player_data[name]={
    name=name,
    stage=stage,
   }

end





core.register_on_joinplayer(function(player)
  
    ----core.chat_send_player(player:get_player_name(), dump(node_achievement))
    local player_name=player:get_player_name()
    local meta = player:get_meta()
    ----core.chat_send_player(player:get_player_name(), dump(meta))
    if core.deserialize(meta:get_string("player_data")) ~= nil then

        player_data = core.deserialize(meta:get_string("player_data"))

    else
        check_achievement(player_name,"Welcome_world")
    end

end)

core.register_on_leaveplayer(function(player)
    local meta = player:get_meta()
    meta:set_string("player_data",core.serialize(player_data))
end)
    




function check_achievement(player,item_or_node)
    
    ----core.chat_send_player(player,dump(item_or_node))

    local get_from_node_achievement=node_achievement[item_or_node]

  
    if get_from_node_achievement == nil then
        ----core.chat_send_player(player,"get_from_node_achievement == nil")
        return     
    end

    local achievement_name=get_from_node_achievement.name
    local achievement_details=get_from_node_achievement.details
    local get_from_node_achievement_parent=get_from_node_achievement.parent
    
    if player_data[achievement_name]~= nil then
        return
    end
    

    if get_from_node_achievement.parent~=nil then
         --core.chat_send_player(player,"  get_from_node_achievement.parent~=nil")
        if player_data[get_from_node_achievement_parent] == nil then
            --core.chat_send_player(player,"  get_from_node_achievement_parent == nil")

            return
        end 
    end

    achievement_of_player(achievement_name,achievement_details,player,3)
end




