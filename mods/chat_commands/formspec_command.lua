
local lib_path = core.get_modpath("everwild_library")
dofile(lib_path.."/formspec.lua")

local screen=screen_element("test_formspec","test",100,100)

core.register_chatcommand("formspec_test", {
    
    func = function(name, params)
        screen_element_show(screen,name)
        return true,"screen shown"
    end

})