function item(name,description,texture,stack)
    core.register_craftitem(name, {
    description = description,
    inventory_image = texture,
    stack_max= stack or 1
})
end