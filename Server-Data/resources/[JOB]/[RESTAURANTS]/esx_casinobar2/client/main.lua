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

local PlayerData                = {}
local GUI                       = {}
local HasAlreadyEnteredMarker   = false
local LastZone                  = nil
local CurrentAction             = nil
local CurrentActionMsg          = ''
local CurrentActionData         = {}
local JobBlips                  = {}
local publicBlip = false
ESX                             = nil
GUI.Time                        = 0

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
	PlayerData = ESX.PlayerData
	blips()
end)

function TeleportFadeEffect(entity, coords)

	Citizen.CreateThread(function()

		DoScreenFadeOut(800)

		while not IsScreenFadedOut() do
			Citizen.Wait(0)
		end

		ESX.Game.Teleport(entity, coords, function()
			DoScreenFadeIn(800)
		end)

	end)
end

function OpenCloakRoomMenu()
	local playerPed = GetPlayerPed(-1)
	local listTenues = {}
	table.insert(listTenues, {label = 'Civil', value = 'citizen_wear'})
	for k,v in pairs(Config.Uniforms) do
		table.insert(listTenues, {label = v.label, value = k})
	end
	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'cloakroom',
		{css='vestiaire',
			title    = 'Changement',
			align    = 'top-left',
			elements = listTenues,
		},
		function(data, menu)
			if data.current.value == 'citizen_wear' then
				ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
					TriggerEvent('skinchanger:loadSkin', skin)
				end)
			else
				for k,v in pairs(Config.Uniforms) do
					if k == data.current.value then
						local clothesSkin = v.male
						TriggerEvent('skinchanger:getSkin', function(skin)
							TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
						end)
					end
				end
			end
		end)
end

--function OpenActionsMenu()
--	local elements = {}	
--	if Config.EnablePlayerManagement and PlayerData.job ~= nil and PlayerData.job.name == Config.NameJob and PlayerData.job.grade_name == 'boss' then
--		TriggerEvent('esx_society:openBossMenu', Config.NameJob, function(data, menu)
--			menu.close()
--		end, { billingnpc = true })
--	end
--end

function OpenMobileActionsMenu()

	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'mobile_actions',
		{
			title    = Config.NameJob,
			align    = 'top-left',
			elements = {
				{label = 'Facture', value = 'billing'},	
			}
		},
		function(data, menu)

			if data.current.value == 'billing' then

				ESX.UI.Menu.Open(
					'dialog', GetCurrentResourceName(), 'billing',
					{
						title = 'Facture',
					},
					function(data, menu)
						local test = data.value
						local amount = tonumber(data.value)

						if amount == nil or amount <= 0 then
							ESX.ShowNotification('Montant invalide')
						else
							menu.close()
							local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()
							if closestPlayer == -1 or closestDistance > 3.0 then
								ESX.ShowNotification('Personne n\'est assez proche')
							else
								local playerPed = GetPlayerPed(-1)
								Citizen.CreateThread(function()
									TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TIME_OF_DEATH', 0, true)
									Citizen.Wait(5000)
									ClearPedTasks(playerPed)
									TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), Config.NameEntreprise, Config.NameJob, amount)
								end)
							end
						end
					end,
					function(data, menu)
						menu.close()
					end
				)
			end 
		end,
		function(data, menu)
			menu.close()
		end
		)
end

function OpenStockMenu()
	local elements = {
		{label = 'Déposer Stock', value = 'put_stock'},
		{label = 'Prendre Stock', value = 'get_stock'}
	}

	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'actions',
		{
			title    = Config.NameBlip,
			align    = 'top-left',
			elements = elements
		},
		
		function(data, menu)
			if data.current.value == 'put_stock' then
				OpenPutStocksMenu()
			end
			if data.current.value == 'get_stock' then
				OpenGetStocksMenu()
			end
		end,
		function(data, menu)
			menu.close()
			CurrentAction     = 'stock_menu'
			CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au menu'
			CurrentActionData = {}

		end
		)
end

function OpenGetStocksMenu()
	ESX.TriggerServerCallback('esx_casinobar:getStockItems', function(items)
		local elements = {}
		for i=1, #items, 1 do
			if (items[i].count ~= 0) then
				table.insert(elements, {label = 'x' .. items[i].count .. ' ' .. items[i].label, value = items[i].name})
			end
		end

		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'stocks_menu',
			{
				title    = Config.NameStock,
				align    = 'top-left',
				elements = elements
			},
			function(data, menu)

				local itemName = data.current.value

				ESX.UI.Menu.Open(
					'dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count',
					{
						title = 'Quantité'
					},
					function(data2, menu2)

						local count = tonumber(data2.value)

						if count == nil or count <= 0 then
							ESX.ShowNotification('~r~Quantité invalide~w~')
						else
							menu2.close()
							menu.close()
							OpenGetStocksMenu()

							TriggerServerEvent('esx_casinobar:getStockItem', itemName, count)
						end

					end,
					function(data2, menu2)
						menu2.close()
					end
					)

			end,
			function(data, menu)
				menu.close()
			end
			)
	end)
end

function OpenPutStocksMenu()

	ESX.TriggerServerCallback('esx_casinobar:getPlayerInventory', function(inventory)

		local elements = {}

		for i=1, #inventory.items, 1 do

			local item = inventory.items[i]

			if item.count > 0 then
				table.insert(elements, {label = item.label .. ' x' .. item.count, type = 'item_standard', value = item.name})
			end

		end

		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'stocks_menu',
			{
				title    = 'Inventaire',
				elements = elements
			},
			function(data, menu)

				local itemName = data.current.value

				ESX.UI.Menu.Open(
					'dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count',
					{
						title = 'Quantité'
					},
					function(data2, menu2)

						local count = tonumber(data2.value)

						if count == nil or count <= 0 then
							ESX.ShowNotification('Quantité invalide')
						else
							menu2.close()
							menu.close()
							OpenPutStocksMenu()

							TriggerServerEvent('esx_casinobar:putStockItems', itemName, count)
						end

					end,
					function(data2, menu2)
						menu2.close()
					end
					)

			end,
			function(data, menu)
				menu.close()
			end
			)

	end)

end

function OpenVehicleSpawnerMenu()
	local playerCoords = GetEntityCoords(PlayerPedId())
	PlayerData = ESX.GetPlayerData()
	local elements = {
		{label = 'Ouvrir le garage', action = 'garage'},
		{label = 'Ranger le véhicule', action = 'store_garage'}
	}
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle', {
		title    = 'Garage',
		align    = 'top-left',
		elements = elements
	}, function(data, menu)
	if data.current.action == 'garage' then
		local garage = {}
		for k,v in ipairs(Config.AuthorizedVehicles.Shared) do
			table.insert(garage, {
				label  = v.label,
				model = v.model,
				type  = 'car'
			})
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_garage', {
			title    = 'Garage',
			align    = 'top-left',
			elements = garage
		}, function(data2, menu2)
		menu2.close()
		local SpecificPlate = Config.Plate.." "..math.random(10,99)
		ESX.Game.SpawnVehicle(data2.current.model, Config.Zones.Vehicles[1].SpawnPoint, Config.Zones.Vehicles[1].Heading, function(vehicle)
			ESX.Game.SetVehicleProperties(vehicle, Config.Plate)
			SetVehicleFixed(vehicle)
			SetVehicleNumberPlateText(vehicle, SpecificPlate)
			SetVehicleUndriveable(vehicle, false)
			SetVehicleEngineOn(vehicle, true, true)
			local plate = GetVehicleNumberPlateText(vehicle)
			TriggerServerEvent('esx_vehiclelock:givekey', 'no', plate) -- vehicle lock
			ESX.ShowNotification('Votre ~b~véhicule~s~ a été ~g~sorti~s~')
		end)
	end, function(data2, menu2)
	menu2.close()
end)
	elseif data.current.action == 'store_garage' then
		local vehicles, vehiclePlates = ESX.Game.GetVehiclesInArea(playerCoords, 30.0), {}
		if #vehicles > 0 then
			for k,v in ipairs(vehicles) do
				if GetVehicleNumberOfPassengers(v) == 0 and IsVehicleSeatFree(v, -1) then
					local plate = GetVehicleNumberPlateText(v)
						ESX.Game.DeleteVehicle(v)
				end
			end
		else
			ESX.ShowNotification('Aucun ~b~véhicule~s~ a proximité.')
			return
		end
	end
end, function(data, menu)
menu.close()
end)
end

function OpenShopMenu(elements, restoreCoords, shopCoords)
	local playerPed = PlayerPedId()
	isInShopMenu = true

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_shop', {
		title    = 'Magasin privé',
		align    = 'top-left',
		elements = elements
	}, function(data, menu)
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_shop_confirm', {
		title    = 'Voulez-vous acheter ce véhicule ?', data.current.name, data.current.price,
		align    = 'top-left',
		elements = {
			{label = 'Non', value = 'no'},
			{label = 'Oui', value = 'yes'}
		}}, function(data2, menu2)
		if data2.current.value == 'yes' then
			local newPlate = exports['esx_vehicleshop']:GeneratePlate()
			local vehicle  = GetVehiclePedIsIn(playerPed, false)
			local props    = ESX.Game.GetVehicleProperties(GetHashKey(data.current.model))
			props.plate    = newPlate
			props.model    = GetHashKey(data.current.model)

			ESX.TriggerServerCallback('esx_vehicleshop:buyJobVehicle', function (bought)
				if bought then
					ESX.ShowNotification('Vous avez acheté ~y~'..data.current.name..'~s~ pour ~r~$'..ESX.Math.GroupDigits(data.current.price)..'~s~')

					isInShopMenu = false
					ESX.UI.Menu.CloseAll()
					TriggerServerEvent('esx_society:giveMoney', 'cardealer', data.current.price)
				else
					ESX.ShowNotification('Vous ne pouvez pas acheter ce ~b~véhicule~s~.')
					menu2.close()
				end
			end, props, "car", data.current.price)
		else
			menu2.close()
		end
	end, function(data2, menu2)
	menu2.close()
end)
end, function(data, menu)
isInShopMenu = false
ESX.UI.Menu.CloseAll()
end, function(data, menu)
end)
end

function StoreNearbyVehicle(playerCoords)
	local vehicles, vehiclePlates = ESX.Game.GetVehiclesInArea(playerCoords, 30.0), {}

	if #vehicles > 0 then
		for k,v in ipairs(vehicles) do
			-- Make sure the vehicle we're saving is empty, or else it wont be deleted
			if GetVehicleNumberOfPassengers(v) == 0 and IsVehicleSeatFree(v, -1) then
				table.insert(vehiclePlates, {
					vehicle = v,
					plate = ESX.Math.Trim(GetVehicleNumberPlateText(v))
				})
			end
		end
	else
		ESX.ShowNotification('Aucun ~b~véhicule~s~ a proximité.')
		return
	end

	ESX.TriggerServerCallback('esx_vehicleshop:storeNearbyVehicle', function(storeSuccess, foundNum)
		if storeSuccess then
			local vehicleId = vehiclePlates[foundNum]
			local attempts = 0
			ESX.Game.DeleteVehicle(vehicleId.vehicle)
			IsBusy = true

			Citizen.CreateThread(function()
				BeginTextCommandBusyString('STRING')
				AddTextComponentSubstringPlayerName('Tentative de suppression du ~b~véhicule~s~, assurez-vous que personne ne soit autour.')
				EndTextCommandBusyString(4)

				while IsBusy do
					Citizen.Wait(100)
				end

				RemoveLoadingPrompt()
			end)

			-- Workaround for vehicle not deleting when other players are near it.
			while DoesEntityExist(vehicleId.vehicle) do
				Citizen.Wait(500)
				attempts = attempts + 1

				-- Give up
				if attempts > 30 then
					break
				end

				vehicles = ESX.Game.GetVehiclesInArea(playerCoords, 30.0)
				if #vehicles > 0 then
					for k,v in ipairs(vehicles) do
						if ESX.Math.Trim(GetVehicleNumberPlateText(v)) == vehicleId.plate then
							ESX.Game.DeleteVehicle(v)
							break
						end
					end
				end
			end

			IsBusy = false
			ESX.ShowNotification('Le ~b~véhicule~s~ a été rangé dans le garage.')
		else
			ESX.ShowNotification('Aucun ~b~véhicule~s~ dans le garage.')
		end
	end, vehiclePlates)
end


RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
	blips()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
	blips()
end)

AddEventHandler('esx_casinobar:hasEnteredMarker', function(zone)
	if zone == 'Recolte' and PlayerData.job ~= nil and PlayerData.job.name == Config.NameJob  then
		CurrentAction     = 'harvest'
		CurrentActionMsg  = Config.Zones.Recolte.Message
		CurrentActionData = {zone= zone}
	end
	if zone == 'Traitement' and PlayerData.job ~= nil and PlayerData.job.name == Config.NameJob  then
		CurrentAction     = 'traitement'
		CurrentActionMsg  = Config.Zones.Traitement.Message
		CurrentActionData = {zone= zone}
	end	
	if zone == 'Vente' and PlayerData.job ~= nil and PlayerData.job.name == Config.NameJob  then
		CurrentAction     = 'sell'
		CurrentActionMsg  = Config.Zones.Vente.Message
		CurrentActionData = {zone = zone}
	end	
	if zone == 'ActionsMenu' and PlayerData.job ~= nil and PlayerData.job.name == Config.NameJob then
		CurrentAction     = 'actions_menu'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au menu'
		CurrentActionData = {}
	end
	if zone == 'CloakRoom' and PlayerData.job ~= nil and PlayerData.job.name == Config.NameJob  then
		CurrentAction     = 'cloakroom_menu'
		CurrentActionMsg  = "Appuyez sur ~INPUT_PICKUP~ pour vous changer"
		CurrentActionData = {zone= zone}
	end
	if zone == "StockMenu" and PlayerData.job ~= nil and PlayerData.job.name == Config.NameJob then 
		CurrentAction     = 'stock_menu'
		CurrentActionMsg  = 'appuyez sur ~INPUT_CONTEXT~ pour accéder au menu'
		CurrentActionData = {}
	end
	if zone == 'VehicleSpawner' and PlayerData.job ~= nil and PlayerData.job.name == Config.NameJob then
		CurrentAction     = 'vehicle_spawner_menu'
		CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le garage'
		CurrentActionData = {}
	end
end)

AddEventHandler('esx_casinobar:hasExitedMarker', function(zone)
	ESX.UI.Menu.CloseAll()
	if (zone == 'Recolte') and PlayerData.job ~= nil and PlayerData.job.name == Config.NameJob then
		TriggerServerEvent('esx_casinobar:stopHarvest')
	end  
	if (zone == 'Traitement') and PlayerData.job ~= nil and PlayerData.job.name == Config.NameJob then
		TriggerServerEvent('esx_casinobar:stopTransform')
	end
	if (zone == 'Vente') and PlayerData.job ~= nil and PlayerData.job.name == Config.NameJob then
		TriggerServerEvent('esx_casinobar:stopSell')
	end
	CurrentAction = nil
end)

-- Create Blips
function blips()
	if publicBlip == false then
--		local blip = AddBlipForCoord(Config.Zones.ActionsMenu.Pos.x, Config.Zones.ActionsMenu.Pos.y, Config.Zones.ActionsMenu.Pos.z)
		SetBlipSprite (blip, Config.BlipSprite)
		SetBlipDisplay(blip, 4)
		SetBlipScale  (blip, 0.8)
		SetBlipColour (blip, 60)
		SetBlipAsShortRange(blip, true)

		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(Config.NameBlip)
		EndTextCommandSetBlipName(blip)
		publicBlip = true
	end

	if PlayerData.job ~= nil and PlayerData.job.name == Config.NameJob then

		local blipRecolte = AddBlipForCoord(Config.Zones.Recolte.Pos.x, Config.Zones.Recolte.Pos.y, Config.Zones.Recolte.Pos.z)
		SetBlipSprite(blipRecolte, 478)
		SetBlipDisplay(blipRecolte, 4)
		SetBlipScale(blipRecolte, 0.8)
		SetBlipColour(blipRecolte, 60)
		SetBlipAsShortRange(blipRecolte, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("Recolte")
		EndTextCommandSetBlipName(blipRecolte)
		table.insert(JobBlips, blipRecolte)

		local blipTraitement = AddBlipForCoord(Config.Zones.Traitement.Pos.x, Config.Zones.Traitement.Pos.y, Config.Zones.Traitement.Pos.z)
		SetBlipSprite(blipTraitement, 478)
		SetBlipDisplay(blipTraitement, 4)
		SetBlipScale(blipTraitement, 0.8)
		SetBlipColour(blipTraitement, 60)
		SetBlipAsShortRange(blipTraitement, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("Traitement")
		EndTextCommandSetBlipName(blipTraitement)
		table.insert(JobBlips, blipTraitement)

		local blipVente = AddBlipForCoord(Config.Zones.Vente.Pos.x, Config.Zones.Vente.Pos.y, Config.Zones.Vente.Pos.z)
		SetBlipSprite(blipVente, 478)
		SetBlipDisplay(blipVente, 4)
		SetBlipScale(blipVente, 0.8)
		SetBlipColour(blipVente, 60)
		SetBlipAsShortRange(blipVente, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString("Vente")
		EndTextCommandSetBlipName(blipVente)
		table.insert(JobBlips, blipVente)
	end
end

-- Display markers
Citizen.CreateThread(function()
	while true do
		Wait(0)
		local coords = GetEntityCoords(GetPlayerPed(-1))

		for k,v in pairs(Config.Zones) do
			if PlayerData.job ~= nil and PlayerData.job.name == Config.NameJob then
				if (k ~= "ActionsMenu") or (k == "ActionsMenu" and PlayerData.job.grade_name == "boss") then
					if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < Config.DrawDistance) then
						DrawMarker(v.Type, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, false, true, 2, true, false, false, false)
					end
				end
				if k == "Vehicles" then
					if GetDistanceBetweenCoords(coords,  v[1].Spawner.x,  v[1].Spawner.y,  v[1].Spawner.z,  true) < Config.DrawDistance then
						DrawMarker(36, v[1].Spawner.x, v[1].Spawner.y, v[1].Spawner.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 100, false, true, 2, true, false, false, false)
					end
				end
			end
		end
	end
end)


-- Enter / Exit marker events
Citizen.CreateThread(function()
	while true do

		Citizen.Wait(1)
		if PlayerData.job ~= nil and PlayerData.job.name == Config.NameJob then
			local coords      = GetEntityCoords(GetPlayerPed(-1))
			local isInMarker  = false
			local currentZone = nil

			for k,v in pairs(Config.Zones) do
				if v.Type ~= -1 and (GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x) then
					isInMarker  = true
					currentZone = k
				end
				if k == "Vehicles" then
					if GetDistanceBetweenCoords(coords,  v[1].Spawner.x,  v[1].Spawner.y,  v[1].Spawner.z,  true) < Config.MarkerSize.x then
						isInMarker     = true
						currentZone    = 'VehicleSpawner'
					end
				end
			end

			if (isInMarker and not HasAlreadyEnteredMarker) or (isInMarker and LastZone ~= currentZone) then
				HasAlreadyEnteredMarker = true
				LastZone                = currentZone
				TriggerEvent('esx_casinobar:hasEnteredMarker', currentZone)
			end

			if not isInMarker and HasAlreadyEnteredMarker then
				HasAlreadyEnteredMarker = false
				TriggerEvent('esx_casinobar:hasExitedMarker', LastZone)
			end
		end
	end
end)

-- Key Controls
Citizen.CreateThread(function()
	while true do

		Citizen.Wait(0)

		if CurrentAction ~= nil then

			SetTextComponentFormat('STRING')
			AddTextComponentString(CurrentActionMsg)
			DisplayHelpTextFromStringLabel(0, 0, 1, -1)

			if IsControlPressed(0,  Keys['E']) and PlayerData.job ~= nil and PlayerData.job.name == Config.NameJob and (GetGameTimer() - GUI.Time) > 300 then
				if CurrentAction == 'harvest' then
					TriggerServerEvent('esx_casinobar:startHarvest', CurrentActionData.zone)
				end
				if CurrentAction == 'traitement' then
					TriggerServerEvent('esx_casinobar:startTransform', CurrentActionData.zone)
				end
				if CurrentAction == 'actions_menu' then
					OpenActionsMenu()
				end
				if CurrentAction == 'stock_menu' then
					OpenStockMenu()
				end
				if CurrentAction == 'stock_menu_2' then
					OpenStockMenu()
				end
				if CurrentAction == 'cloakroom_menu' then
					OpenCloakRoomMenu()
				end
				if CurrentAction == 'sell' then
					TriggerServerEvent('esx_casinobar:startSell', CurrentActionData.zone)
				end
				if CurrentAction == 'vehicle_spawner_menu' then
					OpenVehicleSpawnerMenu()
				end

				CurrentAction = nil
				GUI.Time      = GetGameTimer()

			end
		end

		if IsControlPressed(0,  Keys['F6']) and Config.EnablePlayerManagement and PlayerData.job ~= nil and PlayerData.job.name == Config.NameJob and (GetGameTimer() - GUI.Time) > 150 then
			OpenMobileActionsMenu()
			GUI.Time = GetGameTimer()
		end
	end
end)