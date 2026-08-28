


--mts


core.register_chatcommand("mts", {
  
	description = "Create a new MTS",
    params = "<other> <x_one> <y_one> <z_one> <pos_two> <x_two> <y_two> <z_two> <name_MTS> <type> ",
	func = function(name, params)
		local args= string.split(params, " ")
        local modpath = core.get_worldpath()
        if args[1] == "str" and args[2]~= nil then

            if args[2] == "player" then
                return true, core.colorize("#ffff00", "This command is not yet available, please use the other command to create MTS")
            end
           
            local x_one,y_one,z_one = tonumber(args[2]),tonumber(args[3]),tonumber(args[4])
            local x_two,y_two,z_two = tonumber(args[5]),tonumber(args[6]),tonumber(args[7])
            local name_MTS = args[8]
            local type_of = args[9]

            if name_MTS == nil then
                return false, core.colorize("#ff0000", "Please provide a name for the MTS")
            end
            if type_of == nil then
                return false, core.colorize("#ff0000", "Please provide a type for the MTS")
            end
            local file_name = modpath .."/".. name_MTS .."_" .. type_of..".mts"

            core.create_schematic({x=x_one,y=y_one,z=z_one}, {x=x_two,y=y_two,z=z_two}, nil, file_name,nil)
            
            

            
            
            return true, core.colorize("#ffff00", "Successfully created MTS: " ..  x_one .. " " .. y_one .. " " .. z_one .. " to " .. x_two .. " " .. y_two .. " " .. z_two .. " with name: ".. name_MTS .." and type: ".. type_of)
            
        elseif args[1] == "help" then
            return true, core.colorize("#ffff00", "Usage: Other: \n str to create MTS \n help \n \n Full MTS: \n <x_one> <y_one> <z_one> <x_two> <y_two> <z_two> name_MTS <name_MTS> type <type>")
        else 
            return false,core.colorize("#ff0000", "if you need help type /mts help 2")
        end 
    end
})