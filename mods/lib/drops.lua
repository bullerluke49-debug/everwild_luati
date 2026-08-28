
function drops(name,item_drop_list)
    core.override_item(name, {

    on_dig = function(pos, node, digger)

        if not digger then
            return
        end

        local wielded_item = digger:get_wielded_item()
        local wielded_name = wielded_item:get_name()

        local drops = item_drop_list[wielded_name]

       
        if not drops then
            drops = item_drop_list[""]
             core.remove_node(pos)
        end

        local roll = math.random()

        local total = 0

        for _, drop in ipairs(drops.loot) do

            local item = drop[1]
            local chance = drop[2]
            local durability = drop[3]

            total = total + chance

            if roll <= total then
                core.add_item(pos, item)
                core.remove_node(pos)
                break
            end

        end
        core.remove_node(pos)
    end,

})

end