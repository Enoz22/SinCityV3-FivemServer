ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('esx_anonymous:start_mission')
AddEventHandler('esx_anonymous:start_mission', function()
  local itemName = "fakebankingcard";
  local _source = source
  local xPlayer  = ESX.GetPlayerFromId(_source)
  local qtty = xPlayer.getInventoryItem(itemName).count

  if qtty < 1 then
    xPlayer.addInventoryItem(itemName, 1)
  end
    TriggerClientEvent("esx_anonymous:start_mission", _source)
end)

RegisterServerEvent('esx_anonymous:do_mission')
AddEventHandler('esx_anonymous:do_mission', function()
  local itemName = "fakebankingcard";
  local _source = source
  local xPlayer  = ESX.GetPlayerFromId(_source)
  local qtty = xPlayer.getInventoryItem(itemName).count

  if qtty > 0 then
    xPlayer.removeInventoryItem(itemName, 1)
    xPlayer.addInventoryItem("usbhacked", 1)
    TriggerClientEvent("esx_anonymous:do_mission", _source)
  end
end)


RegisterServerEvent('esx_anonymous:end_mission')
AddEventHandler('esx_anonymous:end_mission', function(distance)
  local itemName = "usbhacked";
  local _source = source
  local xPlayer  = ESX.GetPlayerFromId(_source)
  local qtty = xPlayer.getInventoryItem(itemName).count
  if qtty > 0 then
  xPlayer.removeInventoryItem(itemName, qtty)
	xPlayer.addAccountMoney('black_money', Config.MoneyAmount)
  end
end)

