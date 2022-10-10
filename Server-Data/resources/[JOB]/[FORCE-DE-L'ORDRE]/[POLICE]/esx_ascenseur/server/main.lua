ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
  ESX.RegisterUsableItem('visitor_card', function(source)
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(source)
    print('visitor card')
    TriggerClientEvent('jackMarker:onBadge', _source)
    TriggerClientEvent('esx:showNotification', _source, 'Carte magnétique utiliser')
  end)
  
  ESX.RegisterUsableItem('police_card', function(source)
    print('police card')
    local _source = source
    local xPlayer  = ESX.GetPlayerFromId(source)
  
    TriggerClientEvent('jackMarker:onBadge', _source)
    TriggerClientEvent('esx:showNotification', _source, 'Carte magnétique utiliser')
  end)