
ESX = nil
local PlayerData = {}
local menuOpen = false

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

-- COULEUR & BLIPS --

Citizen.CreateThread(function()

	for _,k in pairs(locations) do ------------------------ BLIPS
		createBlip(k.coordsIn.x, k.coordsIn.y, k.coordsIn.z, 280, 3, "Location de véhicules", 81) 
	end


	while true do 
		Citizen.Wait(1)

		for _,k in pairs(locations) do
			local pedCoords = GetEntityCoords(PlayerPedId())

			if(GetDistanceBetweenCoords(pedCoords, k.coordsIn.x, k.coordsIn.y, k.coordsIn.z, true) < 20)then
				DrawMarker(27,k.coordsIn.x,k.coordsIn.y, k.coordsIn.z-0.97,0,0,0,0,0,0,1.501,1.5001,0.5001,0,155,255,200,0,0,0,0)
			end
			if(GetDistanceBetweenCoords(pedCoords, k.coordsIn.x, k.coordsIn.y, k.coordsIn.z, true) < 2)then
				showInfo("Appuyez sur ~INPUT_CONTEXT~ pour louer un véhicule")
				if(IsControlJustPressed(1, 38)) then
					showMenu(k)
					menuOpen = true
				end
			end
		end
	end
end)

-------------------- FIN DES PNJS -------------------- 


--[[
ped = CreatePed("PED_TYPE_CIVMALE", "s_m_m_gentransport", -1021.39, -2737.51, 12.76, 331.271, true, true) -- Aéroport
ped = CreatePed("PED_TYPE_CIVMALE", "s_m_m_gentransport", -2030.10, -465.6, 10.6, 56.57, true, true) -- Spawn SinCity Life
ped = CreatePed("PED_TYPE_CIVMALE", "s_m_m_gentransport", 171.95, 6632.87, 30.68, 226.569, true, true) -- Paleto
ped = CreatePed("PED_TYPE_CIVMALE", "s_m_m_gentransport", -281.27, -888.86, 30.32, 336.333, true, true) -- Pôle Emploi
ped = CreatePed("PED_TYPE_CIVMALE", "s_m_m_gentransport", 1687.79, 3608.2, 34.37, 245.260, true, true) -- Sandy Shores
]]



function showMenu(k)

	local elements = {
		{label = 'Kalahari', value = 'Kalahari', price = 75},
		{label = 'Faggio', value = 'Faggio', price = 50}
		--{label = '', value = '', price = 0},
		--{label = '', value = '', price = 0}
	}

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'vehicle_menu',
		{
			title = 'Location de véhicules',
			elements = elements
		},
		function(data, menu)
			for i=2, #elements, 2 do
				ESX.Game.SpawnVehicle(data.current.value, k.coordsOut[1], k.coordsOut[2], function(vehicle)
					TaskWarpPedIntoVehicle(GetPlayerPed(-1), vehicle, -1) -- Si cette ligne est activer, le joueur va directement spawn dans le véhicule
					SetVehicleNumberPlateText(vehicle, GetRandomLetter(Config.PlateLetters) .. ' ' .. GetRandomNumber(Config.PlateNumbers)) -- Plaque de la Voitre
					SetVehicleColours(vehicle, 31, 31) -- Couleur du véhicule "Rouge" | Pour voir les couleurs : https://imgur.com/a/F4Ptk
				end)
				TriggerServerEvent('esx_location:buy', data.current.price)
				--print(data.current.price)
			end
			menu.close()
		end,
		function(data, menu)
			menu.close()
		end
	)
end














function showInfo(text)
	SetTextComponentFormat("STRING")
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, false, 1, 0)
end

function createBlip(x,y,z,id, onlyShortRange, name,color)
	local blip = AddBlipForCoord(x,y,z)
	SetBlipSprite(blip, id)
	SetBlipScale(blip, 0.73)
	SetBlipAsShortRange(blip, onlyShortRange)
	BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(name)
    EndTextCommandSetBlipName(blip)
    SetBlipColour(blip, color)
    return blip
end
