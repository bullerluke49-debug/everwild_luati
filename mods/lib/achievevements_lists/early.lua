
local node_achievement={}

node_achievement["Welcome_world"]={name="Welcome to the world",details="Hit A leaf, Find Some flint,\n click I to open the keyboard!",
parent=nil,section="MISC"}

node_achievement["everwild_items:flint"]= {name="Flint Finder",details="You Found Some flint, now make it staby",parent=nil,section="early"}
node_achievement["everwild_items:stick"]= {name="Sticks & Sticks",details="Flint and A Stick?",parent=nil,section="early"}
node_achievement["everwild_items:flint_dagger"]= {name="Slasher of Grasser",details="Grass",parent="Sticks & Sticks",section="early"}

node_achievement["everwild_items:ripped_grass_string"]= {name="Four is better than two",details="A rope is just many pices of string",
parent="Slasher of Grasser",section="early"}

node_achievement["everwild:rough_ripped_grass_rope"]= {name="Baics Tools Ahead!",details="Hanndle then Pick it or you can sive right though",
    parent=nil,section="early"}

--
return node_achievement