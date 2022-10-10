ESX 						   = nil
local CopsConnected       	   = 0
local PlayersHarvestingEau     = {}
local PlayersSellingEau        = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function CountCops()
	local xPlayers = ESX.GetPlayers()

	CopsConnected = 0

	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			CopsConnected = CopsConnected + 1
		end
	end

	SetTimeout(120 * 1000, CountCops)
end

CountCops()

--coke
local function HarvestEau(source)
	
	if CopsConnected < Config.RequiredCopsEau then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsEau))
		return
	end

	SetTimeout(Config.TimeToFarm, function()
		if PlayersHarvestingEau[source] then
			local xPlayer = ESX.GetPlayerFromId(source)
			local water = xPlayer.getInventoryItem('water')

			if water.limit ~= -1 and water.count >= water.limit then
				TriggerClientEvent('esx:showNotification', source, _U('inv_full_water'))
			else
				xPlayer.addInventoryItem('water', 1)
				HarvestEau(source)
			end
		end
	end)
end

RegisterServerEvent('esx_mike:startHarvestEau1')
AddEventHandler('esx_mike:startHarvestEau1', function()
	local _source = source

	if not PlayersHarvestingEau[_source] then
		PlayersHarvestingEau[_source] = true

		TriggerClientEvent('esx:showNotification', _source, _U('pickup_in_prog'))
		HarvestEau(_source)
	else
		print(('esx_mike: %s attempted to exploit the zone!'):format(GetPlayerIdentifiers(_source)[1]))
	end
end)

RegisterServerEvent('esx_mike:stopHarvestEau1')
AddEventHandler('esx_mike:stopHarvestEau1', function()
	local _source = source

	PlayersHarvestingEau[_source] = false
end)

local function SellEau(source)
	if CopsConnected < Config.RequiredCopsEau then
		TriggerClientEvent('esx:showNotification', source, _U('act_imp_police', CopsConnected, Config.RequiredCopsEau))
		return
	end

	SetTimeout(Config.TimeToSell, function()
		if PlayersSellingEau[source] then
			local _source = source
			local xPlayer = ESX.GetPlayerFromId(_source)
			local poochQuantity = xPlayer.getInventoryItem('water').count

			if poochQuantity == 0 then
				TriggerClientEvent('esx:showNotification', _source, _U('no_pouches_sale'))
			else
				xPlayer.removeInventoryItem('water', 1)
				if CopsConnected == 0 then
					xPlayer.addAccountMoney('bank', 14)
					TriggerClientEvent('esx:showNotification', _source, _U('sold_one_coke'))
				elseif CopsConnected == 1 then
					xPlayer.addAccountMoney('bank', 14)
					TriggerClientEvent('esx:showNotification', _source, _U('sold_one_coke'))
				elseif CopsConnected == 2 then
					xPlayer.addAccountMoney('bank', 14)
					TriggerClientEvent('esx:showNotification', _source, _U('sold_one_coke'))
				elseif CopsConnected == 3 then
					xPlayer.addAccountMoney('bank', 14)
					TriggerClientEvent('esx:showNotification', _source, _U('sold_one_coke'))
				elseif CopsConnected == 4 then
					xPlayer.addAccountMoney('bank', 14)
					TriggerClientEvent('esx:showNotification', _source, _U('sold_one_coke'))
				elseif CopsConnected >= 5 then
					xPlayer.addAccountMoney('bank', 14)
					TriggerClientEvent('esx:showNotification', _source, _U('sold_one_coke'))
				end

				SellEau(_source)
			end
		end
	end)
end

RegisterServerEvent('esx_mike:startSellEau1')
AddEventHandler('esx_mike:startSellEau1', function()
	local _source = source

	if not PlayersSellingEau[_source] then
		PlayersSellingEau[_source] = true

		TriggerClientEvent('esx:showNotification', _source, _U('sale_in_prog'))
		SellEau(_source)
	else
		print(('esx_mike: %s attempted to exploit the zone!'):format(GetPlayerIdentifiers(_source)[1]))
	end
end)

RegisterServerEvent('esx_mike:stopSellEau1')
AddEventHandler('esx_mike:stopSellEau1', function()
	local _source = source

	PlayersSellingEau[_source] = false
end)

RegisterServerEvent('esx_mike:GetUserInventory')
AddEventHandler('esx_mike:GetUserInventory', function(currentZone)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)

	local invdata = {
	xPlayer.getInventoryItem('water').count,
	xPlayer.job.name
	}
	TriggerClientEvent('esx_mike:ReturnInventory', _source ,invdata,currentZone)
end)

---------------------------------
--- Copyright by ikNox#6088 ---
---------------------------------

