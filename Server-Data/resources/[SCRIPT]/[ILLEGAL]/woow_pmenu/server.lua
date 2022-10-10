ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('astral_menu:buy')
AddEventHandler('astral_menu:buy', function(price, item, label)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if  xPlayer.getAccount('black_money').money >= price then
		xPlayer.removeAccountMoney('black_money', price)
    		xPlayer.addInventoryItem(item, 1)
        	TriggerClientEvent('esx:showNotification', source, "Vous avez acheté 1 ~g~" .. label .. "~w~ pour ~g~" .. price .. "$ !", "", 1)
     else
          	TriggerClientEvent('esx:showNotification', source, "Pas assez ~r~d'argent sur vous", "", 1)    
    end
end)




RegisterServerEvent('astral_menu:buyweapon')
AddEventHandler('astral_menu:buyweapon', function(price, weapon, label)
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	if xPlayer.getAccount('black_money').money >= price then
		xPlayer.removeAccountMoney('black_money', price)
    	xPlayer.addWeapon(weapon, 120) -- 42 = le nombre de balles donnés
		TriggerClientEvent('esx:showNotification', source, "Vous avez acheté 1 ~g~" .. label .. "~w~ pour ~g~" .. price .. "$ !", "", 1)

    else
		TriggerClientEvent('esx:showNotification', source, "Pas assez ~r~d'argent sur vous", "", 1) 
    end
end)





RegisterServerEvent('astral:uhotenue')
AddEventHandler('astral:uhotenue', function()

	local xPlayer = ESX.GetPlayerFromId(source)
	xPlayer.removeMoney(200)

end)

ESX.RegisterServerCallback('astral:checkMoney', function(source, cb)

	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.get('black_money') >= 200 then
		cb(true)
	else
		cb(false)
	end

end)
