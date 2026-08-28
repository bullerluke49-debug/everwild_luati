local river_depth = -50
function create_biome(name,top,top_amount,filler,filler_amount,under,y_min,y_max, heat, humidity)
    
    if name=="everwild_underground" then
        y_min=river_depth
    end

    if name=="everwild_river" then
        y_max=river_depth
    end

    if top==nil then
        
        top_amount=0
    end
    if filler==nil then
        filler_amount=0
    end
    core.register_biome({
        name=name,

        node_top=top,
        depth_top=top_amount,

        node_filler=filler,
        depth_filler= filler_amount,

        node_stone=under,

        y_min=y_min,
        y_max=y_max,

        heat_point=heat,
        humidity_point=humidity,
    })
end