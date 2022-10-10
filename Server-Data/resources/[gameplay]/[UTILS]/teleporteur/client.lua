key_to_teleport = 38

positions = {
    --[[
    {{Teleport1 X, Teleport1 Y, Teleport1 Z, Teleport1 Heading}, {Teleport2 X, Teleport 2Y, Teleport 2Z, Teleport2 Heading}, {Red, Green, Blue}, "Text for Teleport"}
    ]]
    {{300.17, -585.44, 18.00, 86.44}, {301.73, -561.07, 43.78, 71.43},{17.0, 142.0, 219.0}, "~s~[~b~E~s~]"}, -- Hôpital pillbox = métro => acceuil
    {{330.11, -600.99, 43.28-0.99, 72.98}, {339.0006, -583.98, 74.1617-0.99, 74.16},{17.0, 142.0, 219.0}, "~s~[~b~E~s~]"}, -- Hôpital = Hall Entrée > Toit
    ------------------------------------------------------------------------------------------------------------------------------------------------------
    {{464.21, 3564.34, 33.67-0.99, 350.74}, {996.81, -3200.67, -36.39-0.99, 270.14},{17.0, 142.0, 219.0}, "~s~[~b~E~s~]"}, -- Illégal = Meth
    {{172.47, 2801.71, 45.66-0.99, 1.12}, {1088.64, -3187.57, -38.99-0.99, 177.98},{17.0, 142.0, 219.0}, "~s~[~b~E~s~]"}, -- Illégal = Cocaine
    {{780.55, 1296.82, 361.36-0.99, 265.68}, {1066.2, -3183.45, -39.16-0.99, 90.3},{17.0, 142.0, 219.0}, "~s~[~b~E~s~]"}, -- Illégal = Meth
	{{858.73, -3202.76, 4.99, 0}, {903.18, -3182.29, -98.05, 0},{0,0,0}, "~s~[~b~E~s~]"}, --Bunker Armes Blanches
    {{-1819.24, 3025.97, 40.34, 0}, {2155.38, 2920.97, -62.9, 87.05},{0,0,0}, "~s~[~b~E~s~]"}, --IAA
    {{-1011.17, -479.96, 38.97, 120.0}, {-1002.84, -477.92, 49.0, 87.05},{0,0,0}, "~s~[~b~E~s~]"}, --Salamon office
    {{-1078.4, -253.84, 43.04, 20.0}, {-1071.64, -245.92, 53.0, 331.05},{0,0,0}, "~s~[~b~E~s~]"}, --Life Invaders    
    {{310.31, -929.24, 28.47, 177.91}, {315.34, -929.29, 51.81, 180.4},{0,0,0}, "~s~[~b~E~s~]"}, --SkyBar  
    {{-256.25, -450.24, 23.73, 340.9}, {-1521.22, -2978.98, -81.42, 269.16},{0,0,0}, "~s~[~b~E~s~]"}, --Entrepot
	{{415.19, -216.12, 58.91, 182.76}, {415.67, -232.79, 73.25, 22.08},{0,0,0}, "~s~[~b~E~s~]"}, --Poolbar
	{{4981.90, -5709.79, 18.89, 200.76}, {4990.19, -5716.97, 18.89, 221.08},{0,0,0}, "~s~[~b~E~s~]"}, --cayo maison
	{{935.45, 46.55, 80.10, 31.93}, {964.12, 59.02, 111.55, 238.08},{0,0,0}, "~s~[~b~E~s~]"}, --Casinobar
	
    -- {{332.1192, -595.6154, 43.2840-0.99, 72.98}, {342.26, -585.35, 28.8-0.99, 66.06},{17.0, 142.0, 219.0}, ""}, -- Hôpital = Hall Entrée > Parking
    -- {{332.1192, -595.6154, 43.2840-0.99, 72.98}, {342.26, -585.35, 28.8-0.99, 66.06},{17.0, 142.0, 219.0}, ""}, -- Hôpital = Hall Entrée > Parking

}

-- Commande pour afficher les coordonnées via le F8, utilisable pour tout le monde mais aucun avantage.
RegisterCommand("position", function(source, args, rawcommand)
    local pos = GetEntityCoords(PlayerPedId())
    print(pos.x..", "..pos.y..", "..pos.z)
end, false)


-----------------------------------------------------------------------------
-------------------------DO NOT EDIT BELOW THIS LINE-------------------------
-----------------------------------------------------------------------------

local player = GetPlayerPed(-1)

Citizen.CreateThread(function ()
    while true do
        Citizen.Wait(5)
        local player = GetPlayerPed(-1)
        local playerLoc = GetEntityCoords(player)

        for _,location in ipairs(positions) do
            teleport_text = location[4]
            loc1 = {
                x=location[1][1],
                y=location[1][2],
                z=location[1][3],
                heading=location[1][4]
            }
            loc2 = {
                x=location[2][1],
                y=location[2][2],
                z=location[2][3],
                heading=location[2][4]
            }
            Red = location[3][1]
            Green = location[3][2]
            Blue = location[3][3]

            DrawMarker(-1, loc1.x, loc1.y, loc1.z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 17, 142, 219, 100, 0, 0, 0, 0)
            DrawMarker(-1, loc2.x, loc2.y, loc2.z, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 17, 142, 219, 100, 0, 0, 0, 0)

            if CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, loc1.x, loc1.y, loc1.z, 2) then 
                alert(teleport_text)
                
                if IsControlJustReleased(1, key_to_teleport) then
                    if IsPedInAnyVehicle(player, true) then
                        SetEntityCoords(GetVehiclePedIsUsing(player), loc2.x, loc2.y, loc2.z)
                        SetEntityHeading(GetVehiclePedIsUsing(player), loc2.heading)
                    else
                        SetEntityCoords(player, loc2.x, loc2.y, loc2.z)
                        SetEntityHeading(player, loc2.heading)
                    end
                end

            elseif CheckPos(playerLoc.x, playerLoc.y, playerLoc.z, loc2.x, loc2.y, loc2.z, 2) then
                alert(teleport_text)

                if IsControlJustReleased(1, key_to_teleport) then
                    if IsPedInAnyVehicle(player, true) then
                        SetEntityCoords(GetVehiclePedIsUsing(player), loc1.x, loc1.y, loc1.z)
                        SetEntityHeading(GetVehiclePedIsUsing(player), loc1.heading)
                    else
                        SetEntityCoords(player, loc1.x, loc1.y, loc1.z)
                        SetEntityHeading(player, loc1.heading)
                    end
                end
            end            
        end
    end
end)

function CheckPos(x, y, z, cx, cy, cz, radius)
    local t1 = x - cx
    local t12 = t1^2

    local t2 = y-cy
    local t21 = t2^2

    local t3 = z - cz
    local t31 = t3^2

    return (t12 + t21 + t31) <= radius^2
end

function alert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0,0,1,-1)
end