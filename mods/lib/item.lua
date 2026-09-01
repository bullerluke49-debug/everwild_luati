function item(name,description,texture,stack,achievement)
    core.register_craftitem(name, {
    description = description,
    inventory_image = texture,
    stack_max= stack or 1,
    achievement=achievement,
    has_item=false
})
end

