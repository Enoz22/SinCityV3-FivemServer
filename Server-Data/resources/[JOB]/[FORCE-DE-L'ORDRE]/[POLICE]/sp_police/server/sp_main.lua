ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', 'police', Config.MaxInService)
end

RegisterServerEvent('renfort')
AddEventHandler('renfort', function(coords, raison)
	local _source = source
	local _raison = raison
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers = ESX.GetPlayers()

	for i = 1, #xPlayers, 1 do
		local thePlayer = ESX.GetPlayerFromId(xPlayers[i])
		if thePlayer.job.name == 'police' then
			TriggerClientEvent('renfort:setBlip', xPlayers[i], coords, _raison)
		end
	end
end)

RegisterServerEvent('sp_police:GiveCarte')
AddEventHandler('sp_police:GiveCarte', function(card)
	print(source,card)
	local xPlayer = ESX.GetPlayerFromId(source)
	if card == "police" then
		xPlayer.addInventoryItem("police_card", 5)
		TriggerClientEvent('esx:showNotification', player, 'Vous venais de recevoir 5 carte d\'accées agent de police')
	elseif card == "visitor" then
		xPlayer.addInventoryItem("visitor_card", 5)
		TriggerClientEvent('esx:showNotification', source, 'Vous venais de recevoir 5 carte visiteur Pour la police')
	else
		TriggerClientEvent('esx:showNotification', source, 'Cette demande n\'est pas correcte')
		print("^8ATTENTION UNE PERSONNE ESSAYE D'ABUSEZ DE PERMISSION POUR SE GIVE DES ITEMS")
	end
	
end)

ESX.RegisterServerCallback('sp_police:getBlackMoneySociety', function(source, cb)
	local _source = source
	local xPlayer    = ESX.GetPlayerFromId(_source)
	local blackMoney = 0
	local items      = {}
	local weapons    = {}
  
	TriggerEvent('esx_addonaccount:getSharedAccount', Config.Account.blackMoney, function(account)
	  blackMoney = account.money
	end)
  
	TriggerEvent('esx_addoninventory:getSharedInventory', Config.Account.society, function(inventory)
	  items = inventory.items
	end)
  
	TriggerEvent('esx_datastore:getSharedDataStore', Config.Account.weapon, function(store)
	  local storeWeapons = store.get('weapons')
  
	  if storeWeapons ~= nil then
		weapons = storeWeapons
	  end
	end)
  
	cb({
	  blackMoney = blackMoney,
	  items      = items,
	  weapons    = weapons
	})
  
  end)
  RegisterServerEvent('sp_police:getItem')
  AddEventHandler('sp_police:getItem', function(type, item, count)
  
	local _source      = source
	local xPlayer      = ESX.GetPlayerFromId(_source)
  
  	if type == 'item_account' then
  
	TriggerEvent('esx_addonaccount:getSharedAccount', Config.Account.blackMoney, function(account)
  
	  local roomAccountMoney = account.money
  
	  if roomAccountMoney >= count then
	  account.removeMoney(count)
	  xPlayer.addAccountMoney(item, count)
	  else
	  TriggerClientEvent('esx:showNotification', _source, 'Montant invalide')
	  end
  
	end)
	end
  
	if type == 'item_weapon' then
  
	  TriggerEvent('esx_datastore:getSharedDataStore', Config.Account.weapon, function(store)
  
		local storeWeapons = store.get('weapons')
  
		if storeWeapons == nil then
		  storeWeapons = {}
		end
  
		local weaponName   = nil
		local ammo         = nil
  
		for i=1, #storeWeapons, 1 do
		  if storeWeapons[i].name == item then
			weaponName = storeWeapons[i].name
			ammo       = storeWeapons[i].ammo
			table.remove(storeWeapons, i)
			break
		  end
		end
		store.set('weapons', storeWeapons)
		xPlayer.addWeapon(weaponName, ammo)
	  end)
	end
  end)
  
  RegisterServerEvent('sp_police:putItem')
  AddEventHandler('sp_police:putItem', function(type, item, count)
  
	local _source      = source
	local xPlayer      = ESX.GetPlayerFromId(_source)
  
	if type == 'item_account' then
	  local playerAccountMoney = xPlayer.getAccountMoney(item).money
  
	  if playerAccountMoney >= count then
  
		xPlayer.removeAccountMoney(item, count)
		TriggerEvent('esx_addonaccount:getSharedAccount', Config.Account.blackMoney, function(account)
		  account.addMoney(count)
		end)
	  else
		TriggerClientEvent('esx:showNotification', _source, 'Montant invalide')
	  end
	end
  
	
  end)

  ESX.RegisterServerCallback('sp_police:getPlayerInventory2', function(source, cb)
	local _source = source
	local xPlayer    = ESX.GetPlayerFromId(_source)
	local blackMoney = xPlayer.getAccountMoney('black_money').money
	local items      = xPlayer.inventory
  
	cb({
	  blackMoney = blackMoney,
	  items      = items
	})
  end)

RegisterServerEvent('police:PriseEtFinservice')
AddEventHandler('police:PriseEtFinservice', function(PriseOuFin)
	local _source = source
	local _raison = PriseOuFin
	local xPlayer = ESX.GetPlayerFromId(_source)
	local xPlayers = ESX.GetPlayers()
	local name = xPlayer.getName(_source)

	for i = 1, #xPlayers, 1 do
		local thePlayer = ESX.GetPlayerFromId(xPlayers[i])
		if thePlayer.job.name == 'police' then
			TriggerClientEvent('police:InfoService', xPlayers[i], _raison, name)
		end
	end
end)

TriggerEvent('esx_phone:registerNumber', 'police', _U('alert_police'), true, true)
TriggerEvent('esx_society:registerSociety', 'police', 'Police', Config.Account.society, Config.Account.society, Config.Account.society, {type = 'public'})

RegisterServerEvent('sp_police:confiscatePlayerItem')
AddEventHandler('sp_police:confiscatePlayerItem', function(target, itemType, itemName, amount)
	local _source = source
	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local targetXPlayer = ESX.GetPlayerFromId(target)

	if sourceXPlayer.job.name ~= 'police' then
		print(('sp_police: %s attempted to confiscate!'):format(xPlayer.identifier))
		return
	end

	if itemType == 'item' then
		local targetItem = targetXPlayer.getInventoryItem(itemName)
		local sourceItem = sourceXPlayer.getInventoryItem(itemName)

		-- does the target player have enough in their inventory?
		if targetItem.count > 0 and targetItem.count <= amount then

			-- can the player carry the said amount of x item?
			if sourceItem.limit ~= -1 and (sourceItem.count + amount) > sourceItem.limit then
				TriggerClientEvent('esx:showNotification', _source, _U('quantity_invalid'))
			else
				targetXPlayer.removeInventoryItem(itemName, amount)
				sourceXPlayer.addInventoryItem   (itemName, amount)
				TriggerClientEvent('esx:showNotification', _source, _U('you_confiscated', amount, sourceItem.label, targetXPlayer.name))
				TriggerClientEvent('esx:showNotification', target,  _U('got_confiscated', amount, sourceItem.label, sourceXPlayer.name))
			end
		else
			TriggerClientEvent('esx:showNotification', _source, _U('quantity_invalid'))
		end

	elseif itemType == 'item_account' then
		targetXPlayer.removeAccountMoney(itemName, amount)
		sourceXPlayer.addAccountMoney   (itemName, amount)

		TriggerClientEvent('esx:showNotification', _source, _U('you_confiscated_account', amount, itemName, targetXPlayer.name))
		TriggerClientEvent('esx:showNotification', target,  _U('got_confiscated_account', amount, itemName, sourceXPlayer.name))

	elseif itemType == 'item_weapon' then
		if amount == nil then amount = 0 end
		targetXPlayer.removeWeapon(itemName, amount)
		sourceXPlayer.addWeapon   (itemName, amount)

		TriggerClientEvent('esx:showNotification', _source, _U('you_confiscated_weapon', ESX.GetWeaponLabel(itemName), targetXPlayer.name, amount))
		TriggerClientEvent('esx:showNotification', target,  _U('got_confiscated_weapon', ESX.GetWeaponLabel(itemName), amount, sourceXPlayer.name))
	end
end)

RegisterServerEvent('sp_police:handcuff')
AddEventHandler('sp_police:handcuff', function(target)
	print("Je suis au handcuff")
	local xPlayer = ESX.GetPlayerFromId(source)
	local menotte = xPlayer.getInventoryItem("menotte").count
	local clef = xPlayer.getInventoryItem('clef_menotte').count

	if menotte == 1 then
		if xPlayer.job.name == 'police' then
			TriggerClientEvent('sp_police:handcuff', target)
		else
			TriggerClientEvent('sp_police:handcuff', target)
		end
			xPlayer.removeInventoryItem('menotte', menotte)
			xPlayer.addInventoryItem('clef_menotte', 1)
	elseif clef == 1 then
		if xPlayer.job.name == 'police' then
			TriggerClientEvent('sp_police:handcuff', target)
		else
			TriggerClientEvent('sp_police:handcuff', target)
		end
			xPlayer.removeInventoryItem('clef_menotte', 1)
			xPlayer.addInventoryItem('menotte', 1)
	else
		TriggerClientEvent('esx:showNotification', source, 'Désoler il vous faut des menottes pour faire cela')
	end

end)

ESX.RegisterUsableItem('visitor_card', function(source)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(source)
    print('visitor card')
    TriggerEvent('jackMarker:onBadge', _source)
    TriggerClientEvent('esx:showNotification', _source, 'Carte magnétique utiliser')
  end)
  
  ESX.RegisterUsableItem('police_card', function(source)
    print('police card')
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(source)
  
    TriggerEvent('jackMarker:onBadge', _source)
    TriggerClientEvent('esx:showNotification', _source, 'Carte magnétique utiliser')
  end)

RegisterServerEvent('sp_police:handcuff2')
AddEventHandler('sp_police:handcuff2', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)
	clef = xPlayer.getInventoryItem('clef_menotte').count
	if clef >= 1 then 
		xPlayer.removeInventoryItem('clef_menotte', 1)
		xPlayer.addInventoryItem('menotte', 1)
		TriggerClientEvent('sp_police:handcuffs', target)
	else
		TriggerClientEvent('esx:showNotification', source, 'Désoler il vous faut les clef des menottes pour ça')
	end
end)

RegisterServerEvent('sp_police:drag')
AddEventHandler('sp_police:drag', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'police' then
		TriggerClientEvent('sp_police:drag', target, source)
	else
		print(('sp_police: %s attempted to drag (not cop)!'):format(xPlayer.identifier))
	end
end)

RegisterServerEvent('sp_police:putInVehicle')
AddEventHandler('sp_police:putInVehicle', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'police' then
		TriggerClientEvent('sp_police:putInVehicle', target)
	else
		print(('sp_police: %s attempted to put in vehicle (not cop)!'):format(xPlayer.identifier))
	end
end)

RegisterServerEvent('sp_police:OutVehicle')
AddEventHandler('sp_police:OutVehicle', function(target)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.name == 'police' then
		TriggerClientEvent('sp_police:OutVehicle', target)
	else
		print(('sp_police: %s attempted to drag out from vehicle (not cop)!'):format(xPlayer.identifier))
	end
end)

RegisterServerEvent('sp_police:getStockItem')
AddEventHandler('sp_police:getStockItem', function(itemName, count)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local sourceItem = xPlayer.getInventoryItem(itemName)

	TriggerEvent('esx_addoninventory:getSharedInventory', Config.Account.society, function(inventory)
		local inventoryItem = inventory.getItem(itemName)

		-- is there enough in the society?
		if count > 0 and inventoryItem.count >= count then

			-- can the player carry the said amount of x item?
			if sourceItem.limit ~= -1 and (sourceItem.count + count) > sourceItem.limit then
				TriggerClientEvent('esx:showNotification', _source, _U('quantity_invalid'))
			else
				inventory.removeItem(itemName, count)
				xPlayer.addInventoryItem(itemName, count)
				TriggerClientEvent('esx:showNotification', _source, _U('have_withdrawn', count, inventoryItem.label))
			end
		else
			TriggerClientEvent('esx:showNotification', _source, _U('quantity_invalid'))
		end
	end)
end)

RegisterServerEvent('sp_police:putStockItems')
AddEventHandler('sp_police:putStockItems', function(itemName, count)
	local xPlayer = ESX.GetPlayerFromId(source)
	local sourceItem = xPlayer.getInventoryItem(itemName)

	TriggerEvent('esx_addoninventory:getSharedInventory', Config.Account.society, function(inventory)
		local inventoryItem = inventory.getItem(itemName)

		-- does the player have enough of the item?
		if sourceItem.count >= count and count > 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('have_deposited', count, inventoryItem.label))
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
		end
	end)
end)

ESX.RegisterServerCallback('sp_police:getOtherPlayerData2', function(source, cb, target)
	
		local xPlayer = ESX.GetPlayerFromId(target)
		local result = MySQL.Sync.fetchAll('SELECT firstname, lastname, sex, dateofbirth, height, wanted FROM users WHERE identifier = @identifier', {
			['@identifier'] = xPlayer.identifier
		})
		local result2 = MySQL.Sync.fetchAll('SELECT wanted FROM users WHERE identifier = @identifier', {
			['@identifier'] = xPlayer.identifier
		})

		local firstname = result[1].firstname
		local lastname  = result[1].lastname
		local sex       = result[1].sex
		local dob       = result[1].dateofbirth
		local height    = result[1].height
		print(result2[1].wanted)

		local data = {
			name      = GetPlayerName(target),
			job       = xPlayer.job,
			firstname = firstname,
			lastname  = lastname,
			sex       = sex,
			dob       = dob,
			height    = height
		}

		TriggerEvent('esx_status:getStatus', target, 'drunk', function(status)
			if status ~= nil then
				data.drunk = math.floor(status.percent)
			end
		end)

		cb(data,result2[1].wanted)
end)

ESX.RegisterServerCallback('sp_police:getOtherPlayerData', function(source, cb, target)
	if Config.EnableESXIdentity then
		local xPlayer = ESX.GetPlayerFromId(target)
		local result = MySQL.Sync.fetchAll('SELECT firstname, lastname, sex, dateofbirth, height, wanted FROM users WHERE identifier = @identifier', {
			['@identifier'] = xPlayer.identifier
		})

		local firstname = result[1].firstname
		local lastname  = result[1].lastname
		local sex       = result[1].sex
		local dob       = result[1].dateofbirth
		local height    = result[1].height
		local wanted    = result[1].wanted

		local data = {
			name      = GetPlayerName(target),
			job       = xPlayer.job,
			inventory = xPlayer.inventory,
			accounts  = xPlayer.accounts,
			weapons   = xPlayer.loadout,
			firstname = firstname,
			lastname  = lastname,
			sex       = sex,
			dob       = dob,
			height    = height,
			wanted    = wanted
		}

		TriggerEvent('esx_status:getStatus', target, 'drunk', function(status)
			if status ~= nil then
				data.drunk = math.floor(status.percent)
			end
		end)

		if Config.EnableLicenses then
			TriggerEvent('esx_license:getLicenses', target, function(licenses)
				data.licenses = licenses
				cb(data)
			end)
		else
			cb(data)
		end
	else
		local xPlayer = ESX.GetPlayerFromId(target)

		local data = {
			name       = GetPlayerName(target),
			job        = xPlayer.job,
			inventory  = xPlayer.inventory,
			accounts   = xPlayer.accounts,
			weapons    = xPlayer.loadout
		}

		TriggerEvent('esx_status:getStatus', target, 'drunk', function(status)
			if status then
				data.drunk = math.floor(status.percent)
			end
		end)

		TriggerEvent('esx_license:getLicenses', target, function(licenses)
			data.licenses = licenses
		end)

		cb(data)
	end
end)

ESX.RegisterServerCallback('sp_police:getFineList', function(source, cb, category)
	MySQL.Async.fetchAll('SELECT * FROM fine_types WHERE category = @category', {
		['@category'] = category
	}, function(fines)
		cb(fines)
	end)
end)

ESX.RegisterServerCallback('sp_police:getVehicleInfos', function(source, cb, plate)

	MySQL.Async.fetchAll('SELECT owner FROM owned_vehicles WHERE plate = @plate and fplate != 1', {
		['@plate'] = plate
	}, function(result)

		local retrivedInfo = {
			plate = plate
		}

		if result[1] then
			MySQL.Async.fetchAll('SELECT name, firstname, lastname FROM users WHERE identifier = @identifier',  {
				['@identifier'] = result[1].owner
			}, function(result2)

				if Config.EnableESXIdentity then
					retrivedInfo.owner = result2[1].firstname .. ' ' .. result2[1].lastname
				else
					retrivedInfo.owner = result2[1].name
				end

				cb(retrivedInfo)
			end)
		else
			cb(retrivedInfo)
		end
	end)
end)

ESX.RegisterServerCallback('sp_police:getVehicleFromPlate', function(source, cb, plate)
	MySQL.Async.fetchAll('SELECT owner FROM owned_vehicles WHERE plate = @plate and fplate != 1', {
		['@plate'] = plate
	}, function(result)
		if result[1] ~= nil then

			MySQL.Async.fetchAll('SELECT name, firstname, lastname FROM users WHERE identifier = @identifier',  {
				['@identifier'] = result[1].owner
			}, function(result2)

				if Config.EnableESXIdentity then
					cb(result2[1].firstname .. ' ' .. result2[1].lastname, true)
				else
					cb(result2[1].name, true)
				end

			end)
		else
			cb(_U('unknown'), false)
		end
	end)
end)

ESX.RegisterServerCallback('sp_police:getArmoryWeapons', function(source, cb)
	TriggerEvent('esx_datastore:getSharedDataStore', Config.Account.society, function(store)
		local weapons = store.get('weapons')

		if weapons == nil then
			weapons = {}
		end

		cb(weapons)
	end)
end)

ESX.RegisterServerCallback('sp_police:addArmoryWeapon', function(source, cb, weaponName, removeWeapon)
	local xPlayer = ESX.GetPlayerFromId(source)

	if removeWeapon then
		xPlayer.removeWeapon(weaponName)
		print(weaponName)
	end

	TriggerEvent('esx_datastore:getSharedDataStore', Config.Account.society, function(store)
		local weapons = store.get('weapons')

		if weapons == nil then
			weapons = {}
		end

		local foundWeapon = false

		for i=1, #weapons, 1 do
			if weapons[i].name == weaponName then
				weapons[i].count = weapons[i].count + 1
				foundWeapon = true
				break
			end
		end

		if not foundWeapon then
			table.insert(weapons, {
				name  = weaponName,
				count = 1
			})
		end

		store.set('weapons', weapons)
		cb()
	end)
end)

ESX.RegisterServerCallback('sp_police:removeArmoryWeapon', function(source, cb, weaponName)
	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.addWeapon(weaponName, 500)

	TriggerEvent('esx_datastore:getSharedDataStore', Config.Account.society, function(store)

		local weapons = store.get('weapons')

		if weapons == nil then
			weapons = {}
		end

		local foundWeapon = false

		for i=1, #weapons, 1 do
			if weapons[i].name == weaponName then
				weapons[i].count = (weapons[i].count > 0 and weapons[i].count - 1 or 0)
				foundWeapon = true
				break
			end
		end

		if not foundWeapon then
			table.insert(weapons, {
				name  = weaponName,
				count = 0
			})
		end

		store.set('weapons', weapons)
		cb()
	end)
end)

ESX.RegisterServerCallback('sp_police:buyWeapon', function(source, cb, weaponName, type, componentNum)
	local xPlayer = ESX.GetPlayerFromId(source)
	local authorizedWeapons, selectedWeapon = Config.AuthorizedWeapons[xPlayer.job.grade_name]

	for k,v in ipairs(authorizedWeapons) do
		if v.weapon == weaponName then
			selectedWeapon = v
			break
		end
	end

	if not selectedWeapon then
		print(('sp_police: %s attempted to buy an invalid weapon.'):format(xPlayer.identifier))
		cb(false)
	else
		-- Weapon
		if type == 1 then
			if xPlayer.getMoney() >= selectedWeapon.price then
				xPlayer.removeMoney(selectedWeapon.price)
				xPlayer.addWeapon(weaponName, 100)

				cb(true)
			else
				cb(false)
			end

		-- Weapon Component
		elseif type == 2 then
			local price = selectedWeapon.components[componentNum]
			local weaponNum, weapon = ESX.GetWeapon(weaponName)

			local component = weapon.components[componentNum]

			if component then
				if xPlayer.getMoney() >= price then
					xPlayer.removeMoney(price)
					xPlayer.addWeaponComponent(weaponName, component.name)

					cb(true)
				else
					cb(false)
				end
			else
				print(('sp_police: %s attempted to buy an invalid weapon component.'):format(xPlayer.identifier))
				cb(false)
			end
		end
	end
end)


ESX.RegisterServerCallback('sp_police:buyJobVehicle', function(source, cb, vehicleProps, type)
	local xPlayer = ESX.GetPlayerFromId(source)
	local price = getPriceFromHash(vehicleProps.model, xPlayer.job.grade_name, type)

	-- vehicle model not found
	if price == 0 then
		print(('sp_police: %s attempted to exploit the shop! (invalid vehicle model)'):format(xPlayer.identifier))
		cb(false)
	else
		if xPlayer.getMoney() >= price then
			xPlayer.removeMoney(price)

			MySQL.Async.execute('INSERT INTO owned_vehicles (owner, vehicle, plate, type, job, `stored`) VALUES (@owner, @vehicle, @plate, @type, @job, @stored)', {
				['@owner'] = xPlayer.identifier,
				['@vehicle'] = json.encode(vehicleProps),
				['@plate'] = vehicleProps.plate,
				['@type'] = type,
				['@job'] = xPlayer.job.name,
				['@stored'] = true
			}, function (rowsChanged)
				cb(true)
			end)
		else
			cb(false)
		end
	end
end)

ESX.RegisterServerCallback('sp_police:storeNearbyVehicle', function(source, cb, nearbyVehicles)
	local xPlayer = ESX.GetPlayerFromId(source)
	local foundPlate, foundNum

	for k,v in ipairs(nearbyVehicles) do
		local result = MySQL.Sync.fetchAll('SELECT plate FROM owned_vehicles WHERE owner = @owner AND plate = @plate AND job = @job', {
			['@owner'] = xPlayer.identifier,
			['@plate'] = v.plate,
			['@job'] = xPlayer.job.name
		})

		if result[1] then
			foundPlate, foundNum = result[1].plate, k
			break
		end
	end

	if not foundPlate then
		cb(false)
	else
		MySQL.Async.execute('UPDATE owned_vehicles SET `stored` = true WHERE owner = @owner AND plate = @plate AND job = @job', {
			['@owner'] = xPlayer.identifier,
			['@plate'] = foundPlate,
			['@job'] = xPlayer.job.name
		}, function (rowsChanged)
			if rowsChanged == 0 then
				print(('sp_police: %s has exploited the garage!'):format(xPlayer.identifier))
				cb(false)
			else
				cb(true, foundNum)
			end
		end)
	end

end)

function getPriceFromHash(hashKey, jobGrade, type)
	if type == 'helicopter' then
		local vehicles = Config.AuthorizedHelicopters[jobGrade]

		for k,v in ipairs(vehicles) do
			if GetHashKey(v.model) == hashKey then
				return v.price
			end
		end
	elseif type == 'car' then
		local vehicles = Config.AuthorizedVehicles[jobGrade]
		local shared = Config.AuthorizedVehicles['Shared']

		for k,v in ipairs(vehicles) do
			if GetHashKey(v.model) == hashKey then
				return v.price
			end
		end

		for k,v in ipairs(shared) do
			if GetHashKey(v.model) == hashKey then
				return v.price
			end
		end
	end

	return 0
end

ESX.RegisterServerCallback('sp_police:getStockItems', function(source, cb)
	TriggerEvent('esx_addoninventory:getSharedInventory', Config.Account.society, function(inventory)
		cb(inventory.items)
	end)
end)

ESX.RegisterServerCallback('sp_police:getPlayerInventory', function(source, cb)
	local xPlayer = ESX.GetPlayerFromId(source)
	local items   = xPlayer.inventory

	cb( { items = items } )
end)

AddEventHandler('playerDropped', function()
	-- Save the source in case we lose it (which happens a lot)
	local _source = source

	-- Did the player ever join?
	if _source ~= nil then
		local xPlayer = ESX.GetPlayerFromId(_source)

		-- Is it worth telling all clients to refresh?
		if xPlayer ~= nil and xPlayer.job ~= nil and xPlayer.job.name == 'police' then
			Citizen.Wait(5000)
			TriggerClientEvent('sp_police:updateBlip', -1)
		end
	end
end)

RegisterServerEvent('sp_police:spawned')
AddEventHandler('sp_police:spawned', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	if xPlayer ~= nil and xPlayer.job ~= nil and xPlayer.job.name == 'police' then
		Citizen.Wait(5000)
		TriggerClientEvent('sp_police:updateBlip', -1)
	end
end)

RegisterServerEvent('sp_police:forceBlip')
AddEventHandler('sp_police:forceBlip', function()
	TriggerClientEvent('sp_police:updateBlip', -1)
end)

AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Citizen.Wait(5000)
		TriggerClientEvent('sp_police:updateBlip', -1)
	end
end)

AddEventHandler('onResourceStop', function(resource)
	if resource == GetCurrentResourceName() then
		TriggerEvent('esx_phone:removeNumber', 'police')
	end
end)

RegisterServerEvent('sp_police:message')
AddEventHandler('sp_police:message', function(target, msg)
	TriggerClientEvent('esx:showNotification', target, msg)
end)


-- ALERTE LSPD


-- RegisterServerEvent('TireEntenduServeur')
-- AddEventHandler('TireEntenduServeur', function(gx, gy, gz)
-- 	local _source = source
-- 	local xPlayer = ESX.GetPlayerFromId(_source)
-- 	local xPlayers = ESX.GetPlayers()

-- 	for i = 1, #xPlayers, 1 do
-- 		local thePlayer = ESX.GetPlayerFromId(xPlayers[i])
-- 		if thePlayer.job.name == 'police' then
-- 			TriggerClientEvent('TireEntendu', xPlayers[i], gx, gy, gz)
-- 		end
-- 	end
-- end)


-- RegisterServerEvent('PriseAppelServeur')
-- AddEventHandler('PriseAppelServeur', function(gx, gy, gz)
-- 	local _source = source
-- 	local xPlayer = ESX.GetPlayerFromId(_source)
-- 	local name = xPlayer.getName(source)
-- 	local xPlayers = ESX.GetPlayers()

-- 	for i = 1, #xPlayers, 1 do
-- 		local thePlayer = ESX.GetPlayerFromId(xPlayers[i])
-- 		if thePlayer.job.name == 'police' then
-- 			TriggerClientEvent('PriseAppel', xPlayers[i], name)
-- 		end
-- 	end
-- end)

ESX.RegisterUsableItem("menotte", function(player)
	local xPlayer = ESX.GetPlayerFromId(player)
	TriggerClientEvent('sp_police:handcuffs', player)
	print("je passe par l'item use handcuffs")
end)

ESX.RegisterUsableItem("clef_menotte", function(player)
	local xPlayer = ESX.GetPlayerFromId(player)
	TriggerClientEvent('sp_police:handcuff22', player)
end)

RegisterServerEvent('sp_police:requestarrest')
AddEventHandler('sp_police:requestarrest', function(targetid, playerheading, playerCoords,  playerlocation)
	_source = source
	TriggerClientEvent('sp_police:getarrested', targetid, playerheading, playerCoords, playerlocation)
	TriggerClientEvent('sp_police:doarrested', _source)
end)

RegisterServerEvent('sp_police:requestrelease')
AddEventHandler('sp_police:requestrelease', function(targetid, playerheading, playerCoords,  playerlocation)
	_source = source
	TriggerClientEvent('sp_police:getuncuffed', targetid, playerheading, playerCoords, playerlocation)
	TriggerClientEvent('sp_police:douncuffing', _source)
end)