ESX = nil

cachedData = {
	["houseData"] = {},
	["Cameras"] = {}
}

Citizen.CreateThread(function()
	
	while not ESX do

		TriggerEvent("esx:getSharedObject", function(library) 
			ESX = library 
		end)

		Citizen.Wait(0)
	end
	
	if ESX.IsPlayerLoaded() then
		DecorRegister('instance', 3)
		FetchHouseData()
	end

end)

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function(playerData)
	ESX.PlayerData = playerData
	DecorRegister('instance', 3)
	FetchHouseData()
end)

RegisterNetEvent("esx:setJob")
AddEventHandler("esx:setJob", function(newJob)
	ESX.PlayerData["job"] = newJob
end)

RegisterCommand("fetch", function()
	FetchHouseData()
end)

RegisterNetEvent("burglary:eventHandler")
AddEventHandler("burglary:eventHandler", function(response, eventData)
	if response == "lockpick_house" then
		cachedData["houseData"][eventData["houseId"]] = {
			["Lootables"] = {}
		}
		if ESX.PlayerData["job"] and ESX.PlayerData["job"]["name"] == "police" then
			ESX.ShowNotification("Cambriolage a" .. Config.Coords[eventData["houseId"]]["Info"] .. ", Marquer sur ton GPS.")
			CreateBlip(eventData)
		end
	elseif response == "lock_house" then
		cachedData["houseData"][eventData["houseId"]] = {
			["locked"] = true
		}
		if ESX.PlayerData["job"] and ESX.PlayerData["job"]["name"] == "police" then
			if DoesBlipExist(cachedData[eventData["houseId"]]) then
				RemoveBlip(cachedData[eventData["houseId"]])
			end
			ESX.ShowNotification("Tu as verrouiller la porte et éteint l'alarme")
		end
	elseif response == "loot_place" then
		cachedData["houseData"][eventData["houseId"]]["Lootables"][eventData["lootSpot"]] = true
	else	
 		print("Wrong event handler: " .. response)
	end
end)

Citizen.CreateThread(function()

	Wait(500)
	
	while true do
		
		local sleepThread = 500
		
		if Config.PoliceCameras and ESX.PlayerData["job"] and ESX.PlayerData["job"]["name"] == "police" then

			if not cachedData["cameraMode"] then
			
				local ped = PlayerPedId()
				local pedCoords = GetEntityCoords(ped)
				local dstCheck = #(Config.CameraComputer - pedCoords)

				if dstCheck <= 3.0 then

					sleepThread = 5

					if dstCheck <= 1.2 then

						ESX.ShowHelpNotification("~INPUT_CONTEXT~ Security Cameras")

						if IsControlJustReleased(0, 38) then
							CameraMenu()
						end

					end
					DrawMarker(6, Config.CameraComputer-vector3(0.0,0.0,0.975), 0.0, 0.0, 0.0, -90.0, 0.0, 0.0, 1.0, 1.0, 1.0, 55, 100, 200, 155, 0, false, false, 0, false, false, false, false)
				end
			end
		end
		Citizen.Wait(sleepThread)
	end
end)

Citizen.CreateThread(function()
	Wait(500)
	
	while true do
		
		local sleep = 500
		local pedCoords = GetEntityCoords(PlayerPedId())
		
		for id,data in pairs(Config.Coords) do
			
			local dstcheck = #(data["Pos"] - pedCoords)
			local text = data["Info"]

			if dstcheck <= 5.5 then
				sleep = 5
				if dstcheck <= 1.3 then
					if ESX.PlayerData["job"] and ESX.PlayerData["job"]["name"] == "police" then
						text = "[~b~E~s~] " .. (cachedData["houseData"][id] and "Enter | [~r~H~s~] Lock." or "Lockpick") .. " \n" .. data["Info"]
						if IsControlJustReleased(0, 38) then
							if not cachedData["houseData"][id] then
								if HasLockPick() then ESX.TriggerServerCallback("burglary:isHouseRobbable", function(robbable) if robbable then BeginLockpick(id, data) else ESX.ShowNotification("Not enough cops.") end end) else ESX.ShowNotification("You need a lockpick.") end
							elseif cachedData["houseData"][id] and not cachedData["houseData"][id]["locked"] then
								EnterHouse(id, data)
							else
								ESX.ShowNotification("Il semble que vous ne pouvez pas verrouiller la porte.")
							end
						elseif IsControlJustReleased(0, 74) then
							if cachedData["houseData"][id] and not cachedData["houseData"][id]["locked"] then
								LockHouse(id, data)
							else
								ESX.ShowNotification("Tout est fermer!")
							end
						end
					else
						text = "[~b~E~s~] " .. (cachedData["houseData"][id] and "Enter" or "Lockpick") .. " \n" .. data["Info"]
						if IsControlJustReleased(0, 38) then
							if not cachedData["houseData"][id] then
								if HasLockPick() then ESX.TriggerServerCallback("burglary:isHouseRobbable", function(robbable) if robbable then BeginLockpick(id, data) else ESX.ShowNotification("Not enough cops.") end end) else ESX.ShowNotification("You need a lockpick.") end
							elseif cachedData["houseData"][id] and not cachedData["houseData"][id]["locked"] then
								EnterHouse(id, data)
							else
								ESX.ShowNotification("Il semble que vous ne pouvez pas verrouiller la porte.")
							end
						end
					end
				end
				if Config.EnableHouseText then ESX.Game.Utils.DrawText3D(data["Pos"], text, 0.6) end
				DrawMarker(6, data["Pos"]-vector3(0.0,0.0,0.975), 0.0, 0.0, 0.0, -90.0, 0.0, 0.0, 1.0, 1.0, 1.0, 55, 100, 200, 155, 0, false, false, 0, false, false, false, false)
			end
			
		end
		Citizen.Wait(sleep)
	end
end)