core.register_alias("everwild_mapgen:grass", "everwild:grass")
core.register_alias("everwild_mapgen:dirt", "everwild:dirt")
core.register_alias("everwild_mapgen:rock", "everwild:rock")
core.register_alias("everwild_mapgen:leafs", "everwild:leafs")
core.register_alias("everwild_mapgen:wood", "everwild:wood")
core.register_alias("everwild_mapgen:snow", "everwild:snow")
core.register_alias("everwild_oregen:gravel", "everwild:gravel")

core.register_decoration({

    name = "everwild_tree_low",

    deco_type = "schematic",

    place_on = {"everwild:grass"},

    y_min = 0,

    y_max = 5,

    sidelen = 16,

    fill_ratio = 0.02,

    schematic = "everwild_tree_low.mts",

    flags = "place_center_x,place_center_z",

    rotation = "random",

})

core.register_decoration({

    name = "everwild_tree_high",

    deco_type = "schematic",

    place_on = {"everwild:grass"},

    y_min = 0,

    y_max = 5,

    sidelen = 16,

    fill_ratio = 0.03,

    schematic = "everwild_tree_high.mts",

    flags = "place_center_x,place_center_z",

    rotation = "random",

})

core.register_decoration({

    name = "everwild_tree_little",

    deco_type = "schematic",

    place_on = {"everwild:grass"},

    y_min = 0,

    y_max = 5,

    sidelen = 16,

    fill_ratio = 0.04,

    schematic = "ever_wild_little_tree.mts",

    flags = "place_center_x,place_center_z",

    rotation = "random",

})

core.register_decoration({

    name = "everwild_tree_fur",

    deco_type = "schematic",

    place_on = {"everwild:grass", "everwild:gravel"},

    y_min = 50,

    y_max = 200,

    sidelen = 16,

    fill_ratio = 0.01,

    schematic = "everwild_tree_fur.mts",

    flags = "place_center_x,place_center_z",

    rotation = "random",

})

core.register_decoration({

    name = "everwild_tree_squat",

    deco_type = "schematic",

    place_on = {"everwild:gravel"},

    y_min = 100,

    y_max = 300,

    sidelen = 16,

    fill_ratio = 0.01,

    schematic = "everwild_tree_squat.mts",

    flags = "place_center_x,place_center_z",

    rotation = "random",

})


core.register_decoration({

    name = "everwild_bolder_1",

    deco_type = "schematic",

    place_on = {"everwild:grass"},

    y_min = 10,

    y_max = 50,

    sidelen = 16,

    fill_ratio = 0.001,

    visual_scale = 0.2,

    schematic = "bolder_1.mts",

    flags = "place_center_x,place_center_z",

    place_offset_y = -3,

    rotation = "random",

})

core.register_decoration({

    name = "everwild_little_bush",

    deco_type = "schematic",

    place_on = {"everwild:grass"},

    y_min = 0,

    y_max = 50,

    sidelen = 16,

    fill_ratio = 0.02,

    schematic = "little_bush.mts",

    flags = "place_center_x,place_center_z",

    rotation = "random",

})
