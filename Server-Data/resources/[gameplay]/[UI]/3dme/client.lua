
local defaultScale = 0.5 -- Text scale
local color = { r = 230, g = 230, b = 230, a = 255 } -- Text color
local font = 0 -- Text font
local displayTime = 5000 -- Duration to display the text (in ms)
local distToDraw = 250 -- Min. distance to draw 

-- --------------------------------------------
-- Variable
-- --------------------------------------------

local pedDisplaying = {}

-- ############################################
-- --------------------------------------------
-- 3dme : /me command but its 3D printed
-- Author : Elio
-- Client side
-- --------------------------------------------
-- ############################################

-- --------------------------------------------
-- Settings
-- --------------------------------------------

local defaultScale = 0.5 -- Text scale
local colordefault = { r = 230, g = 230, b = 230, a = 255 } -- Text color
local font = 0 -- Text font
local displayTime = 5000 -- Duration to display the text (in ms)
local distToDraw = 250 -- Min. distance to draw 

-- --------------------------------------------
-- Variable
-- --------------------------------------------

local pedDisplaying = {}

-- --------------------------------------------
-- Functions
-- --------------------------------------------

-- OBJ : draw text in 3d
-- PARAMETERS :
--      - coords : world coordinates to where you want to draw the text
--      - text : the text to display
local function DrawText3D(coords, text, colorResult)
    local camCoords = GetGameplayCamCoord()
    local dist = #(coords - camCoords)
    
    -- Experimental math to scale the text down
    local scale = 200 / (GetGameplayCamFov() * dist)

    --if onScreen then
		-- print(colorResult.r, colorResult.g, colorResult.b, colorResult.alpha)
        -- Format the text
        SetTextColour(colorResult.r, colorResult.g, colorResult.b, colorResult.alpha)
        SetTextScale(0.0, defaultScale * scale)
        SetTextDropshadow(0, 0, 0, 0, 55)
        SetTextDropShadow()
        SetTextCentre(true)

        -- Diplay the text
        BeginTextCommandDisplayText("STRING")
        AddTextComponentSubstringPlayerName(text)
        SetDrawOrigin(coords, 0)
        EndTextCommandDisplayText(0.0, 0.0)
        ClearDrawOrigin()

    --end
end

-- OBJ : handle the drawing of text above a ped head
-- PARAMETERS :
--      - coords : world coordinates to where you want to draw the text
--      - text : the text to display
local function Display(ped, text,cmd)

    local playerPed = PlayerPedId()
    local playerCoords = GetEntityCoords(playerPed)
    local pedCoords = GetEntityCoords(ped)
    local dist = #(playerCoords - pedCoords)
	
				if cmd == "me" then
                    colorResult = { r = 255, g = 255, b = 255, alpha = 255 }
                elseif cmd == "do" then
                    colorResult = { r = 111, g = 0, b = 163, alpha = 255 }
                elseif cmd == "it" then
                    colorResult = { r = 102, g = 0, b = 51, alpha = 255 }
                elseif tonumber(cmd) ~= nil then
                    local x = tonumber(cmd)
                    local red = (255 + 1.47 * x) - (0.0402 * x ^ 2)
                    local green = (4.77 * x) - (0.0222 * x ^ 2)
                    green = math.ceil(green)
                    if red > 255 then 
                        red = 255 
                    else
                        red = math.ceil(red)
                    end 
                    colorResult = { r = red, g = green, b = 0, alpha = 255 }           
                end
	
    if dist <= distToDraw then

        pedDisplaying[ped] = (pedDisplaying[ped] or 1) + 1

        -- Timer
        local display = true

        Citizen.CreateThread(function()
            Wait(displayTime)
            display = false
        end)

        -- Display
        local offset = 0.8 + pedDisplaying[ped] * 0.1
        while display do
            if HasEntityClearLosToEntity(playerPed, ped, 17 ) then
                local x, y, z = table.unpack(GetEntityCoords(ped))
                z = z + offset
                DrawText3D(vector3(x, y, z), text, colorResult)
            end
            Wait(0)
        end

        pedDisplaying[ped] = pedDisplaying[ped] - 1

    end
end

-- --------------------------------------------
-- Event
-- --------------------------------------------

RegisterNetEvent('3dme:shareDisplay')
AddEventHandler('3dme:shareDisplay', function(text, serverId,cmd)
    local player = GetPlayerFromServerId(serverId)
    if player ~= -1 then
        local ped = GetPlayerPed(player)
        Display(ped, text,cmd)
    end
end)
