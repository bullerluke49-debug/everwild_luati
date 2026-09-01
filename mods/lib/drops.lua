local lib_path = core.get_modpath("everwild_library")
dofile(lib_path .. "/achievevements.lua")



function take_node(pos,digger,wielded_item,damage_correct,damage_correct_precent,item,replace_node)
    local node=core.get_node(pos)
  
    local player= digger:get_player_name()
    
    wielded_item:add_wear(damage_correct*damage_correct_precent)
    digger:set_wielded_item(wielded_item)
    
  

    if replace_node == nil then
       
        core.remove_node(pos)

    end

    if item ~= nil then
        
        core.add_item(pos, item)
        check_achievement(player,item)
    end

 


end

function drops(name,item_drop_list,damage_to_tool,drop_amount)
    
    print("**LIB DROPS**")
    if drop_amount ~=nil then 
        drop_amount= drop_amount
    else 
        drop_amount="nil"
    end

    print("---------DROPS: \n Name:"..name.. "\n Item Drop:"..tostring(item_drop_list).."\n drop_amount:".. drop_amount)    

    core.override_item(name, {

        on_dig = function(pos, node, digger)
           



            if not digger then
                print("DROPS:NOT DIGGER")
                return
            end

            local wielded_item = digger:get_wielded_item()
            local wielded_name = wielded_item:get_name()


            local item_list = item_drop_list[wielded_name]
            
            if not item_list then
                item_list=item_drop_list[""]
            end
            
            local drops=item_list.loot
           
          
            local damage=item_list.damage
            local damage=0
            local damage_correct=0

            
            if item_list.damage ~= nil then
                damage=item_list.damage
                damage_correct=damage/100*65535
            end

            if not drops then
                take_node(pos,digger,wielded_item,damage_correct,0.33)
            end
           

            local roll = math.random()

            local total = 0

            for _, drop in ipairs(drops) do

                local item = drop[1]
                local chance = drop[2]
                local durability = drop[3]

                total = total + chance

                if roll <= total then
                    if drop_amount ~="nil" then
                        print("DROPS: drop_amount not nil")
                        local amount=math.random(0,drop_amount)

                        for i=1, amount do
                            take_node(pos,digger,wielded_item,damage_correct,1,item)
                        end

                    else
                        print("DROPS:drop_amount is nil")
                        take_node(pos,digger,wielded_item,damage_correct,1,item)
                         
                    end

                    
                    print("DROPS:removed node")
                    break
                else
                    take_node(pos,digger,wielded_item,damage_correct,0.33)
                    print("DROPS:removed node \n------")
                end

            end

            
            --damage_to_tool
           
        end,
        
    })
    
end