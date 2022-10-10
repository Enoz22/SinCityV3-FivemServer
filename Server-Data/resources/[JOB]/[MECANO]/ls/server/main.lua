ESX                = nil
PlayersHarvesting  = {}
PlayersHarvesting2 = {}
PlayersHarvesting3 = {}
PlayersCrafting    = {}
PlayersCrafting2   = {}
PlayersCrafting3   = {}

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

if Config.MaxInService ~= -1 then
  TriggerEvent('esx_service:activateService', 'ls', Config.MaxInService)
end

TriggerEvent('esx_phone:registerNumber', 'ls', _U('ls_customer'), true, true)
TriggerEvent('esx_society:registerSociety', 'ls', 'ls', 'society_ls', 'society_ls', 'society_ls', {type = 'private'})

-------------- Récupération bouteille de gaz -------------
---- Sqlut je teste ------
local function Harvest(source)

  SetTimeout(4000, function()

    if PlayersHarvesting[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local GazBottleQuantity = xPlayer.getInventoryItem('gazbottle').count

      if GazBottleQuantity >= 5 then
        TriggerClientEvent('esx:showNotification', source, _U('you_do_not_room'))
      else
                xPlayer.addInventoryItem('gazbottle', 1)

        Harvest(source)
      end
    end
  end)
end

RegisterServerEvent('esx_lsjob:startHarvest')
AddEventHandler('esx_lsjob:startHarvest', function()
  local _source = source
  PlayersHarvesting[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('recovery_gas_can'))
  Harvest(source)
end)

RegisterServerEvent('esx_lsjob:stopHarvest')
AddEventHandler('esx_lsjob:stopHarvest', function()
  local _source = source
  PlayersHarvesting[_source] = false
end)
------------ Récupération Outils Réparation --------------
local function Harvest2(source)

  SetTimeout(4000, function()

    if PlayersHarvesting2[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local FixToolQuantity  = xPlayer.getInventoryItem('fixtool').count
      if FixToolQuantity >= 5 then
        TriggerClientEvent('esx:showNotification', source, _U('you_do_not_room'))
      else
                xPlayer.addInventoryItem('fixtool', 1)

        Harvest2(source)
      end
    end
  end)
end

RegisterServerEvent('esx_lsjob:startHarvest2')
AddEventHandler('esx_lsjob:startHarvest2', function()
  local _source = source
  PlayersHarvesting2[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('recovery_repair_tools'))
  Harvest2(_source)
end)

RegisterServerEvent('esx_lsjob:stopHarvest2')
AddEventHandler('esx_lsjob:stopHarvest2', function()
  local _source = source
  PlayersHarvesting2[_source] = false
end)
----------------- Récupération Outils Carosserie ----------------
local function Harvest3(source)

  SetTimeout(4000, function()

    if PlayersHarvesting3[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local CaroToolQuantity  = xPlayer.getInventoryItem('carotool').count
            if CaroToolQuantity >= 5 then
        TriggerClientEvent('esx:showNotification', source, _U('you_do_not_room'))
      else
                xPlayer.addInventoryItem('carotool', 1)

        Harvest3(source)
      end
    end
  end)
end

RegisterServerEvent('esx_lsjob:startHarvest3')
AddEventHandler('esx_lsjob:startHarvest3', function()
  local _source = source
  PlayersHarvesting3[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('recovery_body_tools'))
  Harvest3(_source)
end)

RegisterServerEvent('esx_lsjob:stopHarvest3')
AddEventHandler('esx_lsjob:stopHarvest3', function()
  local _source = source
  PlayersHarvesting3[_source] = false
end)
------------ Craft Chalumeau -------------------
local function Craft(source)

  SetTimeout(4000, function()

    if PlayersCrafting[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local GazBottleQuantity = xPlayer.getInventoryItem('gazbottle').count

      if GazBottleQuantity <= 0 then
        TriggerClientEvent('esx:showNotification', source, _U('not_enough_gas_can'))
      else
                xPlayer.removeInventoryItem('gazbottle', 1)
                xPlayer.addInventoryItem('blowpipe', 1)

        Craft(source)
      end
    end
  end)
end

RegisterServerEvent('esx_lsjob:startCraft')
AddEventHandler('esx_lsjob:startCraft', function()
  local _source = source
  PlayersCrafting[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('assembling_blowtorch'))
  Craft(_source)
end)

RegisterServerEvent('esx_lsjob:stopCraft')
AddEventHandler('esx_lsjob:stopCraft', function()
  local _source = source
  PlayersCrafting[_source] = false
end)
------------ Craft kit Réparation --------------
local function Craft2(source)

  SetTimeout(4000, function()

    if PlayersCrafting2[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local FixToolQuantity  = xPlayer.getInventoryItem('fixtool').count
      if FixToolQuantity <= 0 then
        TriggerClientEvent('esx:showNotification', source, _U('not_enough_repair_tools'))
      else
                xPlayer.removeInventoryItem('fixtool', 1)
                xPlayer.addInventoryItem('fixkit', 1)

        Craft2(source)
      end
    end
  end)
end

RegisterServerEvent('esx_lsjob:startCraft2')
AddEventHandler('esx_lsjob:startCraft2', function()
  local _source = source
  PlayersCrafting2[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('assembling_blowtorch'))
  Craft2(_source)
end)

RegisterServerEvent('esx_lsjob:stopCraft2')
AddEventHandler('esx_lsjob:stopCraft2', function()
  local _source = source
  PlayersCrafting2[_source] = false
end)
----------------- Craft kit Carosserie ----------------
local function Craft3(source)

  SetTimeout(4000, function()

    if PlayersCrafting3[source] == true then

      local xPlayer  = ESX.GetPlayerFromId(source)
      local CaroToolQuantity  = xPlayer.getInventoryItem('carotool').count
            if CaroToolQuantity <= 0 then
        TriggerClientEvent('esx:showNotification', source, _U('not_enough_body_tools'))
      else
                xPlayer.removeInventoryItem('carotool', 1)
                xPlayer.addInventoryItem('carokit', 1)

        Craft3(source)
      end
    end
  end)
end

RegisterServerEvent('esx_lsjob:startCraft3')
AddEventHandler('esx_lsjob:startCraft3', function()
  local _source = source
  PlayersCrafting3[_source] = true
  TriggerClientEvent('esx:showNotification', _source, _U('assembling_body_kit'))
  Craft3(_source)
end)

RegisterServerEvent('esx_lsjob:stopCraft3')
AddEventHandler('esx_lsjob:stopCraft3', function()
  local _source = source
  PlayersCrafting3[_source] = false
end)

---------------------------- NPC Job Earnings ------------------------------------------------------

RegisterServerEvent('esx_lsjob:onNPCJobMissionCompleted')
AddEventHandler('esx_lsjob:onNPCJobMissionCompleted', function()

  local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)
  local total   = math.random(Config.NPCJobEarnings.min, Config.NPCJobEarnings.max);

  if xPlayer.job.grade >= 3 then
    total = total * 2
  end

  TriggerEvent('esx_addonaccount:getSharedAccount', 'society_ls', function(account)
    account.addMoney(total)
  end)

  TriggerClientEvent("esx:showNotification", _source, _U('your_comp_earned').. total)

end)

---------------------------- register usable item --------------------------------------------------
ESX.RegisterUsableItem('blowpipe', function(source)

  local _source = source
  local xPlayer  = ESX.GetPlayerFromId(source)

  xPlayer.removeInventoryItem('blowpipe', 1)

  TriggerClientEvent('esx_lsjob:onHijack', _source)
    TriggerClientEvent('esx:showNotification', _source, _U('you_used_blowtorch'))

end)

ESX.RegisterUsableItem('fixkit', function(source)

  local _source = source
  local xPlayer  = ESX.GetPlayerFromId(source)

  xPlayer.removeInventoryItem('fixkit', 1)

  TriggerClientEvent('esx_lsjob:onFixkit', _source)
    TriggerClientEvent('esx:showNotification', _source, _U('you_used_repair_kit'))

end)

ESX.RegisterUsableItem('carokit', function(source)

  local _source = source
  local xPlayer  = ESX.GetPlayerFromId(source)

  xPlayer.removeInventoryItem('carokit', 1)

  TriggerClientEvent('esx_lsjob:onCarokit', _source)
    TriggerClientEvent('esx:showNotification', _source, _U('you_used_body_kit'))

end)

----------------------------------
---- Ajout Gestion Stock Boss ----
----------------------------------

RegisterServerEvent('esx_lsjob:getStockItem')
AddEventHandler('esx_lsjob:getStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_ls', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_removed') .. count .. ' ' .. item.label)

  end)

end)

ESX.RegisterServerCallback('esx_lsjob:getStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_ls', function(inventory)
    cb(inventory.items)
  end)

end)

-------------
-- AJOUT 2 --
-------------

RegisterServerEvent('esx_lsjob:putStockItems')
AddEventHandler('esx_lsjob:putStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_ls', function(inventory)

    local item = inventory.getItem(itemName)
    local playerItemCount = xPlayer.getInventoryItem(itemName).count

    if item.count >= 0 and count <= playerItemCount then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('invalid_quantity'))
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('you_added') .. count .. ' ' .. item.label)

  end)

end)

--ESX.RegisterServerCallback('esx_lsjob:putStockItems', function(source, cb)

--  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_policestock', function(inventory)
--    cb(inventory.items)
--  end)

--end)

ESX.RegisterServerCallback('esx_lsjob:getPlayerInventory', function(source, cb)

  local xPlayer    = ESX.GetPlayerFromId(source)
  local items      = xPlayer.inventory

  cb({
    items      = items
  })

end)
