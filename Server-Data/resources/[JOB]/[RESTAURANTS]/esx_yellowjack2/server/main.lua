ESX = nil
local PlayersTransforming  = {}
local PlayersSelling       = {}
local PlayersHarvesting = {}
local vine = 1
local jus = 1
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
	TriggerEvent('esx_service:activateService', Config.NameJob, Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', Config.NameJob, Config.NameJob, true, true)
TriggerEvent('esx_society:registerSociety', Config.NameJob, Config.NameJob, Config.NameEntreprise, Config.NameEntreprise, Config.NameEntreprise, {type = 'private'})

local function Recolte(source, zone)
	local xPlayer  = ESX.GetPlayerFromId(source)
	local item = Config.Zones.Recolte.NomItem
	if PlayersHarvesting[source] == true then
		if zone == "Recolte" then
			local itemQuantity = xPlayer.getInventoryItem(item).count
			SetTimeout(Config.Zones.Recolte.TimerItem, function()
				if itemQuantity < Config.Zones.Recolte.MaxInventoryItem then
					xPlayer.addInventoryItem(item, Config.Zones.Recolte.NumberItem)
					Recolte(source, zone)
				else
					TriggerClientEvent('esx:showNotification', source, Config.Zones.Recolte.MessageTuPeuxPu)
					return
				end
			end)
		end
	end
end

RegisterServerEvent('esx_yellowjack:startHarvest')
AddEventHandler('esx_yellowjack:startHarvest', function(zone)
	local _source = source
	PlayersHarvesting[_source]=true
	TriggerClientEvent('esx:showNotification', _source, Config.Zones.Recolte.MessageAction)  
	Recolte(_source,zone)
end)

RegisterServerEvent('esx_yellowjack:stopHarvest')
AddEventHandler('esx_yellowjack:stopHarvest', function()
	local _source = source
	
	if PlayersHarvesting[_source] == true then
		PlayersHarvesting[_source]=false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone~s~.')
	else
		PlayersHarvesting[_source]=true
	end
end)

local function Transform(source, zone)
	local xPlayer  = ESX.GetPlayerFromId(source)
	local itemRecolte = Config.Zones.Recolte.NomItem
	local itemTraitement = Config.Zones.Traitement.NomItem
	if PlayersTransforming[source] == true then
		if zone == "Traitement" then
			local itemQuantity = xPlayer.getInventoryItem(itemRecolte).count
			local itemQuantity2 = xPlayer.getInventoryItem(itemTraitement).count
			SetTimeout(Config.Zones.Traitement.TimerItem, function()
				if itemQuantity2 < Config.Zones.Traitement.MaxInventoryItem and itemQuantity > 0 then
					xPlayer.removeInventoryItem(itemRecolte, Config.Zones.Traitement.NumberDelItem)
					xPlayer.addInventoryItem(itemTraitement, Config.Zones.Traitement.NumberItem)
					Transform(source, zone)
				else
					TriggerClientEvent('esx:showNotification', source, Config.Zones.Traitement.MessageTuPeuxPu)
					return
				end
			end)
		end
	end
end

RegisterServerEvent('esx_yellowjack:startTransform')
AddEventHandler('esx_yellowjack:startTransform', function(zone)
	local _source = source
	PlayersTransforming[_source]=true
	TriggerClientEvent('esx:showNotification', _source, Config.Zones.Traitement.MessageAction) 
	Transform(_source,zone)
end)

RegisterServerEvent('esx_yellowjack:stopTransform')
AddEventHandler('esx_yellowjack:stopTransform', function()

	local _source = source
	
	if PlayersTransforming[_source] == true then
		PlayersTransforming[_source] = false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone~s~.')
		
	else
		PlayersTransforming[_source] = true
	end
end)

local function Sell(source, zone)
	local xPlayer  = ESX.GetPlayerFromId(source)
	local itemTraitement = Config.Zones.Traitement.NomItem
	if PlayersSelling[source] == true then
		if zone == "Vente" then
			local itemQuantity = xPlayer.getInventoryItem(itemTraitement).count
			SetTimeout(Config.Zones.Vente.TimerItem, function()
				if itemQuantity >= Config.Zones.Vente.MinInventoryItem then
					local messageAEnvoyerAuMec = Config.Zones.Vente.TasGagne..' ~y~$'..Config.Zones.Vente.PrixDuTruc..'~s~'
					xPlayer.removeInventoryItem(itemTraitement, Config.Zones.Vente.NumberDelItem)
					local argent = Config.Zones.Vente.PrixDuTruc
					local societyAccount = nil

					TriggerEvent('esx_addonaccount:getSharedAccount', Config.NameEntreprise, function(account)
						societyAccount = account
					end)

					if societyAccount ~= nil then
						xPlayer.addMoney(argent)
						societyAccount.addMoney(argent)
						TriggerClientEvent('esx:showNotification', xPlayer.source, messageAEnvoyerAuMec)
						Sell(source, zone)
					end
				else
					TriggerClientEvent('esx:showNotification', source, Config.Zones.Vente.MessageTuPeuxPu)
					return
				end
			end)
		end
	end
end

RegisterServerEvent('esx_yellowjack:startSell')
AddEventHandler('esx_yellowjack:startSell', function(zone)

	local _source = source
	if PlayersSelling[_source] == false then
		TriggerClientEvent('esx:showNotification', _source, '~r~Eloignez-vous puis revenez...~w~')
		PlayersSelling[_source] = false
	else
		TriggerClientEvent('esx:showNotification', _source, 'Revente en cours...')
		Sell(_source, zone)
	end

end)

RegisterServerEvent('esx_yellowjack:stopSell')
AddEventHandler('esx_yellowjack:stopSell', function()

	local _source = source
	if PlayersSelling[_source] == true then
		PlayersSelling[_source] = false
		TriggerClientEvent('esx:showNotification', _source, 'Vous sortez de la ~r~zone~s~.')
		
	else
		TriggerClientEvent('esx:showNotification', _source, 'Vous pouvez ~g~vendre~s~.')
		PlayersSelling[_source] = true
	end

end)

RegisterServerEvent('esx_yellowjack:getStockItem')
AddEventHandler('esx_yellowjack:getStockItem', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', Config.NameEntreprise, function(inventory)

		local item = inventory.getItem(itemName)

		if item.count >= count then
			inventory.removeItem(itemName, count)
			xPlayer.addInventoryItem(itemName, count)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, 'Quantité invalide')
		end

		TriggerClientEvent('esx:showNotification', xPlayer.source, 'Vous avez retiré ~b~'..count..'..~s~ ~y~'..item.label..'~s~.')

	end)

end)

ESX.RegisterServerCallback('esx_yellowjack:getStockItems', function(source, cb)

	TriggerEvent('esx_addoninventory:getSharedInventory', Config.NameEntreprise, function(inventory)
		cb(inventory.items)
	end)

end)

RegisterServerEvent('esx_yellowjack:putStockItems')
AddEventHandler('esx_yellowjack:putStockItems', function(itemName, count)

	local xPlayer = ESX.GetPlayerFromId(source)

	TriggerEvent('esx_addoninventory:getSharedInventory', Config.NameEntreprise, function(inventory)

		local item = inventory.getItem(itemName)

		if item.count >= 0 then
			xPlayer.removeInventoryItem(itemName, count)
			inventory.addItem(itemName, count)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, 'Quantité invalide')
		end

		TriggerClientEvent('esx:showNotification', xPlayer.source, 'Vous avez ajouté ~b~'..count..'~s~ ~y~'..item.label..'~s~.')

	end)
end)

ESX.RegisterServerCallback('esx_yellowjack:getPlayerInventory', function(source, cb)

	local xPlayer    = ESX.GetPlayerFromId(source)
	local items      = xPlayer.inventory

	cb({
		items      = items
	})

end)

if Config.ItemToUse then

	ESX.RegisterUsableItem(Config.NomItemToUse, function(source)
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem(Config.NomItemToUse, 1)
		xPlayer.addInventoryItem(Config.NomItemGive, Config.NombreItemGive)
	end)

end