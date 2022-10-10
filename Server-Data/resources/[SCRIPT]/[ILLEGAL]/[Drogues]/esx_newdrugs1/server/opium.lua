local playersProcessingPoppyResin = {}

RegisterServerEvent('esx_illegal:pickedUpSevePavot')
AddEventHandler('esx_illegal:pickedUpSevePavot', function()
	local xPlayer = ESX.GetPlayerFromId(source)
	local xItem = xPlayer.getInventoryItem('sevepavot')

	if xItem.weight ~= -1 and (xItem.count + 1) > xItem.weight then
		TriggerClientEvent('esx:showNotification', _source, _U('opium_inventoryfull'))
	else
		xPlayer.addInventoryItem(xItem.name, 1)
	end
end)

RegisterServerEvent('esx_illegal:processSevePavot')
AddEventHandler('esx_illegal:processSevePavot', function()
	if not playersProcessingPoppyResin[source] then
		local _source = source

		playersProcessingPoppyResin[_source] = ESX.SetTimeout(Config.Delays.HeroinProcessing, function()
			local xPlayer = ESX.GetPlayerFromId(_source)
			local xSevepavot, xOpium = xPlayer.getInventoryItem('sevepavot'), xPlayer.getInventoryItem('opium')

			if xOpium.weight ~= -1 and (xOpium.count + 1) > xOpium.weight then
				TriggerClientEvent('esx:showNotification', _source, _U('opium_processingfull'))
			elseif xSevepavot.count < 1 then
				TriggerClientEvent('esx:showNotification', _source, _U('opium_processingenough'))
			else
				xPlayer.removeInventoryItem('sevepavot', 1)
				xPlayer.addInventoryItem('opium', 1)

				TriggerClientEvent('esx:showNotification', _source, _U('opium_processed'))
			end

			playersProcessingPoppyResin[_source] = nil
		end)
	else
		--print(('esx_illegal: %s attempted to exploit heroin processing!'):format(GetPlayerIdentifiers(source)[1]))
	end
end)

function CancelProcessing(playerID)
	if playersProcessingPoppyResin[playerID] then
		ESX.ClearTimeout(playersProcessingPoppyResin[playerID])
		playersProcessingPoppyResin[playerID] = nil
	end
end

RegisterServerEvent('esx_illegal:cancelProcessing')
AddEventHandler('esx_illegal:cancelProcessing', function()
	CancelProcessing(source)
end)

AddEventHandler('esx:playerDropped', function(playerID, reason)
	CancelProcessing(playerID)
end)

RegisterServerEvent('esx:onPlayerDeath')
AddEventHandler('esx:onPlayerDeath', function(data)
	CancelProcessing(source)
end)
