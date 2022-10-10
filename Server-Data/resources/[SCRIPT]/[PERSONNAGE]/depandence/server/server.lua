ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

local CanUse = {}

for k,v in pairs(Config.DrugsItem) do
	CanUse[k] = true
	ESX.RegisterUsableItem(k, function(source)
		if (v.Wait and CanUse[k]) or (not v.Wait) then
			local xPlayer = ESX.GetPlayerFromId(source)
			if v.removeItem then
				xPlayer.removeInventoryItem(k, 1)
			end

			if v.Shield then
				TriggerClientEvent('nicoo_drugs:shield', source, v.ShieldData.percent, v.ShieldData.time)
			end

			if v.Addiction then
				TriggerEvent('esx_status:getStatus', source, 'drugs_addict', function(status)
					if not status.addiction then
						local rand = math.random(100)
						if rand <= v.AddictionData.percentChance then
							TriggerClientEvent('esx_status:addict', source, 'drugs_addict', true)
							TriggerClientEvent('esx_status:set', source, 'drugs_addict', 1000000)
							TriggerClientEvent('esx:showNotification', source, _U('you_are_addict'))
						end
					else
						TriggerClientEvent('esx_status:add', source, 'drugs_addict', (v.AddictionData.rate/100)*1000000)
					end
				end)
			end

			if v.Animation then
				TriggerClientEvent('nicoo_drugs:animation', source, v.AnimationData.dict, v.AnimationData.name)
			end

			if v.Wait then
				CanUse[k] = false
				Citizen.SetTimeout(v.WaitData.time * 1000, function()
					CanUse[k] = true
				end)
			end
		elseif v.Wait and not CanUse[k] then
			print('tu peux pas luitiliser ten a pris ya po logntemps..')
			TriggerClientEvent('esx:showNotification', source, _U('used_recently'))
		end
	end)
end
print(Config.SafeItem.itemName)
if Config.SafeItem.itemName ~= nil then
ESX.RegisterUsableItem(Config.SafeItem.itemName, function(source)
	TriggerEvent('esx_status:getStatus', source, 'drugs_addict', function(status)
		if status.addiction then
			local xPlayer = ESX.GetPlayerFromId(source)
			if Config.SafeItem.removeItem then
				xPlayer.removeInventoryItem(Config.SafeItem.itemName, 1)
			end

			TriggerClientEvent('esx_status:addict', source, 'drugs_addict', false)
			TriggerClientEvent('esx_status:set', source, 'drugs_addict', 0)
			TriggerClientEvent('esx:showNotification', source, _U('you_are_no_longer_addict'))
		end
	end)
end)
end