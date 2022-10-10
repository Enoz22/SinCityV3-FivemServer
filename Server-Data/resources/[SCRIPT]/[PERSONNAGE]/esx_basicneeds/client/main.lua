ESX          = nil
local IsDead = false
local IsAnimated = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

AddEventHandler('esx_basicneeds:resetStatus', function()
	TriggerEvent('esx_status:set', 'hunger', 500000)
	TriggerEvent('esx_status:set', 'thirst', 500000)
end)

RegisterNetEvent('esx_basicneeds:healPlayer')
AddEventHandler('esx_basicneeds:healPlayer', function()
	-- restore hunger & thirst
	TriggerEvent('esx_status:set', 'hunger', 1000000)
	TriggerEvent('esx_status:set', 'thirst', 1000000)

	-- restore hp
	local playerPed = PlayerPedId()
	SetEntityHealth(playerPed, GetEntityMaxHealth(playerPed))
end)

AddEventHandler('esx:onPlayerDeath', function()
	IsDead = true
end)

AddEventHandler('esx:onPlayerSpawn', function(spawn)
	if IsDead then
		TriggerEvent('esx_basicneeds:resetStatus')
	end

	IsDead = false
end)

AddEventHandler('esx_status:loaded', function(status)

	TriggerEvent('esx_status:registerStatus', 'hunger', 1000000, '#CFAD0F', function(status)
		return Config.Visible
	end, function(status)
		status.remove(100)
	end)

	TriggerEvent('esx_status:registerStatus', 'thirst', 1000000, '#0C98F1', function(status)
		return Config.Visible
	end, function(status)
		status.remove(75)
	end)

end)

AddEventHandler('esx_status:onTick', function(data)
	local playerPed  = PlayerPedId()
	local prevHealth = GetEntityHealth(playerPed)
	local health     = prevHealth
	
	for k, v in pairs(data) do
		if v.name == 'hunger' and v.percent == 0 then
			if prevHealth <= 150 then
				health = health - 5
			else
				health = health - 1
			end
		elseif v.name == 'thirst' and v.percent == 0 then
			if prevHealth <= 150 then
				health = health - 5
			else
				health = health - 1
			end
		end
	end
	
	if health ~= prevHealth then SetEntityHealth(playerPed, health) end
end)

AddEventHandler('esx_basicneeds:isEating', function(cb)
	cb(IsAnimated)
end)

RegisterNetEvent('esx_basicneeds:onEat')
AddEventHandler('esx_basicneeds:onEat', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_cs_burger_01'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onDrink')
AddEventHandler('esx_basicneeds:onDrink', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_ld_flow_bottle'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_intdrink', function()
				TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

-- Cigarett 
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterNetEvent('esx_cigarett:startSmoke')
AddEventHandler('esx_cigarett:startSmoke', function(source)
	SmokeAnimation()
end)

function SmokeAnimation()
	local playerPed = GetPlayerPed(-1)
	
	Citizen.CreateThread(function()
        TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING", 0, true)               
	end)
end

-- Optionalneeds
function Drunk(level, start)
  
	Citizen.CreateThread(function()
		local playerPed = GetPlayerPed(-1)
		if start then
		DoScreenFadeOut(800)
		Wait(1000)
		end
		if level == 0 then
			RequestAnimSet("move_m@drunk@slightlydrunk")
			SetPedMotionBlur(playerPed, true)
			while not HasAnimSetLoaded("move_m@drunk@slightlydrunk") do
				Citizen.Wait(0)
			end
			SetPedMovementClipset(playerPed, "move_m@drunk@slightlydrunk", true)
		elseif level == 1 then
			RequestAnimSet("move_m@drunk@moderatedrunk")
			SetPedMotionBlur(playerPed, true)
			SetPedIsDrunk(playerPed, true)
			while not HasAnimSetLoaded("move_m@drunk@moderatedrunk") do
				Citizen.Wait(0)
			end
		SetPedMovementClipset(playerPed, "move_m@drunk@moderatedrunk", true)
		elseif level == 2 then
			RequestAnimSet("move_m@drunk@verydrunk")
			SetPedMotionBlur(playerPed, true)
			SetPedIsDrunk(playerPed, true)
			while not HasAnimSetLoaded("move_m@drunk@verydrunk") do
				Citizen.Wait(0)
			end
			SetPedMovementClipset(playerPed, "move_m@drunk@verydrunk", true)
		end
		
		SetTimecycleModifier("spectator5")
		
		if start then
			DoScreenFadeIn(800)
		end
			
	end)
end

 function Reality()
   Citizen.CreateThread(function()
     local playerPed = GetPlayerPed(-1)
     DoScreenFadeOut(800)
    Wait(1000)
     ClearTimecycleModifier()
    ResetScenarioTypesEnabled()
    ResetPedMovementClipset(playerPed, 0)
    SetPedIsDrunk(playerPed, false)
    SetPedMotionBlur(playerPed, false)
     DoScreenFadeIn(800)
   end)
 end
 
 AddEventHandler('esx_status:loaded', function(status)
   TriggerEvent('esx_status:registerStatus', 'drunk', 0, '#8F15A5', --roxo
    function(status)
      if status.val > 0 then
        return false
      else
        return false
      end
    end,
    function(status)
      status.remove(1500)
    end
  )
 	Citizen.CreateThread(function()
 		while true do
 			Wait(1000)
 			TriggerEvent('esx_status:getStatus', 'drunk', function(status)
				
				if status.val > 0 then
					local start = true
					if IsAlreadyDrunk then
						start = false
					end
					local level = 0
					if status.val <= 250000 then
						level = 0
					elseif status.val <= 500000 then
						level = 1
					else
						level = 2
					end
					if level ~= DrunkLevel then
						Drunk(level, start)
					end
					IsAlreadyDrunk = true
					DrunkLevel     = level
				end
 				if status.val == 0 then
					if IsAlreadyDrunk then
						Reality()
					end
					IsAlreadyDrunk = false
					DrunkLevel     = -1
 				end
 			end)
 		end
 	end)
 end)
 
RegisterNetEvent('esx_optionalneeds:onDrink')
AddEventHandler('esx_optionalneeds:onDrink', function()
  
  local playerPed = GetPlayerPed(-1)
  
  TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_DRINKING", 0, 1)
  Citizen.Wait(1000)
  ClearPedTasksImmediately(playerPed)
 end) 



 

	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(5000)

			local playerPed  = PlayerPedId()
			local prevHealth = GetEntityHealth(playerPed)
			local health     = prevHealth


			
			TriggerEvent('esx_status:getStatus', 'weed', function(status)
				if status.val == 1000000 and weedsave then
					weedsave = false
					Citizen.CreateThread(function()
						  local now = GetGameTimer()
						  if not last2_drunk_check or now - last2_drunk_check > (drunk_interval or 1) then 
							local ped = GetPlayerPed(-1)
							local veh = GetVehiclePedIsUsing(ped,false)
							last2_drunk_check = now

							if veh and veh > 0 then
							  if GetPedInVehicleSeat(veh,-1) == ped then
								local class = GetVehicleClass(veh)
								if class ~= 15 and class ~= 16 and class ~= 21 and class ~= 13 then  
								  local disaster = Drugs.DrivingIncidents[math.random(#Drugs.DrivingIncidents)]          
								  TaskVehicleTempAction(ped, veh, disaster.interaction, disaster.time) 
								  drunk_interval = math.random(5000,10000)
								end
							  end
							end
						  end
						weedsave = true
					end)
				end		
			end)
			
			cokesave = true
			
			TriggerEvent('esx_status:getStatus', 'coke', function(status)
				--print('soif '..status.val)
				if status.val == 1000000 then
					local ped = GetPlayerPed(-1)
					SetPedMovementClipset(ped, "MOVE_M@DRUNK@VERYDRUNK", 0)
					Citizen.CreateThread(function()
						local ped = GetPlayerPed(-1)
						Wait(4900)
						ResetPedMovementClipset(ped, 0.0)
					end)
				else 
				
				end
			end)

			TriggerEvent('esx_status:getStatus', 'opium', function(status)
				--print('soif '..status.val)
				if status.val == 1000000 then
					local ped = GetPlayerPed(-1)
					SetPedMovementClipset(ped, "MOVE_M@DRUNK@VERYDRUNK", 0)
					Citizen.CreateThread(function()
						local ped = GetPlayerPed(-1)
						Wait(4900)
						ResetPedMovementClipset(ped, 0.0)
					end)
				else 
					
				end
			end)
			
			TriggerEvent('esx_status:getStatus', 'alcool', function(status)
				--print('soif '..status.val)
				if status.val == 1000000 then
					local ped = GetPlayerPed(-1)
					SetPedMovementClipset(ped, "MOVE_M@DRUNK@VERYDRUNK", 0)
					local coords = GetEntityCoords(ped)
					local coords2 = vector3(coords.x+math.random(-5,10),coords.y+math.random(-5,10),coords.z+math.random(-2,2))
					RequestAnimSet("move_m@drunk@verydrunk")	
						while not HasAnimSetLoaded("move_m@drunk@verydrunk") do
							Citizen.Wait(1)
						end
					SetPedMovementClipset(ped, "MOVE_M@DRUNK@VERYDRUNK", 0)
					TaskGoToCoordAnyMeans(ped , coords2.x, coords2.y, coords2.z, 1.0, 0, 0, 0, 0)
					SetPedMovementClipset(ped, "MOVE_M@DRUNK@VERYDRUNK", 0)
					Citizen.CreateThread(function()
						local ped = GetPlayerPed(-1)
						Wait(4900)
						ResetPedMovementClipset(ped, 0.0)
					end)

				end
			end)
			
			TriggerEvent('esx_status:getStatus', 'smoke', function(status)
				--print('soif '..status.val)
				if status.val == 1000000 then
					local ped = GetPlayerPed(-1)
					SetPedMovementClipset(ped, "MOVE_M@DRUNK@VERYDRUNK", 0)
					Citizen.CreateThread(function()
						local ped = GetPlayerPed(-1)
						Wait(4900)
						ResetPedMovementClipset(ped, 0.0)
					end)
				else 
				end
			end)

			if health ~= prevHealth then
				SetEntityHealth(playerPed, health)
			end
		end
	end)





