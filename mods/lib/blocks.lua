
function create_block(name,description,texture,groups,color_given)
    local tiles_given = {texture}
    
    
    if color_given ~= nil then
        tiles_given = {{name=texture, color=color_given}}
    end

    core.register_node(name,{
        description=description,
        tiles=tiles_given,
        groups=groups,
       
    })
end
    
