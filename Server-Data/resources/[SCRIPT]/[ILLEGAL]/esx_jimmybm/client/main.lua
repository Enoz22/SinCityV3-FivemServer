ESX              = nil
local PlayerData = {}
isindeal = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer   
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

Citizen.CreateThread(function()
	while true do
		local sleep = 500
		local playercoords = GetEntityCoords(GetPlayerPed(-1))

		for i, v in pairs(Config.Location) do
		   if GetDistanceBetweenCoords(playercoords.x, playercoords.y, playercoords.z, Config.Location["coords"].x, Config.Location["coords"].y, Config.Location["coords"].z) <= 1.0 and isindeal == false then
		   sleep = 5
		   DrawMarker(Config.Location["type"], Config.Location["coords"].x, Config.Location["coords"].y, Config.Location["coords"].z, 0.0, 0.0, 360.0, 0.0, 0.0, 0.0, Config.Location["size"], 50, 150, 50, 100)
		   -- ESX.Game.Utils.DrawText3D(Config.Location["coordst"], Config.Location["text"], Config.Location["textscale"])
		   if IsControlJustReleased(0, Config.Location["key"]) then
			SetEntityHeading(GetPlayerPed(-1), Config.Location["coords"].heading)
			SetEntityCoords(GetPlayerPed(-1), Config.Location["coords"].x, Config.Location["coords"].y, Config.Location["coords"].z)
			FreezeEntityPosition(GetPlayerPed(-1), true)
			Wait(1000)
			RequestAnimDict("timetable@jimmy@doorknock@")
             while not HasAnimDictLoaded( "timetable@jimmy@doorknock@") do
                 Citizen.Wait(0)
             end
			 TaskPlayAnim(GetPlayerPed(-1), "timetable@jimmy@doorknock@" ,"knockdoor_idle" ,8.0, -8.0, -1, 0, 0, false, false, false )
			 Wait(3000)
			 FreezeEntityPosition(GetPlayerPed(-1), false)
			 --TaskGoStraightToCoord(GetPlayerPed(-1), Config.Location["gocoords"].x, Config.Location["gocoords"].y, Config.Location["gocoords"].z, 1.0, 500)
			 Wait(2000)
			 DoScreenFadeOut(600)
			 Wait(700)
			 RequestModel(-1835459726)
			 while not HasModelLoaded(-1835459726) do
				 Wait(0)
			 end
			 ped = CreatePed(4, -1835459726, Config.Location["coordst"], 12.31, false, true)
			 Wait(3000)
			 DoScreenFadeIn(600)
			 SetEntityCoords(GetPlayerPed(-1), Config.Location["gocoords"]["x"], Config.Location["gocoords"]["y"], Config.Location["gocoords"]["z"] - 1)
			 FreezeEntityPosition(GetPlayerPed(-1), true)
			 SetEntityHeading(GetPlayerPed(-1), Config.Location["gocoords"]["heading"])
			 isindeal = true
			 opendrugmenu()
		   end
		   end
		end
		if isindeal == true then
			sleep = 5
		if IsControlJustReleased(0, 73) then
			ESX.ShowAdvancedNotification("Jimmy", "Information", "Rappelle-moi si tu veux d'autres merdes!", "CHAR_WADE", 9) 
			isindeal = false
			FreezeEntityPosition(GetPlayerPed(-1), false)
			DeletePed(ped)
		end
	    end
	Citizen.Wait(sleep)
	end
end)


Citizen.CreateThread(function()
	while true do
	Wait(0)
		if Config.MarkerActif then
			local playerPed = GetPlayerPed(-1)
			local coords    = GetEntityCoords(playerPed)
		
			if GetDistanceBetweenCoords(coords,  Config.Location["gocoords"]["x"],  Config.Location["gocoords"]["y"],  Config.Location["gocoords"]["z"],  true) < Config.DrawDistance then
				DrawMarker(Config.MarkerType, Config.Location["gocoords"]["x"], Config.Location["gocoords"]["y"], Config.Location["gocoords"]["z"], 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, false, false, false, false)
			end
		end
	end
end)

opendrugmenu = function()
	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'drugs',
		{
            title  = 'Jimmy The Plug',
            align = 'center',
			elements = {
				{label = "Silencieux $1 000", type = "slider", value = 1, min = 1, max = 1, price = 1000, item = "silencieux"},
				{label = "Lampe $500", type = "slider", value = 1, min = 1, max = 1, price = 500, item = "flashlight"},
				{label = "Chargeur $1 500", type = "slider", value = 1, min = 1, max = 10, price = 1500, item = "clip"},
				{label = "Poignée $500", type = "slider", value = 1, min = 1, max = 1, price = 500, item = "grip"},
				{label = "Acetone $850", type = "slider", value = 1, min = 1, max = 5, price = 850, item = "acetone"},
				{label = "LockPick $4000", type = "slider", value = 1, min = 1, max = 1, price = 4000, item = "lockpick"}
            }
		},
		function(data, menu)
			local name = data.current.item
			local amount = data.current.value
			local money = data.current.value * data.current.price

			TriggerServerEvent('esx_drugseller:buy', name, amount, money)
        end,
        function(data, menu)
			menu.close()
			ESX.ShowAdvancedNotification("Jimmy", "Information", "Va y casse toi, et reviens pas surtout !", "CHAR_WADE", 9) 
			isindeal = false
			FreezeEntityPosition(GetPlayerPed(-1), false)
			DeletePed(ped)
        end
	)
end

function CreateBlipCircle(coords, text, radius, color, sprite)
	local blip = AddBlipForRadius(coords, radius)

	SetBlipHighDetail(blip, true)
	SetBlipColour(blip, 1)
	SetBlipAlpha (blip, 128)

	-- create a blip in the middle
	blip = AddBlipForCoord(coords)

	SetBlipHighDetail(blip, true)
	SetBlipSprite (blip, sprite)
	SetBlipScale  (blip, 1.0)
	SetBlipColour (blip, color)
	SetBlipDisplay(blip, 4)
	SetBlipAsShortRange(blip, true)

	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(text)
	EndTextCommandSetBlipName(blip)
end

Citizen.CreateThread(function()
	if Config.CircleZonesVisibility then
		CreateBlipCircle(Config.Location.coordst, Config.Location.name, Config.Location.radius, Config.Location.color, Config.Location.sprite)
	end
end)