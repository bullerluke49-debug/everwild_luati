


function make_tool(name,description,inventory_image,tool_capabilities)
    core.register_tool(name, {
    description = description,
    inventory_image = inventory_image,
    tool_capabilities = tool_capabilities
    })
end