
core.register_ore({
    ore_type = "scatter",
    ore = "everwild:gravel",
    wherein = {"everwild:rock"},
    clust_scarcity = 5 * 5 * 5,
    clust_num_ores = 50,
    clust_size = 3,
    y_min = 0,
    y_max = 31000,
})

core.register_ore({
    ore_type = "scatter",
    ore = "everwild:snow",
    wherein = {"everwild:rock"},
    clust_scarcity = 5 * 5 * 5,
    clust_num_ores = 50,
    clust_size = 10,
    y_min = 111,
    y_max = 31000,
})

core.register_ore({
    ore_type = "scatter",
    ore = "everwild:gravel",
    wherein = {"everwild:dirt"},
    clust_scarcity = 10 * 10 * 10,
    clust_num_ores = 20,
    clust_size = 3,
    y_min = 0,
    y_max = 31000,
})

core.register_ore({
    ore_type = "scatter",
    ore = "everwild:mossy_stone",
    wherein = {"everwild:rock"},
    clust_scarcity = 20 * 20 * 20,
    clust_num_ores = 20,
    clust_size = 3,
    y_min = 0,
    y_max = 111,
})

core.register_ore({
    ore_type = "scatter",
    ore = "everwild:mossy_stone",
    wherein = {"everwild:rock"},
    clust_scarcity = 4 * 4 * 4,
    clust_num_ores = 25,
    clust_size = 25,
    y_min = 112,
    y_max = 223,
})

core.register_ore({
    ore_type = "scatter",
    ore = "everwild:mossy_stone",
    wherein = {"everwild:rock"},
    clust_scarcity = 6 * 6 * 6,
    clust_num_ores = 18,
    clust_size = 18,
    y_min = 224,
    y_max = 310,
})

core.register_ore({
    ore_type = "scatter",
    ore = "everwild:mossy_stone",
    wherein = {"everwild:rock"},
    clust_scarcity = 10 * 10 * 10,
    clust_num_ores = 10,
    clust_size = 10,
    y_min = 311,
    y_max = 31000,
})

core.register_decoration({
    name = "everwild_water_gen",
    deco_type = "simple",
    place_on = {"everwild:rock", "everwild:gravel"},
    y_min = 200,
    y_max = 31000,
    sidelen = 200,
    fill_ratio = 0.0005,
    decoration = "everwild_liquids:water_source",
})

core.register_decoration({
    name = "everwild_lava_gen",
    deco_type = "simple",
    place_on = {"everwild:rock", "everwild:gravel", "everwild:snow"},
    y_min = 200,
    y_max = 31000,
    sidelen = 200,
    fill_ratio = 0.0005,
    decoration = "everwild_liquids:lava_source",
})

core.register_decoration({
    name = "everwild_flint_gen",
    deco_type = "simple",
    place_on = {"everwild:grass", "everwild:rock"},
    y_min = 0,
    y_max = 100,
    sidelen = 16,
    fill_ratio = 0.01,
    decoration = "everwild:flint",
})
