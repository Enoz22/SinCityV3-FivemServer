Keys = {
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

  local PlayerData              = {}
  local menuIsShowed        = false
  local hintIsShowed        = false


  local hasAlreadyEnteredMarker = false
  local Blips                   = {}
  local JobBlips                = {}

  local collectedItem           = nil
  local collectedQtty       = 0
  local collectedQttyUpToDate   = false
  local previousCollectedItem   = nil
  local previousCollectedQtty   = 0
  local isInMarker              = false
  local isInPublicMarker        = false

  local newTask                 = false
  local hintToDisplay           = "no hint to display"
  local jobDone                 = false
  local onDuty          = false
  local moneyInBank       = 0

  local spawner           = 0
  local myPlate                 = {}
  local isWorkingNow = false

  local isJobVehicleDestroyed   = false

  local cautionVehicleInCaseofDrop  = 0
  local maxCautionVehicleInCaseofDrop = 0
  local vehicleObjInCaseofDrop    = nil
  local vehicleInCaseofDrop       = nil
  local vehicleHashInCaseofDrop     = nil
  local vehicleMaxHealthInCaseofDrop  = nil
  local vehicleOldHealthInCaseofDrop  = nil

  ESX = nil

  Citizen.CreateThread(function()
	while ESX == nil do
	  TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	  --Vehicles = TriggerServerCallback("esx_jobs:vehiclesdata")
	  Citizen.Wait(0)
	end
  end)

function refreshBlips()
	local zones = {}
	local blipInfo = {}
	--print("refreshblip",PlayerData.job.name)
	if PlayerData.job ~= nil then
		for zoneKey,zoneValues in pairs(JobData.Zones) do
			if zoneValues.Blip and zoneValues.Interim ~= false or zoneValues.Blip and string.match(PlayerData.job.name, "p") then
			  local blip = AddBlipForCoord(zoneValues.Pos.x, zoneValues.Pos.y, zoneValues.Pos.z)
			  SetBlipSprite (blip, JobData.BlipInfos.Sprite)
			  SetBlipDisplay(blip, 4)
			  SetBlipScale  (blip, 0.7)
			  SetBlipColour (blip, JobData.BlipInfos.Color)
			  SetBlipAsShortRange(blip, true)
			  BeginTextCommandSetBlipName("STRING")
			  AddTextComponentString(zoneValues.Name)
			  EndTextCommandSetBlipName(blip)
			  table.insert(JobBlips, blip)
			end
		end
	end
end


  RegisterNetEvent('esx:playerLoaded')
  AddEventHandler('esx:playerLoaded', function(xPlayer)
	  PlayerData = xPlayer
	  TriggerServerEvent('esx_jobs:giveBackCautionInCaseOfDrop')
	  blipsmescouilles(PlayerData.job)
  end)

  RegisterNetEvent('esx:setJob')
  AddEventHandler('esx:setJob', function(job)
	blipsmescouilles(job)
  end)

  function blipsmescouilles(job)
	PlayerData.job = job
	--print(json.encode(job))
	if string.match(job.name, "p") then
		local numb = string.len(job.name)
		local job2 = string.sub(job.name,1, numb - 1)
		--print(job.name,job2)
		JobData = getJobConfig(job2)
	else
		--print(job.name)
		JobData = getJobConfig(job.name)
	end
		--print(json.encode(JobData))
		Wait(100)
		onDuty = false
		myPlate = {} -- loosing vehicle caution in case player changes job.
		isJobVehicleDestroyed = false
		spawner = 0
		deleteBlips()
	if JobData ~= nil then
		refreshBlips()
	end
  end

  --[[RegisterCommand('testjob', function(source)
	--PlayerData.job = job
	print(json.encode(PlayerData))
	if string.match(PlayerData.job.name, "p") then
		local numb = string.len(PlayerData.job.name)
		local job2 = string.sub(PlayerData.job.name,1, numb - 1)
		print(PlayerData.job.name,job2)
		JobData = getJobConfig(job2)
	else
		print(PlayerData.job.name)
		JobData = getJobConfig(PlayerData.job.name)
	end
		print(json.encode(JobData))
		Wait(100)
		onDuty = false
		myPlate = {} -- loosing vehicle caution in case player changes job.
		isJobVehicleDestroyed = false
		spawner = 0
		deleteBlips()
	if JobData ~= nil then
		refreshBlips()
	end
  end, false)]]

  --refreshBlips()

  RegisterNetEvent('esx_jobs:progressbar')
  AddEventHandler('esx_jobs:progressbar', function(overtime)
		local playerPed        = GetPlayerPed(-1)

		Citizen.CreateThread(function()
			TaskStartScenarioInPlace(playerPed, "world_human_bum_wash", 0, true)
			exports['progressBars']:startUI(overtime - 200, "Travail")
			Citizen.Wait(overtime - 200)
			ClearPedTasks(playerPed)
		end)
  end)

  AddEventHandler('esx_jobs:publicTeleports', function(position)
	SetEntityCoords(GetPlayerPed(-1), position.x, position.y, position.z)
  end)

  function OpenMenu(job)
	ESX.UI.Menu.CloseAll()

	local elements2 = {
		  {label = _U('job_wear'), value = 'job_wear'},
		  {label = _U('citizen_wear'), value = 'citizen_wear'}
		}

    --print(string.match(job, "p"))
	if string.match(job, "p") then
	print("esx_jobs : We found the player open menu with this job"..job)
		--table.insert(elements2, {label = _U('deposit_stock'), value = 'put_stock'})
		--if PlayerData.job.grade_name ~= 'recruit' then
		--table.insert(elements2, {label = _U('withdraw_stock'), value = 'get_stock'})
		--end
		--if PlayerData.job.grade_name == 'boss' then
			--table.insert(elements2, {label = _U('boss_actions'), value = 'boss_actions'})
		--end
		local jobprivate = PlayerData.job.name
	else

	end

	ESX.UI.Menu.Open(
	  'default', GetCurrentResourceName(), 'cloakroom',
	  {
		title    = _U('cloakroom'),
		align 	= "right",
		elements = elements2
	  },

	  function(data, menu)
		if data.current.value == 'citizen_wear' then
		  onDuty = false
		  ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
			  TriggerEvent('skinchanger:loadSkin', skin)
		  end)
		end
		--if data.current.value == 'put_stock' then
			--OpenPutStocksMenu(PlayerData.job.name)
		--end

		--if data.current.value == 'get_stock' then
			--OpenGetStocksMenu(PlayerData.job.name)
		--end

		--if data.current.value == 'boss_actions' then
			--TriggerEvent('esx_society:openBossMenu', PlayerData.job.name , function(data, menu)
			--	menu.close()
			--end)
		--end
		if data.current.value == 'job_wear' then
		  onDuty = true
		  ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
			  if skin.sex == 0 then
				TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_male)
			else
				TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_female)
			end
		  end)
		end
		menu.close()
	  end,
	  function(data, menu)
		menu.close()
	  end
	)
  end

  function OpenGetStocksMenu(job)

  ESX.TriggerServerCallback('esx_jobs:getStockItems', function(items)

    --print(json.encode(items))

    local elements = {}

    for i=1, #items, 1 do

      local item = items[i]

      if item.count > 0 then
        table.insert(elements, {label = item.label .. ' x' .. item.count, type = 'item_standard', value = item.name})
      end

    end

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'stocks_menu',
      {
        title    = "Stock de la boite",
        elements = elements
      },
      function(data, menu)

        local itemName = data.current.value

        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count',
          {
            title = _U('quantity')
          },
          function(data2, menu2)

            local count = tonumber(data2.value)

            if count == nil then
              ESX.ShowNotification(_U('invalid_quantity'))
            else
              menu2.close()
              menu.close()
              OpenGetStocksMenu()

              TriggerServerEvent('esx_jobs:getStockItem', job, itemName, count)
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

  function OpenPutStocksMenu(job)

	ESX.TriggerServerCallback('esx_jobs:getPlayerInventory', function(inventory)

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
        title    = "Mon inventaire",
        elements = elements
      },
      function(data, menu)

        local itemName = data.current.value

        ESX.UI.Menu.Open(
          'dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count',
          {
            title = _U('quantity')
          },
          function(data2, menu2)

            local count = tonumber(data2.value)

            if count == nil then
              ESX.ShowNotification(_U('invalid_quantity'))
            else
              menu2.close()
              menu.close()
              OpenPutStocksMenu()

              TriggerServerEvent('esx_jobs:putStockItems', itemName, count)
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

function animsAction(animObj)
    Citizen.CreateThread(function()
        if not playAnim then
            local playerPed = PlayerPedId()
            if DoesEntityExist(playerPed) then -- Check if ped exist
                dataAnim = animObj

                -- Play Animation
                RequestAnimDict(dataAnim.lib)
                while not HasAnimDictLoaded(dataAnim.lib) do
                    Citizen.Wait(0)
                end
                if HasAnimDictLoaded(dataAnim.lib) then
                    local flag = 0
                    if dataAnim.loop ~= nil and dataAnim.loop then
                        flag = 1
                    elseif dataAnim.move ~= nil and dataAnim.move then
                        flag = 49
                    end

                    TaskPlayAnim(playerPed, dataAnim.lib, dataAnim.anim, 8.0, -8.0, -1, flag, 0, 0, 0, 0)
                    playAnimation = true
                end

                -- Wait end animation
                while true do
                    Citizen.Wait(0)
                    if not IsEntityPlayingAnim(playerPed, dataAnim.lib, dataAnim.anim, 3) then
                        playAnim = false
                        TriggerEvent('ft_animation:ClFinish')
                        break
                    end
                end
            end -- end ped exist
        end
    end)
end

AddEventHandler('esx_jobs:action', function(job, zone)
	print(job,json.encode(zone))
	menuIsShowed = true
	if zone.Type == "cloakroom" then
	  OpenMenu(PlayerData.job.name)
	elseif zone.Type == "work" or zone.Type == "harvest" then -- Zone récolte
	  hintToDisplay = "no hint to display"
	  hintIsShowed = false
	  local playerPed = PlayerPedId()
	  if IsPedInAnyVehicle(playerPed, 0) then
		TriggerEvent('esx:showNotification', _U('foot_work'))
	  else
		if zone.Minigame then
			local finished = exports["reload-skillbar"]:taskBar(4000,math.random(5,15))
                if finished ~= 100 then
                    TriggerEvent('notification', 'Vous avez raté ici...', 2)
                    TriggerServerEvent('esx_jobs:craftingJobs', zone.Item,false)
                        --TriggerEvent('notification', 'Failed', 2)
                else
                    --local finished2 = exports["reload-skillbar"]:taskBar(6000,math.random(5,15))
                    local finished2 = exports["reload-skillbar"]:taskBar(3000,math.random(5,15))
                    if finished2 ~= 100 then
                        TriggerEvent('notification', 'Vous avez raté ici...', 2)
                        TriggerServerEvent('esx_jobs:craftingJobs', zone.Item,false)
                        --TriggerEvent('notification', 'Failed', 2)
                    else
                        --local finished3 = exports["reload-skillbar"]:taskBar(6000,math.random(5,15))
                        local finished3 = exports["reload-skillbar"]:taskBar(2000,math.random(5,15))
                        if finished3 ~= 100 then
                            TriggerEvent('notification', 'Vous avez raté ici...', 2)
                            TriggerServerEvent('esx_jobs:craftingJobs', zone.Item,false)
                            --TriggerEvent('notification', 'Failed', 2)
                        else
                            TriggerEvent('notification', 'Vous avez bien géré!')
                            -- Do what you want them to do here...
                            TriggerServerEvent('esx_jobs:craftingJobs', zone.Item,true)
                        end
                    end
                end
		else
		TriggerServerEvent('esx_jobs:startWork', zone.Item)
		end
	  end
	elseif zone.Type == "bar" or zone.Type == "shop" then
		local playerPed = PlayerPedId()
		if IsPedInAnyVehicle(playerPed, 0) then
			TriggerEvent('esx:showNotification', _U('foot_work'))
		elseif zone.Type == "shop" then

			local elements = {}

			for i=1, #zone.Items, 1 do

			  local item = zone.Items[i]
			  table.insert(elements, {
					label = item.label .. ' - <span style="color:red;">$' .. item.price .. ' </span>',
					realLabel = item.label,
					value = item.name,
					price = item.price
				})
			end

			ESX.UI.Menu.CloseAll()

			ESX.UI.Menu.Open(
			  'default', GetCurrentResourceName(), 'shop_menu',
			  {
				title    = "Dépot de soft drink",
				elements = elements
			  },
			  function(data, menu)

				local itemName = data.current.value
				local price = data.current.price
				local reellabel = data.current.realLabel

				ESX.UI.Menu.Open(
				  'dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count',
				  {
					title = _U('quantity')
				  },
				  function(data2, menu2)

					local count = tonumber(data2.value)

					if count == nil then
					  ESX.ShowNotification(_U('invalid_quantity'))
					else
					  menu2.close()
					  menu.close()

					  TriggerServerEvent('esx_jobs:buyitems', itemName, count, price, reellabel)
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

		elseif zone.Type == "bar" then

				for i=1, #zone.Items, 1 do

				  local item = zone.Items[i]
				  table.insert(elements, {label = item.label, type = 'item_standard', value = item.value})

				end

				ESX.UI.Menu.CloseAll()

				ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'menu_crafting', {
					  title = _U('crafting'),
					  align = 'top-left',
					  elements = {
						  {label = _U('jagerbomb'),     value = 'jagerbomb'},
						  {label = _U('golem'),         value = 'golem'},
						  {label = _U('whiskycoca'),    value = 'whiskycoca'},
						  {label = _U('vodkaenergy'),   value = 'vodkaenergy'},
						  {label = _U('vodkafruit'),    value = 'vodkafruit'},
						  {label = _U('rhumfruit'),     value = 'rhumfruit'},
						  {label = _U('teqpaf'),        value = 'teqpaf'},
						  {label = _U('rhumcoca'),      value = 'rhumcoca'},
						  {label = _U('mojito'),        value = 'mojito'},
						  {label = _U('mixapero'),      value = 'mixapero'},
						  {label = _U('metreshooter'),  value = 'metreshooter'},
						  {label = _U('jagercerbere'),  value = 'jagercerbere'},
					  }}, function(data2, menu2)

					animsAction({ lib = "mini@drinking", anim = "shots_barman_b" })

					local finished = exports["reload-skillbar"]:taskBar(4000,math.random(5,15))
					if finished ~= 100 then
						TriggerEvent('notification', 'Vous avez raté ici...', 2)
						TriggerServerEvent('esx_jobs:craftingJobs', data2.current.value ,false)
							--TriggerEvent('notification', 'Failed', 2)
					else
						--local finished2 = exports["reload-skillbar"]:taskBar(6000,math.random(5,15))
						local finished2 = exports["reload-skillbar"]:taskBar(3000,math.random(5,15))
						if finished2 ~= 100 then
							TriggerEvent('notification', 'Vous avez raté ici...', 2)
							TriggerServerEvent('esx_jobs:craftingJobs', data2.current.value ,false)
							--TriggerEvent('notification', 'Failed', 2)
						else
							--local finished3 = exports["reload-skillbar"]:taskBar(6000,math.random(5,15))
							local finished3 = exports["reload-skillbar"]:taskBar(2000,math.random(5,15))
							if finished3 ~= 100 then
								TriggerEvent('notification', 'Vous avez raté ici...', 2)
								TriggerServerEvent('esx_jobs:craftingJobs', data2.current.value ,false)
								--TriggerEvent('notification', 'Failed', 2)
							else
								TriggerEvent('notification', 'Vous avez bien géré!')
								-- Do what you want them to do here...
								TriggerServerEvent('esx_jobs:craftingJobs', data2.current.value ,true)
							end
						end
					end


				end, function(data2, menu2)
					menu2.close()
				end)
		end
	elseif zone.Type == "vehspawner" then
		if string.match(PlayerData.job.name, "p") then
				--TigerGarage
			ESX.TriggerServerCallback('t1ger_garage:SocietyVehicles', function(vehiclesoc)

				
				local elements = {}

				if PlayerData.job.grade_name == boss then
					table.insert(elements, {label = "Menu Patron", type = 'item_standard', value = "boss"})
				end
				
				for i=1, #vehiclesoc, 1 do

					local vehicle = vehiclesoc[i]
					table.insert(elements, {label = vehicle.label .. ' x' .. vehicle.plate, type = 'item_standard', value = vehicle})
				end

				ESX.UI.Menu.Open(
				  'default', GetCurrentResourceName(), 'stocks_menu',
				  {
					title    = "Garage Entreprise",
					elements = elements
				  },
				  function(data, menu)

						menu.close()
						if data.current.value == "boss" then
							
							
							local jobname = PlayerData.job.name
							local jobnameconv = string.sub(PlayerData.job.name,1,string.string.len(PlayerData.job.name) - 1)
							OpenShopMenu(jobnameconv)
						else
							local vehicle = data.current.value
							local model = data.current.value.model
							local plate = data.current.value.plate

							ESX.Game.SpawnVehicle(model, Config.Zones.VehicleSpawnPoint.Pos, 5.326, function(vehicle)
								local playerPed = GetPlayerPed(-1)
								TaskWarpPedIntoVehicle(playerPed,  vehicle,  -1)
								TriggerEvent('t1ger_keys:tempCarKeys', plate, "add")-- vehicle lock
							end)
						end
				  end,
				  function(data, menu)
					menu.close()
				  end
				)

			end,PlayerData.job.name)

		else

			TriggerServerEvent('esx_jobs:requestPlayerData', 'refresh_bank_account')
			  local spawnpt = nil
			  local deliverypt = nil
			  local vehicle = nil

			  for k,v in pairs(Config.Plates) do
				if PlayerData.job.name == k then
				  for l,w in pairs(v.Zones) do
					if (w.Type == "vehspawnpt") and (w.Spawner == zone.Spawner) then
					  spawnpt = w
					  spawner = w.Spawner
					end
				  end
				  for m,x in pairs(v.Vehicles) do
					if (x.Spawner == zone.Spawner) then
					  vehicle = x
					end
				  end
				end
			  end

			  local caution = zone.Caution

			  if deliverypt == nil then
				deliverypt = 0
			  end

			  TriggerServerEvent('esx_jobs:setCautionInCaseOfDrop', caution)
			  cautionVehicleInCaseofDrop = caution
			  maxCautionVehicleInCaseofDrop = cautionVehicleInCaseofDrop

			  spawncar(spawnpt, vehicle)

		end







	elseif zone.Type == "vehdelete" then

		if string.match(PlayerData.job.name, "p") then
			
			local playerPed = GetPlayerPed(-1)
			if IsPedInAnyVehicle(playerPed, 0) then
						local vehicle = GetVehiclePedIsIn(playerPed, 0)
						local vehProps = ESX.Game.GetVehicleProperties(vehicle)
						local fuel = GetVehicleFuelLevel(vehicle)
						
						local plate = GetVehicleNumberPlateText(vehicle)
						plate = string.gsub(plate, " ", "")
						local driverPed = GetPedInVehicleSeat(vehicle, -1)
						
						for i=1, #myPlate, 1 do
						  if (myPlate[i] == plate) and (playerPed == driverPed) then
							DeleteVehicle(GetVehiclePedIsIn(playerPed, 0))
														
							TriggerEvent('t1ger_keys:tempCarKeys',  myPlate[i], "remove") -- remove vehicle Lock here
							table.remove(myPlate, i)
							
							
							cautionVehicleInCaseofDrop = 0
							maxCautionVehicleInCaseofDrop = 0
							vehicleInCaseofDrop = nil
							vehicleHashInCaseofDrop = nil
							vehicleMaxHealthInCaseofDrop = nil
							vehicleOldHealthInCaseofDrop = nil
							vehicleObjInCaseofDrop = nil
							TriggerServerEvent('esx_jobs:setCautionInCaseOfDrop', 0)

						  end
						end
				
				ESX.TriggerServerCallback('t1ger_garage:storeVehicle2',function(ownedVehicle)
					if ownedVehicle then
						DeleteVehicle(curVeh)
						TriggerServerEvent('t1ger_garage:updateState', vehProps.plate, true)
						TriggerEvent('esx:showNotification', "Vehicule garé et stocké")
					else
						TriggerEvent('esx:showNotification', "Vehicule ne vous appartient pas")
					end
				end, PlayerData.job.name, vehProps, fuel)	
						
			end
			
			
		else
	
			  local looping = true
			  for k,v in pairs(JobData) do
				  for l,w in pairs(v.Zones) do
					if (w.Type == "vehdelete") and (w.Spawner == zone.Spawner) then
					  local playerPed = GetPlayerPed(-1)
					  if IsPedInAnyVehicle(playerPed, 0) then
						local vehicle = GetVehiclePedIsIn(playerPed, 0)
						local plate = GetVehicleNumberPlateText(vehicle)
						plate = string.gsub(plate, " ", "")
						local driverPed = GetPedInVehicleSeat(vehicle, -1)
						for i=1, #myPlate, 1 do
						  if (myPlate[i] == plate) and (playerPed == driverPed) then
							TriggerServerEvent('esx_jobs:caution', "give_back", cautionVehicleInCaseofDrop, 0, 0)
							DeleteVehicle(GetVehiclePedIsIn(playerPed, 0))
							-- Delete vehicle lock

							if w.Teleport ~= 0 then
							  SetEntityCoords(GetPlayerPed(-1), w.Teleport.x, w.Teleport.y, w.Teleport.z)
							end

							TriggerEvent('t1ger_keys:tempCarKeys', myPlate[i], "remove")
							table.remove(myPlate, i)

							if vehicleObjInCaseofDrop.HasCaution then
							  cautionVehicleInCaseofDrop = 0
							  maxCautionVehicleInCaseofDrop = 0
							  vehicleInCaseofDrop = nil
							  vehicleHashInCaseofDrop = nil
							  vehicleMaxHealthInCaseofDrop = nil
							  vehicleOldHealthInCaseofDrop = nil
							  vehicleObjInCaseofDrop = nil
							  TriggerServerEvent('esx_jobs:setCautionInCaseOfDrop', 0)
							end

							break
						  end
						end
					  end
					  looping = false
					  break
					end
					if looping == false then
					  break
					end
				  end
					if looping == false then
					  break
					end
			  end
	    end
	elseif zone.Type == "delivery" then
	  if Blips['delivery'] ~= nil then
		RemoveBlip(Blips['delivery'])
		Blips['delivery'] = nil
	  end
	  hintToDisplay = "no hint to display"
	  hintIsShowed = false
	  TriggerServerEvent('esx_jobs:startWork', zone.Item)
	elseif zone.Type == "menu" then
		local elements = {}
		for k,v in  pairs(zone.Item) do
			table.insert(elements,v.name)
		end
		ESX.UI.Menu.Open(
		  'default', GetCurrentResourceName(), 'production_menu',
		  {
			title    = "Production",
			elements = elements
		  },
		  function(data, menu)
			for k,v in  pairs(zone.Item) do
				if data.value == v.name then
					TriggerServerEvent('esx_jobs:craftingJobs', v,true)
				end
			end
		  end,
		  function(data, menu)
			menu.close()
		  end
		)
	end
	--nextStep(zone.GPS)
  end)

  function nextStep(gps)
	if gps ~= 0 then
	  if Blips['delivery'] ~= nil then
		RemoveBlip(Blips['delivery'])
		Blips['delivery'] = nil
	  end
	  Blips['delivery'] = AddBlipForCoord(gps.x, gps.y, gps.z)
	  SetBlipRoute(Blips['delivery'], true)
	  TriggerEvent('esx:showNotification', _U('next_point'))
	end
  end

  -- #########################
  AddEventHandler('esx_jobs:hasExitedMarker', function(zone)
	TriggerServerEvent('esx_jobs:stopWork')
	isWorkingNow = false
	hintToDisplay = "no hint to display"
	menuIsShowed = false
	hintIsShowed = false
	isInMarker = false
  end)



  function deleteBlips()
	if JobBlips[1] ~= nil then
	  for i=1, #JobBlips, 1 do
		RemoveBlip(JobBlips[i])
		JobBlips[i] = nil
	  end
	end
  end

  function spawncar(spawnPoint, vehicle)
	hintToDisplay = "no hint to display"
	hintIsShowed = false
	TriggerServerEvent('esx_jobs:caution', "take", cautionVehicleInCaseofDrop, spawnPoint, vehicle)
  end

  RegisterNetEvent('esx_jobs:spawnJobVehicle')
  AddEventHandler('esx_jobs:spawnJobVehicle', function(spawnPoint, vehicle)
	local playerPed = GetPlayerPed(-1)
	local coords = spawnPoint.Pos
	local vehicleModel = GetHashKey(vehicle.Hash)

	RequestModel(vehicleModel)
	while not HasModelLoaded(vehicleModel) do
	  Citizen.Wait(0)
	end

	local plate = math.random(100, 999)
	if not IsAnyVehicleNearPoint(coords.x, coords.y, coords.z, 5.0) then
	  local veh = CreateVehicle(vehicleModel, coords.x, coords.y, coords.z, spawnPoint.Heading, true, false)

	  if vehicle.Trailer ~= "none" then
		RequestModel(vehicle.Trailer)

		while not HasModelLoaded(vehicle.Trailer) do
		  Citizen.Wait(0)
		end

		local trailer = CreateVehicle(vehicle.Trailer, coords.x, coords.y, coords.z, spawnPoint.Heading, true, false)
		AttachVehicleToTrailer(veh, trailer, 1.1)
	  end

	  SetVehicleHasBeenOwnedByPlayer(veh,  true)
	  SetEntityAsMissionEntity(veh,  true,  true)
	  local id = NetworkGetNetworkIdFromEntity(veh)
	  SetNetworkIdCanMigrate(id, true)

	  local platePrefix = "WORK"
	  for k,v in pairs(ConfigJob.Plates) do
		if PlayerData.job.name == k or PlayerData.job.name == k.."p" then
		  platePrefix = v
		end
	  end

	  plate = platePrefix .. plate
	  SetVehicleNumberPlateText(veh, plate)
	  table.insert(myPlate, plate)
	  plate = string.gsub(plate, " ", "")
	  TriggerEvent('t1ger_keys:tempCarKeys', plate, "add") -- Add vehicle Lock here
	  SetVehRadioStation(veh, "OFF")
	  TaskWarpPedIntoVehicle(playerPed, veh, -1)
	  isJobVehicleDestroyed = false

	  local vehNet = NetworkGetNetworkIdFromEntity(veh)
	  local plate = GetVehicleNumberPlateText(veh)
	  

	  if vehicle.HasCaution then
		vehicleInCaseofDrop = veh
		vehicleHashInCaseofDrop = vehicle.Hash
		vehicleObjInCaseofDrop = vehicle
		vehicleMaxHealthInCaseofDrop = GetEntityMaxHealth(veh)
		vehicleOldHealthInCaseofDrop = vehicleMaxHealthInCaseofDrop
	  end
	end
  end)

  -- Show top left hint
  Citizen.CreateThread(function()
	while true do
	  Wait(0)
	  if hintIsShowed == true then
		SetTextComponentFormat("STRING")
		AddTextComponentString(hintToDisplay)
		DisplayHelpTextFromStringLabel(0, 0, 1, -1)
	  end
	end
  end)

  -- Display markers (only if on duty and the player's job ones)
  Citizen.CreateThread(function()
	while true do
	  Wait(0)
	  onDuty = true
	  if JobData ~= nil then
		  local zones = {}
		  if PlayerData.job ~= nil then
				zones = JobData.Zones
			local coords = GetEntityCoords(GetPlayerPed(-1))
			for k,v in pairs(zones) do
				--print(k)

			  if onDuty or v.Type == "cloakroom" or PlayerData.job.name == "reporter" then
				if v.Interim ~= false or string.match(PlayerData.job.name, "p") then
					if(v.Marker ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < ConfigJob.DrawDistance) then
					  DrawMarker(v.Marker, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, false, true, 2, false, false, false, false)
					end
				end
			  end
			end
		  end
	  end
	end
  end)

  -- Display public markers
  Citizen.CreateThread(function()
	while true do
	  --print(json.encode(ConfigJob.PublicZones))
	  Wait(0)
	  local coords = GetEntityCoords(GetPlayerPed(-1))
	  for k,v in pairs(ConfigJob.PublicZones) do
		if(v.Marker ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < ConfigJob.DrawDistance) then
		  DrawMarker(v.Marker, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, false, true, 2, false, false, false, false)
		end
	  end
	end
  end)

  -- Activate public marker
  Citizen.CreateThread(function()
	while true do
	  Wait(0)
	  local coords      = GetEntityCoords(GetPlayerPed(-1))
	  local position    = nil
	  local zone        = nil

	  for k,v in pairs(ConfigJob.PublicZones) do
		if(GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x) then
		  isInPublicMarker = true
		  position = v.Teleport
		  zone = v
		  break
		else
		  isInPublicMarker  = false
		end
	  end

	  if IsControlJustReleased(0, Keys["E"]) and isInPublicMarker then
		TriggerEvent('esx_jobs:publicTeleports', position)
	  end

	  -- hide or show top left zone hints
	  if isInPublicMarker then
		hintToDisplay = zone.Hint
		hintIsShowed = true
	  else
		if not isInMarker then
		  hintToDisplay = "no hint to display"
		  hintIsShowed = false
		end
	  end
	end
  end)

  -- Activate menu when player is inside marker
  Citizen.CreateThread(function()
	while true do
	  Wait(0)
	  --print(json.encode(JobData))
	  if PlayerData.job ~= nil and PlayerData.job.name ~= 'nojob' then
		local zones = nil
		local job = nil
		--print(isInMarker,hasAlreadyEnteredMarker)
		if 	JobData ~= nil then
			--print("OK1")
			  job = PlayerData.job.name
			  zones = JobData.Zones
			  --print("OK2")
		end
		--print("OK3")
		if zones ~= nil then
		  --print("OK4")
		  local coords      = GetEntityCoords(GetPlayerPed(-1))
		  local currentZone = nil
		  local zone      = nil
		  local lastZone    = nil
		  --print(coords)
		  for k,v in pairs(zones) do
			if(GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x) then
			  isInMarker  = true
			  currentZone = k
			  zone        = v
			  --print(currentZone,zone)
			  break
			else
			  isInMarker  = false
			end
		  end

		  if IsControlJustReleased(0, Keys["E"]) and not menuIsShowed and isInMarker then
			print('j\'appuye sur E')
			print(isWorkingNow)
			if isWorkingNow == false then
				if onDuty or zone.Type == "cloakroom" or PlayerData.job.name == "reporter" then
					if string.match(PlayerData.job.name, "p") then
						TriggerEvent('esx_jobs:action', job, zone)
						isWorkingNow = true
					elseif not zone.Interim == false then
						TriggerEvent('esx_jobs:action', job, zone)
						isWorkingNow = true
					end
				end
			else	
				TriggerServerEvent('esx_jobs:stopWork')
				isWorkingNow = false
			end
		  end

		  -- hide or show top left zone hints
		  if isInMarker and not menuIsShowed and zone.Interim ~= false then
			hintIsShowed = true
			if (onDuty or zone.Type == "cloakroom" or PlayerData.job.name == "reporter") and zone.Type ~= "vehdelete" then
			  hintToDisplay = zone.Hint
			  hintIsShowed = true
			elseif zone.Type == "vehdelete" and (onDuty or PlayerData.job.name == "reporter") then
			  local playerPed = GetPlayerPed(-1)
			  if IsPedInAnyVehicle(playerPed, 0) then
				local vehicle = GetVehiclePedIsIn(playerPed)
				local driverPed = GetPedInVehicleSeat(vehicle, -1)
				local isVehicleOwner = false
				local plate = GetVehicleNumberPlateText(vehicle)
				plate = string.gsub(plate, " ", "")
				for i=1, #myPlate, 1 do
				  Citizen.Trace(myPlate[i])
				  if (myPlate[i] == plate) and (playerPed == driverPed) then
					hintToDisplay = zone.Hint .. "\n" .. _U('security_deposit') .. cautionVehicleInCaseofDrop .. "~s~."
					isVehicleOwner = true
					break
				  end
				end
				if not isVehicleOwner then
				  hintToDisplay = _U('not_your_vehicle')
				end
			  else
				hintToDisplay = _U('in_vehicle')
			  end
			  hintIsShowed = true
			elseif onDuty and zone.Spawner ~= spawner then
			  hintToDisplay = _U('wrong_point')
			  hintIsShowed = true
			else
			  if not isInPublicMarker then
				hintToDisplay = "no hint to display"
				hintIsShowed = false
			  end
			end
		  end

		  if isInMarker and not hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = true
		  end

		  if not isInMarker and hasAlreadyEnteredMarker then
			hasAlreadyEnteredMarker = false
			TriggerEvent('esx_jobs:hasExitedMarker', zone)
		  end
		end
	  end
	end
  end)

  -- Vehicule JobMenu
  
	function OpenShopMenu(job,garage)
		local vehicules = _G[job].Vehicles
		if #vehicules == 0 then
			print('[sincity3_jobs] [^3ERROR^7] No vehicles found')
			return
		end
		
		ESX.UI.Menu.CloseAll()
		local playerPed = PlayerPedId()

		FreezeEntityPosition(playerPed, true)
		local elements = {}
		  for k,v in pairs(VehicleData) do
			for j,x in pairs(_G[job].Vehicles) do
				if v.model == x.name then
					table.insert(elements, {label = v.Hash .. ' x' .. v.price, type = 'item_standard', value = v})
				end
			end
		  end
			ESX.UI.Menu.Open(
				'default', GetCurrentResourceName(), 'stocks_menu',
					{
					title    = "Menu Vehicule Entreprise",
					elements = elements
					},
				  function(data, menu)
					if data.current.value then					
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shop_confirm', {
							title = _U('buy_vehicle_shop', data.current.value.Hash, ESX.Math.GroupDigits(data.current.value.price)),
							align = 'top-left',
							elements = {
								{label = _U('no'),  value = 'no'},
								{label = _U('yes'), value = 'yes'}
								}}, function(data2, menu2)
									if data2.current.value == 'yes' then

											ESX.TriggerServerCallback('sincity3_jobs:buyCarsociety', function(success)
												if success then
													local playerPed = PlayerPedId()
													FreezeEntityPosition(playerPed, false)
													menu2.close()
													menu.close()
													ESX.ShowNotification("Vehicule acheté")
												else
													ESX.ShowNotification("L'entreprise n'a pas assez de capitaux propre pour acheter cette voiture")
												end
											end, vehicleData.model,job.."p",garage)
										
									else
										menu2.close()
									end
								end, function(data2, menu2)
									menu2.close()
								end)
					
					end								
				  end,
				  function(data, menu)
					menu.close()
				  end)
	

				
			table.insert(options, ('%s <span style="color:green;">%s</span>'):format(vehicle.name, _U('generic_shopitem', ESX.Math.GroupDigits(vehicle.price))))
			table.sort(options)
			table.insert(elements, {
				name    = vehicle.name,
				label   = vehicle.label,
				value   = vehicle.model,
				type    = 'slider',
			})
		

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_shop', {
			title    = _U('car_dealer'),
			align    = 'top-left',
			elements = elements
		}, function(data, menu)
			local vehicleData = vehiclesByCategory[data.current.name][data.current.value + 1]

			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'shop_confirm', {
				title = _U('buy_vehicle_shop', vehicleData.name, ESX.Math.GroupDigits(vehicleData.price)),
				align = 'top-left',
				elements = {
					{label = _U('no'),  value = 'no'},
					{label = _U('yes'), value = 'yes'}
			}}, function(data2, menu2)
				if data2.current.value == 'yes' then
					if Config.EnablePlayerManagement then
						ESX.TriggerServerCallback('esx_vehicleshop:buyCarDealerVehicle', function(success)
							if success then
								IsInShopMenu = false
								DeleteDisplayVehicleInsideShop()

								CurrentAction     = 'shop_menu'
								CurrentActionMsg  = _U('shop_menu')
								CurrentActionData = {}

								local playerPed = PlayerPedId()
								FreezeEntityPosition(playerPed, false)
								SetEntityVisible(playerPed, true)
								SetEntityCoords(playerPed, Config.Zones.ShopEntering.Pos)

								menu2.close()
								menu.close()
								ESX.ShowNotification(_U('vehicle_purchased'))
							else
								ESX.ShowNotification(_U('broke_company'))
							end
						end, vehicleData.model)
					else
						local generatedPlate = GeneratePlate()

						ESX.TriggerServerCallback('esx_vehicleshop:buyVehicle', function(success)
							if success then
								IsInShopMenu = false
								menu2.close()
								menu.close()
								DeleteDisplayVehicleInsideShop()

								ESX.Game.SpawnVehicle(vehicleData.model, Config.Zones.ShopOutside.Pos, Config.Zones.ShopOutside.Heading, function(vehicle)
									TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
									SetVehicleNumberPlateText(vehicle, generatedPlate)

									FreezeEntityPosition(playerPed, false)
									SetEntityVisible(playerPed, true)
								end)
							else
								ESX.ShowNotification(_U('not_enough_money'))
							end
						end, vehicleData.model, generatedPlate)
					end
				else
					menu2.close()
				end
			end, function(data2, menu2)
				menu2.close()
			end)
		end, function(data, menu)
			menu.close()
			DeleteDisplayVehicleInsideShop()
			local playerPed = PlayerPedId()

			CurrentAction     = 'shop_menu'
			CurrentActionMsg  = _U('shop_menu')
			CurrentActionData = {}

			FreezeEntityPosition(playerPed, false)
			SetEntityVisible(playerPed, true)
			SetEntityCoords(playerPed, Config.Zones.ShopEntering.Pos)

			IsInShopMenu = false
		end, function(data, menu)
			local vehicleData = vehiclesByCategory[data.current.name][data.current.value + 1]
			local playerPed   = PlayerPedId()

			DeleteDisplayVehicleInsideShop()
			WaitForVehicleToLoad(vehicleData.model)

			ESX.Game.SpawnLocalVehicle(vehicleData.model, Config.Zones.ShopInside.Pos, Config.Zones.ShopInside.Heading, function(vehicle)
				currentDisplayVehicle = vehicle
				TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
				FreezeEntityPosition(vehicle, true)
				SetModelAsNoLongerNeeded(vehicleData.model)
			end)
		end)

		DeleteDisplayVehicleInsideShop()
		WaitForVehicleToLoad(firstVehicleData.model)

		ESX.Game.SpawnLocalVehicle(firstVehicleData.model, Config.Zones.ShopInside.Pos, Config.Zones.ShopInside.Heading, function(vehicle)
			currentDisplayVehicle = vehicle
			TaskWarpPedIntoVehicle(playerPed, vehicle, -1)
			FreezeEntityPosition(vehicle, true)
			SetModelAsNoLongerNeeded(firstVehicleData.model)
		end)
	end
  
  -- VEHICLE CAUTION
  Citizen.CreateThread(function()
	while true do
	  Wait(0)
	  if vehicleInCaseofDrop ~= nil then
		if onDuty and IsVehicleModel(vehicleInCaseofDrop, vehicleHashInCaseofDrop) then
		  local vehicleHealth = GetEntityHealth(vehicleInCaseofDrop)
		  if vehicleOldHealthInCaseofDrop ~= vehicleHealth then
			local cautionValue = 0
			  vehicleOldHealthInCaseofDrop = vehicleHealth
			  if vehicleHealth == vehicleMaxHealthInCaseofDrop then
				cautionValue = maxCautionVehicleInCaseofDrop
				cautionVehicleInCaseofDrop = cautionValue
			  else
			  local healthPct = (vehicleHealth * 100) / vehicleMaxHealthInCaseofDrop
			  local damagePct = 100 - healthPct
			  cautionValue =  math.ceil(cautionVehicleInCaseofDrop - cautionVehicleInCaseofDrop * damagePct * 2.5 / 100)
			  if cautionValue < 0 then
				  cautionValue = 0
			  elseif cautionValue >= cautionVehicleInCaseofDrop then
				  cautionValue = cautionVehicleInCaseofDrop
			  end
			  cautionVehicleInCaseofDrop = cautionValue
			end
			TriggerServerEvent('esx_jobs:setCautionInCaseOfDrop', cautionValue)
		  end
		end
	  end
	end
  end)

  Citizen.CreateThread(function()

	-- Slaughterer
	RemoveIpl("CS1_02_cf_offmission")
	RequestIpl("CS1_02_cf_onmission1")
	RequestIpl("CS1_02_cf_onmission2")
	RequestIpl("CS1_02_cf_onmission3")
	RequestIpl("CS1_02_cf_onmission4")

	-- Textil
	RequestIpl("id2_14_during_door")
	RequestIpl("id2_14_during1")

  end)
