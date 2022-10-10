ESX = nil 
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("shisha:pay")
AddEventHandler("shisha:pay", function(entity)
local xPlayer = ESX.GetPlayerFromId(source)

--xPlayer.removeMoney(20)
end)

RegisterServerEvent("eff_smokes")
AddEventHandler("eff_smokes", function(entity)
	TriggerClientEvent("c_eff_smokes", -1, entity)
end)

ESX.RegisterUsableItem('opium1g', function(playerId)
    local xPlayer = ESX.GetPlayerFromId(playerId)
    xPlayer.removeInventoryItem('opium1g', 1)
	TriggerClientEvent('esx:showNotification', ('~g~Chicha installer.'))
	TriggerClientEvent("only_hooka:spawn", -1, entity)
end)

RegisterCommand("deletechicha", function(source, args, rawCommand)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent("only_hooka:delete", -1, entity)
	xPlayer.addInventoryItem("opium1g", 1)
end)