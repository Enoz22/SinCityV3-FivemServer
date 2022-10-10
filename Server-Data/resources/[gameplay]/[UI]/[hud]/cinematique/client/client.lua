ESX = nil

local hasCinematic = false

Citizen.CreateThread(function()
  while ESX == nil do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
    Citizen.Wait(0)
  end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if IsPauseMenuActive() then
			ESX.UI.HUD.SetDisplay(0.0)
		elseif hasCinematic == true then
			ESX.UI.HUD.SetDisplay(0.0)
		end
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		local ped = PlayerPedId()
		local vehicle = GetVehiclePedIsIn(ped)

		if IsControlJustPressed(0, 311) then
			hasCinematic = not hasCinematic
			if hasCinematic == true then
				SendNUIMessage({openCinema = true})
				ESX.UI.HUD.SetDisplay(0.0)
				TriggerEvent('es:setMoneyDisplay', 0.0)
				TriggerEvent('esx_status:setDisplay', 0.0)
				DisplayRadar(false, false)
			else
				SendNUIMessage({openCinema = false})
				ESX.UI.HUD.SetDisplay(1.0)
				TriggerEvent('es:setMoneyDisplay', 1.0)
				TriggerEvent('esx_status:setDisplay', 1.0)
                if vehicle ~= 0 then
                    SendNUIMessage(
                        {
                            type = "openMapUI"
                        }
                    )
                    DisplayRadar(true, false)
					SetBigmapActive(false, false)
                elseif vehicle == 0 then
                    SendNUIMessage(
                        {
                            type = "closeMapUI"
                        }
                    )
                    DisplayRadar(false)
				end
			end
		end
	end
end)
