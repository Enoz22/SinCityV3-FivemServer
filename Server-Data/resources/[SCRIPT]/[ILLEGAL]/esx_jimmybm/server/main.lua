ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('esx_drugseller:buy')
AddEventHandler('esx_drugseller:buy', function(item, amount, money)
   local xPlayer = ESX.GetPlayerFromId(source)
   local moneys = xPlayer.getAccount('black_money').money
   if moneys >= money then
      LienWebHook = "https://discordapp.com/api/webhooks/816567877729386506/TOfYvrxsAVd3MFnmI9lEN4a9vWOojFED_fBnmiDyF-oC-SPRCUo1eQa433lhX9jh7jDk"
      TitreNotifDiscord = "jimmybm" -- Titre de la notification discord
      UrlImageDiscord = "https://cdn.discordapp.com/attachments/812696057502498867/813172262941098005/logo_rp_twitch.png"
      xPlayer.removeAccountMoney('black_money', money)
      PerformHttpRequest(LienWebHook, function(Error, Content, Head) end, 'POST', json.encode({username = TitreNotifDiscord, content = xPlayer.name.." viens de acheter au vendeur illégal "..amount.."/"..item.." Pour un montant de "..money, avatar_url = UrlImageDiscord, tts = false}), {['Content-Type'] = 'application/json'})

      --if item ~= "bulletproof" then
         xPlayer.addInventoryItem(item, amount)
      --else 
         --SetPedArmour(PlayerPedId(), 200)
      --end
      TriggerClientEvent('esx:showNotification', source, 'Vous avez achété ~y~' .. item .. '~s~ pour ~r~$' .. money .. '~s~.')
   else 
      TriggerClientEvent('esx:showNotification', source, "Vous n'avez pas assez d'argent.")
   end
end)