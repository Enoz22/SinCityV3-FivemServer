ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterServerEvent('dsp_hunting:giveBackBait')
AddEventHandler('dsp_hunting:giveBackBait', function(zozo)
local xPlayer = ESX.GetPlayerFromId(source)
if zozo == 1 then
xPlayer.addInventoryItem('hunt_bait',1)
else
xPlayer.removeInventoryItem('hunt_bait',1)
end

end)
ESX.RegisterUsableItem('hunt_bait', function(source) 
         local xPlayer = ESX.GetPlayerFromId(source)
            
            TriggerClientEvent('dsp_hunting:placingBait', source)
            Citizen.Wait(7000)
            
            hasPlacedBaitRecently = true
			

            Citizen.Wait(math.random(30000,90000))                                                                      --Temps de spawn après avoir posé le bait--
            
            TriggerClientEvent('dsp_hunting:spawningAnimals',source)
			
    
end)


RegisterServerEvent('dsp_hunting:requestReward')
AddEventHandler('dsp_hunting:requestReward', function(animal)
	local xPlayer = ESX.GetPlayerFromId(source)
    local text = 'Récupéré : ~n~'
    local randomDrop = math.random(1,10000)
    local maxLoot = 0

    for k,v in pairs(animal.items) do
        local itemName = v.item
        local count = math.random(v.min, v.max)
        
        if (randomDrop <= v.drop) then    
            if (maxLoot < 2) then     
                    text = text..""..Language["harvestMessage"] .. count .. " " .. v.label.."~w~ ~n~"
                    xPlayer.addInventoryItem(itemName, count)
                    if itemName ~= "meat_raw" then
                    maxLoot = maxLoot+count
                    end
                    --print (v.label.." x".. count) 
                    --print(maxLoot)
            end
        end
    end
    maxLoot = 0
            
    TriggerClientEvent('dsp_hunting:showMessage', source, text)
end)