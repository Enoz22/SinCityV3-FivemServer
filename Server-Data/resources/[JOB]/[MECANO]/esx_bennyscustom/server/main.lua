ESX = nil
local Vehicles

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('esx_bennyscustom:buyMod')
AddEventHandler('esx_bennyscustom:buyMod', function(price)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	price = tonumber(price)

	if Config.IsBennysJobOnly and Config.UseSocietyAccount then
		local societyAccount

		TriggerEvent('esx_addonaccount:getSharedAccount', 'society_bennys', function(account)
			societyAccount = account
		end)

		if price <= societyAccount.money then
			TriggerClientEvent('esx_bennyscustom:installMod', _source)
			TriggerClientEvent('esx:showNotification', _source, _U('purchased'))
			societyAccount.removeMoney(price)
		else
			TriggerClientEvent('esx_bennyscustom:cancelInstallMod', _source)
			TriggerClientEvent('esx:showNotification', _source, _U('not_enough_money'))
		end
	else
		if price <= xPlayer.getMoney() then
			TriggerClientEvent('esx_bennyscustom:installMod', _source)
			TriggerClientEvent('esx:showNotification', _source, _U('purchased'))
			xPlayer.removeMoney(price)
		else
			TriggerClientEvent('esx_bennyscustom:cancelInstallMod', _source)
			TriggerClientEvent('esx:showNotification', _source, _U('not_enough_money'))
		end
	end
end)

RegisterServerEvent('esx_bennyscustom:refreshOwnedVehicle')
AddEventHandler('esx_bennyscustom:refreshOwnedVehicle', function(vehicleProps)
	local xPlayer = ESX.GetPlayerFromId(source)

	MySQL.Async.fetchAll('SELECT vehicle FROM owned_vehicles WHERE plate = @plate', {
		['@plate'] = vehicleProps.plate
	}, function(result)
		if result[1] then
			local vehicle = json.decode(result[1].vehicle)

			if vehicleProps.model == vehicle.model then
				MySQL.Async.execute('UPDATE owned_vehicles SET vehicle = @vehicle WHERE plate = @plate', {
					['@plate'] = vehicleProps.plate,
					['@vehicle'] = json.encode(vehicleProps)
				})
			else
				print(('esx_bennyscustom: %s attempted to upgrade vehicle with mismatching vehicle model!'):format(xPlayer.identifier))
			end
		end
	end)
end)

ESX.RegisterServerCallback('esx_bennyscustom:getVehiclesPrices', function(source, cb)
	if not Vehicles then
		MySQL.Async.fetchAll('SELECT * FROM vehicles', {}, function(result)
			local vehicles = {}

			for i=1, #result, 1 do
				table.insert(vehicles, {
					model = result[i].model,
					price = result[i].price
				})
			end

			Vehicles = vehicles
			cb(Vehicles)
		end)
	else
		cb(Vehicles)
	end
end)