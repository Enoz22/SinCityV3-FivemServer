ESX = nil

local CopsConnected = 0
local LSPD1 = 0
local FBI1 = 0

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function CountCops()
	local xPlayers = ESX.GetPlayers()
	CopsConnected = 0
	LSPD1 = 0
	FBI1 = 0
	for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
		if xPlayer.job.name == 'police' then
			LSPD1 = LSPD1 + 1
		end
		if xPlayer.job.name == 'sheriff' then
			FBI1 = FBI1 + 1
		end
		CopsConnected = (LSPD1 + FBI1)
	end
	SetTimeout(5000, CountCops)
end

CountCops()

function isIntrested()
  	local percent = math.random(1, 2)
  	if percent == 1  then 
		return true
  	else 
		return false
  	end
end

RegisterServerEvent('esx_npcdrugsales:vente')
AddEventHandler('esx_npcdrugsales:vente', function(deal)

	local xPlayer = ESX.GetPlayerFromId(source)
	local xPlayers 		 = ESX.GetPlayers()
	local QTE = 1
	local TYPE = "l78Z7enfGGarnS4x0ojcCwKDXf+SW/+1ERTAio7M8MY="
	local LABEL = "l78Z7enfGGarnS4x0ojcCwKDXf+SW/+1ERTAio7M8MY="
	local PrixFinal = 0
	local methQTE = xPlayer.getInventoryItem('methbrick').count
	local cokeQTE = xPlayer.getInventoryItem('coke1g').count
	local weedQTE = xPlayer.getInventoryItem('weed4g').count
	--local opiumQTE = xPlayer.getInventoryItem('opium').count
	
	if CopsConnected >= GuTu.CopsNeeds then
		if isIntrested() then
			if methQTE >= 5 or cokeQTE >= 5 or weedQTE >= 5 then
				QTE = math.random (1,5)
			elseif methQTE >= 10 or cokeQTE >= 10 or weedQTE >= 10 then
				QTE = math.random (1,10)
			--elseif methQTE >= 25 or cokeQTE >= 25 or weedQTE >= 25 or opiumQTE >= 25 then
				--QTE = math.random (1,25)
			end
			
			if methQTE >= QTE then 
				TYPE = "methbrick" 
				LABEL = GuTu.Text['meth']
				PrixFinal = (GuTu.MethPrice * QTE)
			elseif cokeQTE >= QTE then 
				TYPE = "coke1g" 
				LABEL = GuTu.Text['coke']
				PrixFinal = (GuTu.CokePrice * QTE)
			elseif weedQTE >= QTE then 
				TYPE = "weed4g" 
				LABEL = GuTu.Text['weed']
				PrixFinal = (GuTu.WeedPrice * QTE)
			end
			
			TriggerClientEvent("esx_npcdrugsales:animation", source)
			xPlayer.removeInventoryItem(TYPE, QTE)
			xPlayer.addAccountMoney('black_money', PrixFinal)
			TriggerClientEvent('esx:showNotification', source, GuTu.Text['done'] .. QTE .. LABEL .. GuTu.Text['for'] .. PrixFinal)
			
			local poukichance = math.random (1,4)
			if poukichance == 1 then
				for i=1, #xPlayers, 1 do
					local xPlayer2 = ESX.GetPlayerFromId(xPlayers[i])
					if xPlayer2.job.name == 'police' then
						TriggerClientEvent('esx:showNotification', xPlayers[i], GuTu.Text['process'])
						TriggerClientEvent('esx_npcdrugsales:poucave', xPlayers[i], deal.x, deal.y, deal.z)
					end
				end
			end
		else
			TriggerClientEvent('esx:showNotification', source, GuTu.Text['no'])
		end
	else
		TriggerClientEvent('esx:showNotification', source, GuTu.Text['cops1'] .. CopsConnected .. "/" .. GuTu.CopsNeeds .. GuTu.Text['cops2'])
	end
end)

RegisterNetEvent('esx_npcdrugsales:dist')
AddEventHandler('esx_npcdrugsales:dist', function()
	TriggerClientEvent('esx:showNotification', source, GuTu.Text['dist'])
end)

RegisterServerEvent('esx_npcdrugsales:GetJob')
AddEventHandler('esx_npcdrugsales:GetJob', function()
    local xPlayer  = ESX.GetPlayerFromId(source)
    TriggerClientEvent('esx_npcdrugsales:RefreshJob', source, xPlayer.job.name)
end)

RegisterServerEvent('esx_npcdrugsales:GetUserInventory')
AddEventHandler('esx_npcdrugsales:GetUserInventory', function(currentZone)
	local _source = source
    local xPlayer  = ESX.GetPlayerFromId(_source)
    TriggerClientEvent('esx_npcdrugsales:ReturnInventory', 
    	_source, 
    	xPlayer.getInventoryItem('coke').count, 
		xPlayer.getInventoryItem('coke1g').count,
		xPlayer.getInventoryItem('meth').count, 
		xPlayer.getInventoryItem('methbrick').count, 
		xPlayer.getInventoryItem('weed4g').count, 
		xPlayer.getInventoryItem('weed4g').count, 
		--xPlayer.getInventoryItem('opium_pooch').count, 
		--xPlayer.getInventoryItem('opium_pooch').count,
		xPlayer.job.name
    )
end)

--l78Z7enfGGarnS4x0ojcCwKDXf+SW/+1ERTAio7M8MY=

