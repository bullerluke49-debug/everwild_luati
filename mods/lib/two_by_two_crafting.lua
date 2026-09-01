
function two_by_two(output,item_one,item_two,item_three,item_four)
core.chat_send_all(dump(item_four))
core.register_craft({
    output = output,
    recipe = {
        {item_one, item_two},
        {item_three, item_four},
    },
})
end
