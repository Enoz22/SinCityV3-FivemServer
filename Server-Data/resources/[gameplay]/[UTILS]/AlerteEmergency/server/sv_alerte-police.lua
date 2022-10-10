---------------------------------------------------------------------------------------------------------------------------------------------------------------


ESX = nil
policeList = {}
sheriffList = {}

local AlertSend = {

     police = {
         job = {
         "police",
         "offpolice",
         "fbi"
         },
         jobGrade = {
             "cadet",
             "officier",
             
         }
     },
     Sheriff = {
 
     }
 
 }

---------------------------------------------------------------------------------------------------------------------------------------------------------------


TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

---------------------------------------------------------------------------------------------------------------------------------------------------------------

RegisterServerEvent('Sincity_Police:playerConnecting')
AddEventHandler('Sincity_Police:playerConnecting', function()
     local id = source
     local player = ESX.GetPlayerFromId(id)
     
     if player.job.name == 'police' then
          table.insert(policeList, id)
     elseif player.job.name == 'sheriff' then
          table.insert(sheriffList, id)
     end
end)

---------------------------------------------------------------------------------------------------------------------------------------------------------------

AddEventHandler('playerDropping', function(name, setKickReason, defferal)
     local id = source
     local player = ESX.GetPlayerFromId(id)

     if player.job.name == 'police' then
          for i = 1, #policeList, 1 do
               if policeList[i] == id then
                    table.remove(policeList,i)
                    return
               end
          end
     elseif player.job.name == 'sheriff' then
          for i = 1, #sheriffList, 1 do
               if sheriffList[i] == id then
                    table.remove(sheriffList,i)
                    return
               end
          end
     end
end)

---------------------------------------------------------------------------------------------------------------------------------------------------------------


-- RegisterServerEvent('Sincity_Police:BagarreEntenduServeur')
-- AddEventHandler('Sincity_Police:BagarreEntenduServeur', function(gx, gy, gz)
--      -- local _source = source
--      -- local xPlayer = ESX.GetPlayerFromId(_source)
--      -- local xPlayers = ESX.GetPlayers()

--      -- for i = 1, #xPlayers, 1 do
--      --      local thePlayer = ESX.GetPlayerFromId(xPlayers[i])
--      --      if thePlayer.job.name == 'police' then
--      --           TriggerClientEvent('Sincity_Police:BagarreEntendu', xPlayers[i], gx, gy, gz)
--      --      end
--      -- end

--      if policeList[1] == nil then
--           local xPlayers = ESX.GetPlayers()
          
--           for i = 1, #xPlayers, 1 do
--                local player = ESX.GetPlayerFromId(xPlayers[i])
               
--                if player.job.name == 'police' then
--                     table.insert(policeList, xPlayers[i])
--                elseif player.job.name == 'sheriff' then
--                     table.insert(sheriffList, xPlayers[i])
--                end
--           end
--      end
     
--      for i = 1, #policeList, 1 do
--           TriggerClientEvent('Sincity_Police:BagarreEntendu', policeList[i], gx, gy, gz)
--      end     
--      for i = 1, #sheriffList, 1 do
--           TriggerClientEvent('Coste_Sheriff:BagarreEntendu', sheriffList[i], gx, gy, gz)
--      end
-- end)


---------------------------------------------------------------------------------------------------------------------------------------------------------------


-- RegisterServerEvent('Sincity_Police:TireEntenduServeur')
-- AddEventHandler('Sincity_Police:TireEntenduServeur', function(gx, gy, gz)
--      -- local _source = source
--      -- local xPlayer = ESX.GetPlayerFromId(_source)
--      -- local xPlayers = ESX.GetPlayers()

--      -- for i = 1, #xPlayers, 1 do
--      --      local thePlayer = ESX.GetPlayerFromId(xPlayers[i])
--      --      if thePlayer.job.name == 'police' then
--      --           TriggerClientEvent('Sincity_Police:TireEntendu', xPlayers[i], gx, gy, gz)
--      --      end
--      -- end

--      if next(policeList) == nil then
--           local xPlayers = ESX.GetPlayers()
          
--           for i = 1, #xPlayers, 1 do
--                local player = ESX.GetPlayerFromId(xPlayers[i])
               
--                if player.job.name == 'police' then
--                     table.insert(policeList, xPlayers[i])
--                elseif player.job.name == 'sheriff' then
--                     table.insert(sheriffList, xPlayers[i])
--                end
--           end
--      end
-- 	 print(json.encode(policeList))
--      for i = 1, #policeList, 1 do
--           TriggerClientEvent('Sincity_Police:TireEntendu', policeList[i], gx, gy, gz)
--      end     
--      for i = 1, #sheriffList, 1 do
--           TriggerClientEvent('Coste_Sheriff:TireEntendu', sheriffList[i], gx, gy, gz)
--      end
-- end)


RegisterServerEvent('Sincity_Police:DrugVuServ')
AddEventHandler('Sincity_Police:DrugVuServ', function(gx, gy, gz)
     -- local _source = source
     -- local xPlayer = ESX.GetPlayerFromId(_source)
     -- local xPlayers = ESX.GetPlayers()

     -- for i = 1, #xPlayers, 1 do
     --      local thePlayer = ESX.GetPlayerFromId(xPlayers[i])
     --      if thePlayer.job.name == 'police' then
     --           TriggerClientEvent('Sincity_Police:TireEntendu', xPlayers[i], gx, gy, gz)
     --      end
     -- end

     if next(policeList) == nil then
          local xPlayers = ESX.GetPlayers()
          
          for i = 1, #xPlayers, 1 do
               local player = ESX.GetPlayerFromId(xPlayers[i])
               
               if player.job.name == 'police' then
                    table.insert(policeList, xPlayers[i])
               elseif player.job.name == 'sheriff' then
                    table.insert(sheriffList, xPlayers[i])
               end
          end
     end
     print(json.encode(policeList))
     for i = 1, #policeList, 1 do
          TriggerClientEvent('Sincity_Police:DrugVu', policeList[i], gx, gy, gz)
     end     
     for i = 1, #sheriffList, 1 do
          TriggerClientEvent('Coste_Sheriff:DrugVu', sheriffList[i], gx, gy, gz)
     end
end)

---------------------------------------------------------------------------------------------------------------------------------------------------------------


RegisterServerEvent('Sincity_Police:VolEntenduServeur')
AddEventHandler('Sincity_Police:VolEntenduServeur', function(gx, gy, gz)
     -- local _source = source
     -- local xPlayer = ESX.GetPlayerFromId(_source)
     -- local xPlayers = ESX.GetPlayers()

     -- for i = 1, #xPlayers, 1 do
     --      local thePlayer = ESX.GetPlayerFromId(xPlayers[i])
     --      if thePlayer.job.name == 'police' then
     --           TriggerClientEvent('Sincity_Police:VolEntendu', xPlayers[i], gx, gy, gz)
     --      end
     -- end

     if next(policeList) == nil then
          local xPlayers = ESX.GetPlayers()
          
          for i = 1, #xPlayers, 1 do
               local player = ESX.GetPlayerFromId(xPlayers[i])
               
               if player.job.name == 'police' then
                    table.insert(policeList, xPlayers[i])
               elseif player.job.name == 'sheriff' then
                    table.insert(sheriffList, xPlayers[i])
               end
          end
     end
     
     for i = 1, #policeList, 1 do
          TriggerClientEvent('Sincity_Police:VolEntendu', policeList[i], gx, gy, gz)
     end     
     for i = 1, #sheriffList, 1 do
          TriggerClientEvent('Coste_Sheriff:VolEntendu', sheriffList[i], gx, gy, gz)
     end
end)


---------------------------------------------------------------------------------------------------------------------------------------------------------------


RegisterServerEvent('Sincity_Police:PriseAppelServeur')
AddEventHandler('Sincity_Police:PriseAppelServeur', function()
     local _source = source
     local xPlayer = ESX.GetPlayerFromId(_source)
     local name = xPlayer.getName(source)
     -- local xPlayers = ESX.GetPlayers()

     -- for i = 1, #xPlayers, 1 do
     --      local thePlayer = ESX.GetPlayerFromId(xPlayers[i])
     --      if thePlayer.job.name == 'police' then
     --           TriggerClientEvent('Sincity_Police:PriseAppel', xPlayers[i], name)
     --      end
     -- end

     for i = 1, #policeList, 1 do
          TriggerClientEvent('Sincity_Police:PriseAppel', name)
     end     
     for i = 1, #sheriffList, 1 do
          TriggerClientEvent('Coste_Sheriff:PriseAppel', name)
     end
end)


---------------------------------------------------------------------------------------------------------------------------------------------------------------