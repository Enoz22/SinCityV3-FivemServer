local PlayersWorking = {}
local Players = {}
local ProtectionDeleteData = {}
local Moneygain = {}
local ItemSoldNbr = {}
local ItemSoldType = {}
local moneysocietygain = {}

VehicleData = {}

ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

MySQL.ready(function ()
	MySQL.Async.fetchAll("SELECT * FROM vehicles",{},
	function(vehData)
		for k,v in pairs(vehData) do
		  table.insert(VehicleData,{name = v.name,model = v.model,price = v.price,categorie = v.category})
		end
	end)
	end
)


AddEventHandler('esx:playerLoaded', function(source)
  local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)
  xPlayer.set('caution', 0)
end)

AddEventHandler('esx:playerDropped', function(source)
  local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)
  local caution = xPlayer.get('caution')
  TriggerEvent('esx_addonaccount:getAccount', 'caution', xPlayer.identifier, function(account)
    account.addMoney(caution)
  end)
end)

RegisterServerEvent('esx_jobs:setCautionInCaseOfDrop')
AddEventHandler('esx_jobs:setCautionInCaseOfDrop', function(caution)
  local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)
  xPlayer.set('caution', caution)
  print(xPlayer.firstname.." "..xPlayer.lastname.." vient d'endommager le vehicule prété pour son job et la caution est désormais de "..caution)
end)

RegisterServerEvent('esx_jobs:giveBackCautionInCaseOfDrop')
AddEventHandler('esx_jobs:giveBackCautionInCaseOfDrop', function()
  local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)
  TriggerEvent('esx_addonaccount:getAccount', 'caution', xPlayer.identifier, function(account)
    local caution = account.money
    account.removeMoney(caution)
    if caution > 0 then
      xPlayer.addAccountMoney('bank', caution)
      --TriggerClientEvent('esx:showNotification', _source, _U('bank_deposit_g').. caution .. _U('bank_deposit2'))
    else
      TriggerClientEvent('esx:showNotification', _source, _U('bank_nodeposit'))
    end
  end)
end)



local function Work(source, item, succes)
	if PlayersWorking[source] ~= false then
	  TriggerClientEvent('esx_jobs:progressbar', source, item[1].time)
	  PlayersWorking[source] = os.time()
	  SetTimeout(item[1].time, function()
		
		
		--if ProtectionDeleteData[source] == "unprotect" or ProtectionDeleteData[source] == nil then

		  local xPlayer = ESX.GetPlayerFromId(source)
		--   print(PlayersWorking[source], ProtectionDeleteData[source], xPlayer.getWeight())
		  for i=1, #item, 1 do
			local itemQtty = 0
			
			if item[i].name ~= "delivery" then
			--   print(json.encode(xPlayer.getInventoryItem(item[i].db_name)))
			  itemQtty = xPlayer.getInventoryItem(item[i].db_name).count
			  itemweight = xPlayer.getInventoryItem(item[i].db_name).weight
			--   print(itemQtty,itemweight)
			end
			
			local requiredItemQtty = 0
			if item[1].requires ~= "nothing" then
			  requiredItemQtty = xPlayer.getInventoryItem(item[1].requires).count
			end
			if item[1].requires2 then
			  requiredItem2Qtty = xPlayer.getInventoryItem(item[1].requires2).count
			end
			
			
			if item[i].name ~= "delivery" and itemQtty >= item[i].max then
			  TriggerClientEvent('esx:showNotification', source, _U('max_limit') .. item[i].name)
			elseif item[i].requires ~= "nothing" and requiredItemQtty <= 0 then
			  TriggerClientEvent('esx:showNotification', source, _U('not_enough') .. item[1].requires_name .. _U('not_enough2'))
			elseif item[i].requires2 and requiredItem2Qtty <= 0 then
			  TriggerClientEvent('esx:showNotification', source, _U('not_enough') .. item[1].requires2_name .. _U('not_enough2'))
			else
			  if item[i].name ~= "delivery" then
				-- Chances to drop the item
				if item[i].drop == 10000 then
				  xPlayer.addInventoryItem(item[i].db_name, item[i].add)
				else
				  local chanceToDrop = math.random(10000)
				  if chanceToDrop <= item[i].drop then
					xPlayer.addInventoryItem(item[i].db_name, item[i].add)
				  end
				end
			  else
					if string.match(xPlayer.job.name, "p") then
						TriggerEvent('esx_addonaccount:getSharedAccount', 'society_' ..xPlayer.job.name, function(account)
							if item[i].prixsociety then 
								xPlayer.addMoney(item[i].price)
								account.addMoney(item[i].prixsociety)
							else
								xPlayer.addMoney(item[i].price)
								account.addMoney(ESX.Math.Round(item[i].price / 100 * 30))
							end
						end)
					else
						TriggerEvent('esx_addonaccount:getSharedAccount', 'society_' ..xPlayer.job.name..'p', function(account)
							if item[i].prixsociety then 
								xPlayer.addMoney(item[i].price)
								account.addMoney(item[i].prixsociety)
							else
								xPlayer.addMoney(item[i].price)
								account.addMoney(ESX.Math.Round(item[i].price / 100 * 30))
							end
						end)
					end
				if ItemSoldType[source] == '' or ItemSoldType[source] ~= item[i].requires then
					ItemSoldNbr[source] = item[i].remove
					Moneygain[source] = item[i].price * item[i].remove
					moneysocietygain[source] = item[i].prixsociety or item[i].price
					ItemSoldType[source] = item[i].requires
				else
					ItemSoldNbr[source] = ItemSoldNbr[source] + item[i].remove or item[i].remove
					Moneygain[source] = Moneygain[source] + item[i].price * item[i].remove or item[i].price * item[i].remove
					if item[i].prixsociety then
						moneysocietygain[source] = moneysocietygain[source] + item[i].prixsociety * item[i].remove or item[i].prixsociety * item[i].remove
					else
						moneysocietygain[source] = moneysocietygain[source] + ESX.Math.Round(item[i].price / 100 * 30) * item[i].remove or ESX.Math.Round(item[i].price / 100 * 30) * item[i].remove
					end
					ItemSoldType[source] = item[i].requires
				end
			  end
			end
		  end

		  if item[1].requires ~= "nothing" then
			local itemToRemoveQtty = xPlayer.getInventoryItem(item[1].requires).count
			if itemToRemoveQtty > 0 then
			  xPlayer.removeInventoryItem(item[1].requires, item[1].remove)
			end
		  end
		  if item[1].requires2 then
			local itemToRemoveQtty = xPlayer.getInventoryItem(item[1].requires2).count
			if itemToRemoveQtty > 0 then
			  xPlayer.removeInventoryItem(item[1].requires2, item[1].remove2)
			end
		  end
		  
		  if PlayersWorking[source] ~= false then
			Work(source, item)
		  end

		--end
	  end)
	end
end

RegisterServerEvent('esx_jobs:buyItem')
AddEventHandler('esx_jobs:buyItem', function(itemName, count, price, itemLabel)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local weight = xPlayer.getInventoryItem(itemName).weight
    local qtty = xPlayer.getInventoryItem(itemName).count
    local societyAccount = nil

    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_'..xPlayer_job_name, function(account)
        societyAccount = account
      end)
    
    if societyAccount ~= nil and societyAccount.money >= price then
        if qtty < weight then
            societyAccount.removeMoney(price)
            xPlayer.addInventoryItem(itemName, 1)
            TriggerClientEvent('esx:showNotification', _source, _U('bought') .. itemLabel)
        else
            TriggerClientEvent('esx:showNotification', _source, _U('max_item'))
        end
    else
        TriggerClientEvent('esx:showNotification', _source, _U('not_enough'))
    end
end)

RegisterServerEvent('esx_jobs:craftingCoktails')
AddEventHandler('esx_jobs:craftingCoktails', function(itemValue,success)
    
	if success == true then
		local _source = source
		local _itemValue = itemValue

		TriggerClientEvent('esx:showNotification', _source, _U('assembling_cocktail'))
		
		if _itemValue == 'jagerbomb' then
			SetTimeout(10000, function()        

				local xPlayer = ESX.GetPlayerFromId(_source)

				local alephQuantity = xPlayer.getInventoryItem('energy').count
				local bethQuantity = xPlayer.getInventoryItem('jager').count

				if alephQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('energy') .. '~w~')
				elseif bethQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('jager') .. '~w~')
				else
					local chanceToMiss = math.random(100)
					if chanceToMiss <= Config.MissCraft then
						TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
						xPlayer.removeInventoryItem('energy', 2)
						xPlayer.removeInventoryItem('jager', 2)
					else
						TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('jagerbomb') .. ' ~w~!')
						xPlayer.removeInventoryItem('energy', 2)
						xPlayer.removeInventoryItem('jager', 2)
						xPlayer.addInventoryItem('jagerbomb', 1)
					end
				end
			end)
		end

		if _itemValue == 'golem' then
			SetTimeout(10000, function()        

				local xPlayer           = ESX.GetPlayerFromId(_source)

				local alephQuantity     = xPlayer.getInventoryItem('limonade').count
				local bethQuantity      = xPlayer.getInventoryItem('vodka').count
				local gimelQuantity     = xPlayer.getInventoryItem('ice').count

				if alephQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('limonade') .. '~w~')
				elseif bethQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('vodka') .. '~w~')
				elseif gimelQuantity < 1 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('ice') .. '~w~')
				else
					local chanceToMiss = math.random(100)
					if chanceToMiss <= Config.MissCraft then
						TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
						xPlayer.removeInventoryItem('limonade', 2)
						xPlayer.removeInventoryItem('vodka', 2)
						xPlayer.removeInventoryItem('ice', 1)
					else
						TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('golem') .. ' ~w~!')
						xPlayer.removeInventoryItem('limonade', 2)
						xPlayer.removeInventoryItem('vodka', 2)
						xPlayer.removeInventoryItem('ice', 1)
						xPlayer.addInventoryItem('golem', 1)
					end
				end
			end)
		end
		
		if _itemValue == 'whiskycoca' then
			SetTimeout(10000, function()        

				local xPlayer = ESX.GetPlayerFromId(_source)

				local alephQuantity = xPlayer.getInventoryItem('soda').count
				local bethQuantity = xPlayer.getInventoryItem('whisky').count

				if alephQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('soda') .. '~w~')
				elseif bethQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('whisky') .. '~w~')
				else
					local chanceToMiss = math.random(100)
					if chanceToMiss <= Config.MissCraft then
						TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
						xPlayer.removeInventoryItem('soda', 2)
						xPlayer.removeInventoryItem('whisky', 2)
					else
						TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('whiskycoca') .. ' ~w~!')
						xPlayer.removeInventoryItem('soda', 2)
						xPlayer.removeInventoryItem('whisky', 2)
						xPlayer.addInventoryItem('whiskycoca', 1)
					end
				end
			end)
		end

		if _itemValue == 'rhumcoca' then
			SetTimeout(10000, function()        

				local xPlayer = ESX.GetPlayerFromId(_source)

				local alephQuantity = xPlayer.getInventoryItem('soda').count
				local bethQuantity = xPlayer.getInventoryItem('rhum').count

				if alephQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('soda') .. '~w~')
				elseif bethQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('rhum') .. '~w~')
				else
					local chanceToMiss = math.random(100)
					if chanceToMiss <= Config.MissCraft then
						TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
						xPlayer.removeInventoryItem('soda', 2)
						xPlayer.removeInventoryItem('rhum', 2)
					else
						TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('rhumcoca') .. ' ~w~!')
						xPlayer.removeInventoryItem('soda', 2)
						xPlayer.removeInventoryItem('rhum', 2)
						xPlayer.addInventoryItem('rhumcoca', 1)
					end
				end
			end)
		end

		if _itemValue == 'vodkaenergy' then
			SetTimeout(10000, function()        

				local xPlayer = ESX.GetPlayerFromId(_source)

				local alephQuantity = xPlayer.getInventoryItem('energy').count
				local bethQuantity = xPlayer.getInventoryItem('vodka').count
				local gimelQuantity = xPlayer.getInventoryItem('ice').count

				if alephQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('energy') .. '~w~')
				elseif bethQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('vodka') .. '~w~')
				elseif gimelQuantity < 1 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('ice') .. '~w~')
				else
					local chanceToMiss = math.random(100)
					if chanceToMiss <= Config.MissCraft then
						TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
						xPlayer.removeInventoryItem('energy', 2)
						xPlayer.removeInventoryItem('vodka', 2)
						xPlayer.removeInventoryItem('ice', 1)
					else
						TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('vodkaenergy') .. ' ~w~!')
						xPlayer.removeInventoryItem('energy', 2)
						xPlayer.removeInventoryItem('vodka', 2)
						xPlayer.removeInventoryItem('ice', 1)
						xPlayer.addInventoryItem('vodkaenergy', 1)
					end
				end
			end)
		end

		if _itemValue == 'vodkafruit' then
			SetTimeout(10000, function()        

				local xPlayer = ESX.GetPlayerFromId(_source)

				local alephQuantity = xPlayer.getInventoryItem('jusfruit').count
				local bethQuantity = xPlayer.getInventoryItem('vodka').count
				local gimelQuantity = xPlayer.getInventoryItem('ice').count

				if alephQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('jusfruit') .. '~w~')
				elseif bethQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('vodka') .. '~w~')
				elseif gimelQuantity < 1 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('ice') .. '~w~')
				else
					local chanceToMiss = math.random(100)
					if chanceToMiss <= Config.MissCraft then
						TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
						xPlayer.removeInventoryItem('jusfruit', 2)
						xPlayer.removeInventoryItem('vodka', 2)
						xPlayer.removeInventoryItem('ice', 1)
					else
						TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('vodkafruit') .. ' ~w~!')
						xPlayer.removeInventoryItem('jusfruit', 2)
						xPlayer.removeInventoryItem('vodka', 2)
						xPlayer.removeInventoryItem('ice', 1)
						xPlayer.addInventoryItem('vodkafruit', 1) 
					end
				end
			end)
		end

		if _itemValue == 'rhumfruit' then
			SetTimeout(10000, function()        

				local xPlayer           = ESX.GetPlayerFromId(_source)

				local alephQuantity     = xPlayer.getInventoryItem('jusfruit').count
				local bethQuantity      = xPlayer.getInventoryItem('rhum').count
				local gimelQuantity     = xPlayer.getInventoryItem('ice').count

				if alephQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('jusfruit') .. '~w~')
				elseif bethQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('rhum') .. '~w~')
				elseif gimelQuantity < 1 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('ice') .. '~w~')
				else
					local chanceToMiss = math.random(100)
					if chanceToMiss <= Config.MissCraft then
						TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
						xPlayer.removeInventoryItem('jusfruit', 2)
						xPlayer.removeInventoryItem('rhum', 2)
						xPlayer.removeInventoryItem('ice', 1)
					else
						TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('rhumfruit') .. ' ~w~!')
						xPlayer.removeInventoryItem('jusfruit', 2)
						xPlayer.removeInventoryItem('rhum', 2)
						xPlayer.removeInventoryItem('ice', 1)
						xPlayer.addInventoryItem('rhumfruit', 1)
					end
				end
			end)
		end

		if _itemValue == 'teqpaf' then
			SetTimeout(10000, function()        

				local xPlayer           = ESX.GetPlayerFromId(_source)

				local alephQuantity     = xPlayer.getInventoryItem('limonade').count
				local bethQuantity      = xPlayer.getInventoryItem('tequila').count

				if alephQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('limonade') .. '~w~')
				elseif bethQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('tequila') .. '~w~')
				else
					local chanceToMiss = math.random(100)
					if chanceToMiss <= Config.MissCraft then
						TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
						xPlayer.removeInventoryItem('limonade', 2)
						xPlayer.removeInventoryItem('tequila', 2)
					else
						TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('teqpaf') .. ' ~w~!')
						xPlayer.removeInventoryItem('limonade', 2)
						xPlayer.removeInventoryItem('tequila', 2)
						xPlayer.addInventoryItem('teqpaf', 1)
					end
				end
			end)
		end

		if _itemValue == 'mojito' then
			SetTimeout(10000, function()        

				local xPlayer           = ESX.GetPlayerFromId(_source)

				local alephQuantity     = xPlayer.getInventoryItem('rhum').count
				local bethQuantity      = xPlayer.getInventoryItem('limonade').count
				local gimelQuantity     = xPlayer.getInventoryItem('menthe').count
				local daletQuantity      = xPlayer.getInventoryItem('ice').count

				if alephQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('rhum') .. '~w~')
				elseif bethQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('limonade') .. '~w~')
				elseif gimelQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('menthe') .. '~w~')
				elseif daletQuantity < 1 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('ice') .. '~w~')
				else
					local chanceToMiss = math.random(100)
					if chanceToMiss <= Config.MissCraft then
						TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
						xPlayer.removeInventoryItem('rhum', 2)
						xPlayer.removeInventoryItem('limonade', 2)
						xPlayer.removeInventoryItem('menthe', 2)
						xPlayer.removeInventoryItem('ice', 1)
					else
						TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('mojito') .. ' ~w~!')
						xPlayer.removeInventoryItem('rhum', 2)
						xPlayer.removeInventoryItem('limonade', 2)
						xPlayer.removeInventoryItem('menthe', 2)
						xPlayer.removeInventoryItem('ice', 1)
						xPlayer.addInventoryItem('mojito', 1)
					end
				end
			end)
		end

		if _itemValue == 'mixapero' then
			SetTimeout(10000, function()        

				local xPlayer = ESX.GetPlayerFromId(_source)

				local alephQuantity = xPlayer.getInventoryItem('bolcacahuetes').count
				local bethQuantity = xPlayer.getInventoryItem('bolnoixcajou').count
				local gimelQuantity = xPlayer.getInventoryItem('bolpistache').count
				local daletQuantity = xPlayer.getInventoryItem('bolchips').count

				if alephQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('bolcacahuetes') .. '~w~')
				elseif bethQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('bolnoixcajou') .. '~w~')
				elseif gimelQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('bolpistache') .. '~w~')
				elseif daletQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('bolchips') .. '~w~')
				else
					local chanceToMiss = math.random(100)
					if chanceToMiss <= Config.MissCraft then
						TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
						xPlayer.removeInventoryItem('bolcacahuetes', 2)
						xPlayer.removeInventoryItem('bolnoixcajou', 2)
						xPlayer.removeInventoryItem('bolpistache', 2)
						xPlayer.removeInventoryItem('bolchips', 1)
					else
						TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('mixapero') .. ' ~w~!')
						xPlayer.removeInventoryItem('bolcacahuetes', 2)
						xPlayer.removeInventoryItem('bolnoixcajou', 2)
						xPlayer.removeInventoryItem('bolpistache', 2)
						xPlayer.removeInventoryItem('bolchips', 2)
						xPlayer.addInventoryItem('mixapero', 1)
					end
				end
			end)
		end

		if _itemValue == 'metreshooter' then
			SetTimeout(10000, function()        

				local xPlayer = ESX.GetPlayerFromId(_source)

				local alephQuantity = xPlayer.getInventoryItem('jager').count
				local bethQuantity = xPlayer.getInventoryItem('vodka').count
				local gimelQuantity = xPlayer.getInventoryItem('whisky').count
				local daletQuantity = xPlayer.getInventoryItem('tequila').count

				if alephQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('jager') .. '~w~')
				elseif bethQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('vodka') .. '~w~')
				elseif gimelQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('whisky') .. '~w~')
				elseif daletQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('tequila') .. '~w~')
				else
					local chanceToMiss = math.random(100)
					if chanceToMiss <= Config.MissCraft then
						TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
						xPlayer.removeInventoryItem('jager', 2)
						xPlayer.removeInventoryItem('vodka', 2)
						xPlayer.removeInventoryItem('whisky', 2)
						xPlayer.removeInventoryItem('tequila', 2)
					else
						TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('metreshooter') .. ' ~w~!')
						xPlayer.removeInventoryItem('jager', 2)
						xPlayer.removeInventoryItem('vodka', 2)
						xPlayer.removeInventoryItem('whisky', 2)
						xPlayer.removeInventoryItem('tequila', 2)
						xPlayer.addInventoryItem('metreshooter', 1)
					end
				end
			end)
		end

		if _itemValue == 'jagercerbere' then
			SetTimeout(10000, function()        

				local xPlayer           = ESX.GetPlayerFromId(_source)

				local alephQuantity     = xPlayer.getInventoryItem('jagerbomb').count
				local bethQuantity      = xPlayer.getInventoryItem('vodka').count
				local gimelQuantity     = xPlayer.getInventoryItem('tequila').count

				if alephQuantity < 1 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('jagerbomb') .. '~w~')
				elseif bethQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('vodka') .. '~w~')
				elseif gimelQuantity < 2 then
					TriggerClientEvent('esx:showNotification', _source, _U('not_enough') .. _U('tequila') .. '~w~')
				else
					local chanceToMiss = math.random(100)
					if chanceToMiss <= Config.MissCraft then
						TriggerClientEvent('esx:showNotification', _source, _U('craft_miss'))
						xPlayer.removeInventoryItem('jagerbomb', 1)
						xPlayer.removeInventoryItem('vodka', 2)
						xPlayer.removeInventoryItem('tequila', 2)
					else
						TriggerClientEvent('esx:showNotification', _source, _U('craft') .. _U('jagercerbere') .. ' ~w~!')
						xPlayer.removeInventoryItem('jagerbomb', 1)
						xPlayer.removeInventoryItem('vodka', 2)
						xPlayer.removeInventoryItem('tequila', 2)
						xPlayer.addInventoryItem('jagercerbere', 1)
					end
				end
			end)
		end
	end
end)

RegisterServerEvent('esx_jobs:craftingJobs')
AddEventHandler('esx_jobs:craftingJobs',function(source, item, succes)
  if succes == false then 
	return
  end
  TriggerClientEvent('esx_jobs:progressbar', source, item[1].time)
  SetTimeout(item[1].time, function()
	-- print(PlayersWorking[source].." itemname "..item[1].name)
    if PlayersWorking[source] + 60000 <= os.time() then
      local xPlayer = ESX.GetPlayerFromId(source)
      for i=1, #item, 1 do
        local itemQtty = 0
        if item[i].name ~= "delivery" then
          itemQtty = xPlayer.getInventoryItem(item[i].db_name).count
		  itemweight = xPlayer.getInventoryItem(item[i].db_name).weight
        end
		--print(itemQtty,itemlimit)
        local requiredItemQtty = 0
        if item[1].requires ~= "nothing" then
          requiredItemQtty = xPlayer.getInventoryItem(item[1].requires).count
        end
		
        if item[i].name ~= "delivery" and itemQtty >= item[i].max then
          TriggerClientEvent('esx:showNotification', source, _U('max_limit') .. item[i].name)
        elseif item[i].requires ~= "nothing" and requiredItemQtty <= 0 then
          TriggerClientEvent('esx:showNotification', source, _U('not_enough') .. item[1].requires_name .. _U('not_enough2'))
        else
          if item[i].name ~= "delivery" then
            -- Chances to drop the item
            if item[i].drop == 100 then
              xPlayer.addInventoryItem(item[i].db_name, item[i].add)
            else
              local chanceToDrop = math.random(100)
              if chanceToDrop <= item[i].drop then
                xPlayer.addInventoryItem(item[i].db_name, item[i].add)
              end
            end
          end
        end
      end

      if item[1].requires ~= "nothing" then
        if item[1].requires2 then
			local item2ToRemoveQtty = xPlayer.getInventoryItem(item[1].requires2).count
			if item2ToRemoveQtty > 0 then
			  xPlayer.removeInventoryItem(item[1].requires2, item[1].remove2)
			end
		end
		local itemToRemoveQtty = xPlayer.getInventoryItem(item[1].requires).count
        if itemToRemoveQtty > 0 then
          xPlayer.removeInventoryItem(item[1].requires, item[1].remove)
        end
	  end
    end
  end)
end)

RegisterServerEvent('esx_jobs:startWork')
AddEventHandler('esx_jobs:startWork', function(item)
	local source = source
	--print(PlayersWorking[source], json.encode(item[1]))
	if PlayersWorking[source] == false or PlayersWorking[source] == nil then
		PlayersWorking[source] = os.time()
		if item[1].name == "delivery" and item[1].requires == ItemSoldType[source] then 
			Work(source, item, true)
		else
			Moneygain[source] = 0
			ItemSoldType[source] = ""
			ItemSoldNbr[source] = 0
			Work(source, item, true)
		end
	else
		if PlayersWorking[source] + 10000 <= os.time() then
			TriggerClientEvent('esx:showNotification', source, "Vous tentez de faire une tache que vous venez de lancer , veuillez retenter plus tard !")
		else
			PlayersWorking[source] = os.time()
			if item[1].name == "delivery" and item[1].requires == ItemSoldType[source] then 
				Work(source, item, true)
				Citizen.CreateThread(function()
					Wait(29500)
				end)
			else
				Moneygain[source] = 0
				ItemSoldType[source] = ""
				ItemSoldNbr[source] = 0
				if item.text then
					TriggerClientEvent('esx:showNotification', _source, item.text) 
				end
				Work(source, item, true)
			end
		end
	end
end)

RegisterServerEvent('esx_jobs:stopWork')
AddEventHandler('esx_jobs:stopWork', function()
  local source = source
  local xPlayer = ESX.GetPlayerFromId(source)
  PlayersWorking[source] = false
  if moneysocietygain[source] ~= 0 then
	  Citizen.CreateThread(function()
		local gold,itemtype,itemsold = moneysocietygain[source],ItemSoldType[source],ItemSoldNbr[source]
		Wait(60000)
		--if PlayersWorking[source] + 59000 <= os.time() or itemtype ~= ItemSoldType[source] then
			Savedata(source,gold,itemtype,itemsold)
		--end
		
	  end)
  end
end)

function Savedata(source,amount,itemtype,itemnbr)
local xPlayer = ESX.GetPlayerFromId(source)
  if amount ~= 0 then
	  if string.find(xPlayer.job.name, "p") then
		local job = xPlayer.job.name
	  else
		local job = xPlayer.job.name.."p"
	  end
	  MySQL.Async.execute('UPDATE fiscal SET Benef1 = Benef1 + @add , CAS1 = CAS1 + @add WHERE society = @society', {
								['@add'] = amount,
								['@society'] = job
							}, function(rowsChanged)
								if rowsChanged == 1 then
									print("esx_jobs: Nous avons ajouté "..amount.."$ à la société "..job.."!")
								end
							end)
	  MySQL.Async.execute('UPDATE bigmarket SET amount = amount + @add WHERE item = @item', {
								['@item'] = itemtype,
								['@add'] = itemnbr
							}, function(rowsChanged)
								if rowsChanged == 1 then
									print("esx_jobs: Nous avons ajouté "..itemnbr.." "..itemtype.." au supermarket!")
								end
							end)
  end
end
  
  
  
RegisterServerEvent('esx_jobs:caution')
AddEventHandler('esx_jobs:caution', function(cautionType, cautionAmount, spawnPoint, vehicle)
  local source = source
  local xPlayer = ESX.GetPlayerFromId(source)
  if cautionType == "take" then
    --xPlayer.removeAccountMoney('bank', cautionAmount)
    --xPlayer.set('caution', cautionAmount)
    --TriggerClientEvent('esx:showNotification', source, _U('bank_deposit_r') .. cautionAmount .. _U('caution_taken'))
    TriggerClientEvent('esx_jobs:spawnJobVehicle', source, spawnPoint, vehicle)
  elseif cautionType == "give_back" then
    --xPlayer.addAccountMoney('bank', cautionAmount)
    --xPlayer.set('caution', 0)
    --TriggerClientEvent('esx:showNotification', source, _U('bank_deposit_g') .. cautionAmount .. _U('caution_returned'))
  end
end)

RegisterServerEvent('esx_jobs:getStockItem')
AddEventHandler('esx_jobs:getStockItem', function(itemName, count, job)
  local _source = source
  local xPlayer = ESX.GetPlayerFromId(_source)
  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_'..job, function(inventory)
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

ESX.RegisterServerCallback('esx_jobs:getStockItems', function(source, cb , job)
  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_'..job, function(inventory)
    cb(inventory.items)
  end)
end)

ESX.RegisterServerCallback('esx_jobs:vehiclesdata', function(source, cb)
    cb(VehicleData)
end)

ESX.RegisterServerCallback('esx_vehicleshop:buyCarDealerVehicle', function(source, cb, model, job, garage)
	local xPlayer = ESX.GetPlayerFromId(source)

	if xPlayer.job.grade_name == 'boss' then
		local modelPrice

		for k,v in ipairs(VehicleData) do
			if model == v.model then
				modelPrice = v.price
				break
			end
		end

		if modelPrice then
			TriggerEvent('esx_addonaccount:getSharedAccount', 'society_'..job, function(account)
				if account.money >= modelPrice then
					account.removeMoney(modelPrice)

					MySQL.Async.execute('INSERT INTO vehicles (vehicle, job ,price, garage) VALUES (@vehicle, @job @price,@garage)', {
						['@vehicle'] = model,
						['@price'] = modelPrice,
						['@garage'] = 1,
						['@job'] = job,
					}, function(rowsChanged)
						cb(true)
					end)
				else
					cb(false)
				end
			end)
		end
	end
end)

RegisterServerEvent('esx_jobs:putStockItems')
AddEventHandler('esx_jobs:putStockItems', function(itemName, count, job)
  local xPlayer = ESX.GetPlayerFromId(source)
  local sourceItem = xPlayer.getInventoryItem(itemName)
  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_'..job, function(inventory)
    local inventoryItem = inventory.getItem(itemName)
    if sourceItem.count >= count and count > 0 then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, _U('quantity_invalid'))
    end
    TriggerClientEvent('esx:showNotification', xPlayer.source, _U('added') .. count .. ' ' .. item.label)
  end)
end)

ESX.RegisterServerCallback('esx_jobs:getStockItems', function(source, cb , job)
  TriggerEvent('esx_addoninventory:getSharedInventory','society_'..job, function(inventory)
    cb(inventory.items)
  end)
end)

ESX.RegisterServerCallback('esx_jobs:getPlayerInventory', function(source, cb)
  local xPlayer    = ESX.GetPlayerFromId(source)
  local items      = xPlayer.inventory
  cb({
    items      = items
  })
end)

local function RegisterPrivateEntreprise()
	for k,v in pairs(ConfigJob.Plates) do
		if ConfigJob.MaxInService ~= -1 then
			TriggerEvent('esx_service:activateService', k..'p', 20)
		end
		TriggerEvent('esx_phone:registerNumber', k..'p', v.PrivateName, true, true)
		TriggerEvent('esx_society:registerSociety', k..'p', k..'p', 'society_'..k..'p', 'society_'..k..'p', 'society_'..k..'p', {type = 'private'})
	end
end