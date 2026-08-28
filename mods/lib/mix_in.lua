
function mix_in(ore,type,wherein,clust_scarcity,clust_num_ores,clust_size,y_min,y_max)
    core.register_ore({
    ore_type = "scatter",
    ore = ore,
    wherein = wherein,
    clust_scarcity = clust_scarcity,
    clust_num_ores = clust_num_ores,
    clust_size = clust_size,
    y_min = y_min,
    y_max = y_max,
})

end