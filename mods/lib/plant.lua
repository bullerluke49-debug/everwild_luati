function create_plant(name, description, drawtype, texture, groups, drops, visual_scale, decoration, color, use_texture_alpha,palette)
    local tiles = {texture}
    local color_palette=nil
    local paramtype2=nil
    local param2_giver=0
    if palette ~= nil then
        color_palette=palette
        palette="color"
        
    else
        color_palette=palette
        palette="meshoptions"
    end

    if color ~= nil then
        tiles = {{name = texture, color = color}}
    end
    if name=="everwild:leafs" then
        param2_giver=math.random(0,7)
    end

    
    core.register_node(name, {
    description = description,
    tiles = tiles,
    walkable = false,
    drawtype = drawtype,
    paramtype = "light",
    paramtype2 = palette,
    
    palette=color_palette,
    param2=param2_giver,
    


    sunlight_propagates = true,
    visual_scale = visual_scale,
    groups = groups,
    drop = drops,
    use_texture_alpha = use_texture_alpha
    })

    if decoration ~= nil then
        core.register_decoration({name = name .. "_decoration", deco_type = "simple", place_on = decoration.place_on or {"everwild:grass", "everwild:rock"}, y_min = decoration.y_min or 0, y_max = decoration.y_max or 50, sidelen = decoration.sidelen or 16, fill_ratio = decoration.fill_ratio, decoration = name, param2 = decoration.param2 or 8})
    end


end
    


