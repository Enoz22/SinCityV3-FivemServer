  
ESX          = nil
local Animated = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)


AddEventHandler('esx_status:loaded', function(status)
	TriggerEvent('esx_status:registerStatus', 'drugs_addict', 0, Config.StatusColor, function(status)
		return true
	end, function(status)
		if status.getAddict() then
			status.remove((Config.AddictRateRemove/100)*1000000)
		end
	end)

	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(1000)

			TriggerEvent('esx_status:getStatus', 'drugs_addict', function(status)
				if status.getAddict() then
					local playerPed = GetPlayerPed(-1)
					if status.val == (Config.MinRateToHaveEffect/100)*1000000 then
						ManqueDrogue(playerPed)
					elseif status.val >= (Config.RateToRemoveEffect/100)*1000000 then
						RetourRealite(playerPed)
					end
				elseif Animated then
					RetourRealite(GetPlayerPed(-1))
				end
			end)
		end
	end)
end)
function ManqueDrogue(playerPed)
	if not Animated then
		Animated = true
		RequestAnimSet("MOVE_M@DRUNK@MODERATEDRUNK_HEAD_UP")
      
	    while not HasAnimSetLoaded("MOVE_M@DRUNK@MODERATEDRUNK_HEAD_UP") do
	        Citizen.Wait(0)
	    end
		
		loadAnimDict(Config.AnimationEffect.dict)
		TaskPlayAnim(playerPed, Config.AnimationEffect.dict, Config.AnimationEffect.name, 8.0, 1.0, 13000, 50, 0.2, 0.0, 0.0, 0.0)

		SetPedMovementClipset(playerPed, "MOVE_M@DRUNK@MODERATEDRUNK_HEAD_UP", true)

		SetTimecycleModifier("spectator5")
		SetPedMotionBlur(playerPed, true)
		SetPedIsDrunk(playerPed, true)
	end
end

function RetourRealite(playerPed)
	if Animated then
		Animated = false
		ClearTimecycleModifier()
		ResetScenarioTypesEnabled()
		ResetPedMovementClipset(playerPed, 0)
		ClearPedTasksImmediately(playerPed)
		SetPedIsDrunk(playerPed, false)
		SetPedMotionBlur(playerPed, false)
	end
end

function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(5)
	end
end

--
RegisterNetEvent('nicoo_drugs:shield')
AddEventHandler('nicoo_drugs:shield', function(armour, time)
	local playerPed = GetPlayerPed(-1)

	AddArmourToPed(playerPed, armour)
	SetPedArmour(playerPed, armour)

	if time ~= -1 then
		Citizen.SetTimeout(time * 1000, function()
			AddArmourToPed(playerPed, 0)
			SetPedArmour(playerPed, 0)
		end)
	else
		print('time -1')
	end
end)

--
RegisterNetEvent('nicoo_drugs:animation')
AddEventHandler('nicoo_drugs:animation', function(dict, name)
	print('loustic ?')
	local playerPed = GetPlayerPed(-1)
	loadAnimDict(dict)
	print('ouai ? ' .. dict .. ' - ' .. name)
	TaskPlayAnim(playerPed, dict, name,  8.0, 1.0, -1, 0, 0.0, 0.0, 0.0, 0.0)
end)