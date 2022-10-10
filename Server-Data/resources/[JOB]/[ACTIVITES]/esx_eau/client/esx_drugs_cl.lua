local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

local eauQTE       			= 0
ESX 			    			= nil
local myJob 					= nil
local HasAlreadyEnteredMarker   = false
local LastZone                  = nil
local isInZone                  = false
local CurrentAction             = nil
local CurrentActionMsg          = ''
local CurrentActionData         = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

AddEventHandler('esx_mike:hasEnteredMarker', function(zone)
	if myJob == 'police' then
		return
	end
	print(zone)
	ESX.UI.Menu.CloseAll()
	
	if zone == 'exitMarker' then
		CurrentAction     = zone
		CurrentActionMsg  = _U('exit_marker')
		CurrentActionData = {}	
	elseif zone == 'EauField' then
		CurrentAction     = zone
		CurrentActionMsg  = _U('press_collect_coke')
		CurrentActionData = {}
	
    elseif zone == 'EauDealer' then
	    if eauQTE >= 1 then
		  CurrentAction     = zone
		  CurrentActionMsg  = _U('press_sell_coke')
		  CurrentActionData = {}
		end
	end
end)

AddEventHandler('esx_mike:hasExitedMarker', function(zone)
	CurrentAction = nil
	ESX.UI.Menu.CloseAll()

	if zone == 'EauField' then
		TriggerServerEvent('esx_mike:stopHarvestEau1')
    elseif zone == 'EauDealer' then
		TriggerServerEvent('esx_mike:stopSellEau1')
    end	
end)

-- Render markers
Citizen.CreateThread(function()
	while true do

		Citizen.Wait(0)

		local coords = GetEntityCoords(GetPlayerPed(-1))

		for k,v in pairs(Config.Zones) do
			if(GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < Config.DrawDistance) then
				DrawMarker(Config.MarkerType, v.x, v.y, v.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.ZoneSize.x, Config.ZoneSize.y, Config.ZoneSize.z, 100, false, true, 2, false, false, false, false)
			end
		end

	end
end)

-- Create blip
Citizen.CreateThread(function()
    local blip = AddBlipForCoord(Config.Zones.Blip.Coords)

    SetBlipSprite(blip, Config.Zones.Blip.Sprite)
    SetBlipDisplay(blip, Config.Zones.Blip.Display)
    SetBlipScale(blip, Config.Zones.Blip.Scale)
    SetBlipColour(blip, Config.Zones.Blip.Color)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString(_U('map_blip'))
    EndTextCommandSetBlipName(blip)
end)

Citizen.CreateThread(function()
    local blip = AddBlipForCoord(Config.Zones.Blip2.Coords)

    SetBlipSprite(blip, Config.Zones.Blip2.Sprite)
    SetBlipDisplay(blip, Config.Zones.Blip2.Display)
    SetBlipScale(blip, Config.Zones.Blip2.Scale)
    SetBlipColour(blip, Config.Zones.Blip2.Color)
    SetBlipAsShortRange(blip, true)

    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString(_U('map_blip2'))
    EndTextCommandSetBlipName(blip)
end)




-- RETURN NUMBER OF ITEMS FROM SERVER
RegisterNetEvent('esx_mike:ReturnInventory')
AddEventHandler('esx_mike:ReturnInventory', function(invdata,currentzone)
	--print(invdata[1],invdata[2],invdata[3],invdata[4],invdata[5],invdata[6],invdata[7],invdata[8],invdata[9],invdata[10],invdata[11])
	
	eauQTE	   = invdata[1]
	myJob		 = invdata[2]
	TriggerEvent('esx_mike:hasEnteredMarker', currentzone)
end)

-- Activate menu when player is inside marker
Citizen.CreateThread(function()
	while true do

		Citizen.Wait(0)

		local coords      = GetEntityCoords(GetPlayerPed(-1))
		local isInMarker  = false
		local currentZone = nil

		for k,v in pairs(Config.Zones) do
			if(GetDistanceBetweenCoords(coords, v.x, v.y, v.z, true) < Config.ZoneSize.x / 2) then
				isInMarker  = true
				currentZone = k
			end
		end

		if isInMarker and not hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = true
			lastZone				= currentZone
			TriggerServerEvent('esx_mike:GetUserInventory', currentZone)
		end

		if not isInMarker and hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = false
			TriggerEvent('esx_mike:hasExitedMarker', lastZone)
		end

		if isInMarker and isInZone then
			TriggerEvent('esx_mike:hasEnteredMarker', 'exitMarker')
		end
	end
end)

-- Key Controls
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10)
		if CurrentAction ~= nil then
			SetTextComponentFormat('STRING')
			AddTextComponentString(CurrentActionMsg)
			DisplayHelpTextFromStringLabel(0, 0, 1, -1)
			if IsControlJustReleased(0, Keys['E']) then
				isInZone = true -- unless we set this boolean to false, we will always freeze the user
				if CurrentAction == 'exitMarker' then
					isInZone = false -- do not freeze user
					TriggerEvent('esx_mike:freezePlayer', false)
					TriggerEvent('esx_mike:hasExitedMarker', lastZone)
					Citizen.Wait(1000)
				elseif CurrentAction == 'EauField' then
					TriggerServerEvent('esx_mike:startHarvestEau1')
				elseif CurrentAction == 'EauDealer' then
					TriggerServerEvent('esx_mike:startSellEau1')
				else
					isInZone = false -- not a esx_mike zone
				end
				
				if isInZone then
					TriggerEvent('esx_mike:freezePlayer', true)
				end
				
				CurrentAction = nil
			end
		end
	end
end)

RegisterNetEvent('esx_mike:freezePlayer')
AddEventHandler('esx_mike:freezePlayer', function(freeze)
	FreezeEntityPosition(GetPlayerPed(-1), freeze)
end)

function DrawM(hint, type, x, y, z)
	ESX.Game.Utils.DrawText3D({x = x, y = y, z = z + 1.0}, hint, 0.4)
	DrawMarker(type, x, y, z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 1.5, 255, 255, 255, 100, false, true, 2, false, false, false, false)
end

---------------------------------
--------- ikNox#6088 ------------
---------------------------------