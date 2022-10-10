--------------------------------------------
------ Napisane przez wojtek.cfg#0349 ------
----------------- ©  2019 ------------------
--------------------------------------------

local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
}

ESX                      	= nil

local Akt         		= nil
local CurrentActionMsg   	= ''
local CurrentActionData	= {}
local JestWMarkerze 		= false
local OstStrefa          	= nil
local Czaspozostaly		= 0
local PlayerData      	= {}
local onDuty 				= false
local cd 					= false
local majuznoty			= false
local as1					= false
local as2					= false
local sprzataj			= false
local hardblock			= false
local an 					= 'anim@amb@business@coc@coc_unpack_cut_left@'
local animacja 			= "coke_cut_v4_coccutter"
local nozhash				= GetHashKey('prop_knife')
local nowhash				= GetHashKey('prop_knife')
autosell 					= true


  	  	blipresto = AddBlipForCoord(-1195.61, -893.14, 13)
		SetBlipSprite (blipresto, 273)
		SetBlipDisplay(blipresto, 4)
		SetBlipScale  (blipresto, 0.6)
		SetBlipColour (blipresto, 0)
		SetBlipAsShortRange(blipresto, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString('Restaurant')
		EndTextCommandSetBlipName(blipresto)


Citizen.CreateThread(function ()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
		PlayerData = ESX.GetPlayerData()
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer

	ESX.TriggerServerCallback('esx_resto:firstload', function(value)
		autosell = value
		print(value)
	end)

end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
	odswiezblipy()
end)

RegisterNetEvent('esx_resto:updateauto')
AddEventHandler('esx_resto:updateauto', function(value)
	print(value,autosell)
	autosell = value
end)

function IsJobTrue()
	if PlayerData ~= nil then
		local IsJobTrue = false
		if PlayerData.job ~= nil and PlayerData.job.name == 'resto' then
			IsJobTrue = true
		end
		return IsJobTrue
	end
end

RegisterNetEvent('esx_resto:updatevalue')
AddEventHandler('esx_resto:updatevalue', function(AutosellServValue)
	local autosell = AutosellServValue
end)

function odswiezblipy()

	if PlayerData.job ~= nil and PlayerData.job.name == 'resto' then
		--
	else
		RemoveBlip(blipypracy)
	end
end


function OpenRestoActionsMenu()

	if as1 == false then
		as1 = true
	end

	local elements = {
		{label = "Deposer", value = 'put_stock'},
	}
	if PlayerData.job ~= nil and PlayerData.job.grade_name ~= 'recrue' then
		table.insert(elements, {label = "Retirer", value = 'get_stock'})

		if autosell == true then
			table.insert(elements, {label = "Désactiver la vente auto", value = 'autosell'})
		else
			table.insert(elements, {label = "Activer la vente auto", value = 'autosell'})
		end

	end

	table.insert(elements, {label = "Facture", value = 'facture'})

	if PlayerData.job ~= nil and PlayerData.job.grade_name == 'boss' then
		table.insert(elements, {label = "Menu Patron", value = 'boss_actions'})
	end

	
	ESX.UI.Menu.CloseAll()
	
	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'resto_actions',
		{
			title    = 'Menu Resto',
			elements = elements
		},
		function(data, menu)

			if data.current.value == 'put_stock' then
				if as1 == true then
					as1 = false
				end
				OpenPutStocksMenu()
			end

			if data.current.value == 'get_stock' then
				if as1 == true then
					as1 = false
				end
				OpenGetStocksMenu()
			end


			if data.current.value == 'autosell' then
				TriggerServerEvent('esx_resto:updateautosell')
				menu.close()
				Wait(1000)
				OpenRestoActionsMenu()
			end

			if data.current.value == 'facture' then
				ESX.UI.Menu.Open(
					'dialog', GetCurrentResourceName(), 'ammende',
					{
						title = 'Donner une Facture'
					},
					function(data, menu)

						local amount = tonumber(data.value)

						if amount == nil or amount <= 0 then
							ESX.ShowNotification('Montant invalide')
						else
							menu.close()

							local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

							if closestPlayer == -1 or closestDistance > 4.0 then
								ESX.ShowNotification('Pas de joueurs proche')
							else
								local playerPed        = GetPlayerPed(-1)

								Citizen.CreateThread(function()
									TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TIME_OF_DEATH', 0, true)
									Citizen.Wait(5000)
									ClearPedTasks(playerPed)
									TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'society_resto', 'resto', amount)
									ESX.ShowNotification('Facture envoyée')							

								end)
							end
						end
					end,
					function(data, menu)
						menu.close()
					end)
			end



			if data.current.value == 'boss_actions' then
				if as1 == true then
					as1 = false
				end
				TriggerEvent('esx_society:openBossMenu', 'resto', function(data, menu)
					menu.close()
				end)
			end


		end,
		function(data, menu)
			menu.close()
			CurrentAction     = 'resto_actions_menu'
			CurrentActionMsg  = 'Appuyez sur ~INPUT_CONTEXT~ pour accéder au menu.'
			CurrentActionData = {}
			if as1 == true then
				as1 = false
			end
		end
		)
end


function OpenAutosellActionsMenu()


	ESX.TriggerServerCallback('esx_resto:getStockItems', function(items)

		--print(json.encode(items))

		local priceburger = 200
		local pricewater = 20
		local pricecupcake = 50
		local pricedonut = 50
		local pricesoda = 75
		local pricefrite = 60
		local pricebeer = 50
		local pricejager = 120
		local pricetequila = 100
		local priceraisin = 25

		local elements = {}

		for i=1, #items, 1 do

			local item = items[i]

			if item.count > 0 and item.name == "wburger" then
				table.insert(elements, {label = item.label .. ' x' .. item.count .. ' $'..priceburger, type = 'item_standard', value = item.name})
			end
			if item.count > 0 and item.name == "menuburger1" then
				table.insert(elements, {label = item.label .. ' x' .. item.count .. ' $'..priceburger, type = 'item_standard', value = item.name})
			end
			if item.count > 0 and item.name == "menuburger2" then
				table.insert(elements, {label = item.label .. ' x' .. item.count .. ' $'..priceburger, type = 'item_standard', value = item.name})
			end
			if item.count > 0 and item.name == "wburger" then
				table.insert(elements, {label = item.label .. ' x' .. item.count .. ' $'..priceburger, type = 'item_standard', value = item.name})
			end
			if item.count > 0 and item.name == "wburger" then
				table.insert(elements, {label = item.label .. ' x' .. item.count .. ' $'..priceburger, type = 'item_standard', value = item.name})
			end
			if item.count > 0 and item.name == "soda" then
				table.insert(elements, {label = item.label .. ' x' .. item.count .. ' $'..pricesoda, type = 'item_standard', value = item.name})
			end
			if item.count > 0 and item.name == "water" then
				table.insert(elements, {label = item.label .. ' x' .. item.count .. ' $'..pricewater, type = 'item_standard', value = item.name})
			end
			if item.count > 0 and item.name == "cupcake" then
				table.insert(elements, {label = item.label .. ' x' .. item.count .. ' $'..pricecupcake, type = 'item_standard', value = item.name})
			end
			if item.count > 0 and item.name == "donut2" then
				table.insert(elements, {label = item.label .. ' x' .. item.count .. ' $'..pricedonut, type = 'item_standard', value = item.name})
			end
			if item.count > 0 and item.name == "frite" then
				table.insert(elements, {label = item.label .. ' x' .. item.count .. ' $'..pricefrite, type = 'item_standard', value = item.name})
			end
			if item.count > 0 and item.name == "beer" then
				table.insert(elements, {label = item.label .. ' x' .. item.count .. ' $'..pricebeer, type = 'item_standard', value = item.name})
			end
			if item.count > 0 and item.name == "jus_raisin" then
				table.insert(elements, {label = item.label .. ' x' .. item.count .. ' $'..priceraisin, type = 'item_standard', value = item.name})
			end

		end

		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'stocks_menu',
			{
				title    = 'Resto Stock',
				elements = elements
			},
			function(data, menu)

				local itemName = data.current.value

				ESX.UI.Menu.Open(
					'dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count',
					{
						title = "Quantité"
					},
					function(data2, menu2)

						local count = tonumber(data2.value)

						if count == nil then
							ESX.ShowNotification("La quantité indiqué est invalide")
						else
							menu2.close()
							menu.close()
							OpenAutosellActionsMenu()

							local priceburger = 150
						    local pricemenuburger = 350
							local pricemenuxlburger = 800
							local pricewater = 20
							local pricecupcake = 50
							local pricedonut = 50
							local pricesoda = 75
							local pricefrite = 60
							local pricebeer = 50
							local priceraisin = 25			
							local totalprice = 0

							if itemName == "wburger" then
								totalprice = count * priceburger
							elseif itemName == "menuburger1" then
								totalprice = count * pricemenuburger
							elseif itemName == "menuburger2" then
								totalprice = count * pricemenuxlburger
							elseif itemName == "soda" then
								totalprice = count * pricesoda
							elseif itemName == "water" then
								totalprice = count * pricewater
							elseif itemName == "donut2" then
								totalprice = count * pricedonut
							elseif itemName == "cupcake" then
								totalprice = count * pricecupcake
							elseif itemName == "frite" then
								totalprice = count * pricefrite
							elseif itemName == "beer" then
								totalprice = count * pricebeer
							elseif itemName == "jus_raisin" then
								totalprice = count * priceraisin
							end

							--print(json.encode())
							print(PlayerData.Source, itemName,count,totalprice,tonumber(totalprice))
							if count < 5 then
								if itemName ~= "menuburger2" and itemName ~= "menuburger1" then
									TriggerServerEvent('esx_resto:haveenoughmoney', ESX.GetPlayerData().identifier , itemName, count, tonumber(totalprice))
								end
							else
								ESX.ShowNotification('Vous ne pouvez pas prendre plus de 5 articles')
							end
							
							if itemName == "menuburger1" then
								if count < 2 then
									TriggerServerEvent('esx_resto:haveenoughmoney', ESX.GetPlayerData().identifier , itemName, count, tonumber(totalprice))
								else
									ESX.ShowNotification('Vous ne pouvez pas prendre plus de 3 Menu Classique')
								end
							end
							
							if itemName == "menuburger2" then
								if count < 2 then
									TriggerServerEvent('esx_resto:haveenoughmoney', ESX.GetPlayerData().identifier , itemName, count, tonumber(totalprice))
								else
									ESX.ShowNotification('Vous ne pouvez pas prendre plus de 2 Menu XL')
								end
							end
							--TriggerEvent('esx_society:PayGouv', 'resto' , PlayerData.source , tonumber(totalprice))
						end

					end,
					function(data2, menu2)
						menu2.close()
					end
					)

			end,
			function(data, menu)
				menu.close()
			end
			)

	end)

end


AddEventHandler('wojtek_burgerownia:wmarkerze', function (zone)
	if zone == 'Lodowka' and onDuty == true and sprzataj == false then
		Akt     = 'lod'
		CurrentActionMsg  = ('Cliquer sur ~INPUT_CONTEXT~ pour ouvrir le ~g~frigo')
		CurrentActionData = {}
	elseif zone == 'Smaz' and onDuty == true and sprzataj == false then
		Akt	  = 'smazenie'
		CurrentActionMsg  = ('Cliquer sur ~INPUT_CONTEXT~ pour ~o~cuir~w~ la viande')
		CurrentActionData = {}
	elseif zone == 'Przebieralnia' and PlayerData.job.name == 'resto'  then
		Akt	  = 'przeb'
		CurrentActionMsg  = ('Cliquer sur ~INPUT_CONTEXT~ pour se ~b~changer~w~')
		CurrentActionData = {}
	elseif zone == 'Kroj' and onDuty == true and sprzataj == false then
		Akt	  = 'krojenie'
		CurrentActionMsg  = ('Cliquer sur ~INPUT_CONTEXT~ pour ~o~couper ~w~ la tomate')
		CurrentActionData = {}
	elseif zone == 'Myj' and onDuty == true and sprzataj == false then
		Akt	  = 'myju'
		CurrentActionMsg  = ('Cliquer sur ~INPUT_CONTEXT~ pour ~o~laver~w~ la salade')
		CurrentActionData = {}
	elseif zone == 'Przyg' and onDuty == true and sprzataj == false then
		Akt	  = 'przygotuj'
		CurrentActionMsg  = ('Cliquer sur ~INPUT_CONTEXT~ pour ~o~preparer~w~ le burger')
		CurrentActionData = {}
	elseif zone == 'Sprzatanie' and onDuty == true and sprzataj == true then
		Akt	  = 'sprz'
		CurrentActionMsg  = ('Cliquer sur ~INPUT_CONTEXT~ pour ~o~nettoyer~w~ les toilettes')
		CurrentActionData = {}
	elseif zone == 'Sprzedaz' and onDuty == true and sprzataj == false then
		Akt	  = 'sell'
		CurrentActionMsg  = ('Cliquer sur ~INPUT_CONTEXT~ pour ~o~vendre~w~ le burger')
		CurrentActionData = {}
	elseif zone == 'Soda' and onDuty == true and sprzataj == false then
		Akt	  = 'soda'
		CurrentActionMsg  = ('Cliquer sur ~INPUT_CONTEXT~ pour ~o~remplir~w~ un gobelet')
		CurrentActionData = {}
	elseif zone == 'Frite' and onDuty == true and sprzataj == false then
		Akt	  = 'frite'
		CurrentActionMsg  = ('Cliquer sur ~INPUT_CONTEXT~ pour ~o~cuir~w~ les frites')
		CurrentActionData = {}
	elseif zone == 'Dessert' and onDuty == true and sprzataj == false then
		Akt	  = 'dessert'
		CurrentActionMsg  = ('Cliquer sur ~INPUT_CONTEXT~ pour ~o~prendre~w~ un dessert')
		CurrentActionData = {}
	elseif zone == 'bossmenu' and onDuty == true and sprzataj == false then
		Akt	  = 'safe'
		CurrentActionMsg  = ('Cliquer sur ~INPUT_CONTEXT~ pour ~o~ouvrir~w~ le stock Resto')
		CurrentActionData = {}
	elseif zone == 'Zone1' then
		Akt     = 'autosell'
		CurrentActionMsg  = ('Cliquer sur ~INPUT_CONTEXT~ pour ouvrir le ~g~Menu')
		CurrentActionData = {}
	elseif zone == 'openvehicle' and onDuty == true and sprzataj == false then
		OpenVehicleSpawnerMenu()
	end
end)


function OpenGetStocksMenu()

	ESX.TriggerServerCallback('esx_resto:getStockItems', function(items)

		print(json.encode(items))

		local elements = {}

		for i=1, #items, 1 do

			local item = items[i]

			if item.count > 0 then
				table.insert(elements, {label = item.label .. ' x' .. item.count, type = 'item_standard', value = item.name})
			end

		end

		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'stocks_menu',
			{
				title    = 'Resto Stock',
				elements = elements
			},
			function(data, menu)

				local itemName = data.current.value

				ESX.UI.Menu.Open(
					'dialog', GetCurrentResourceName(), 'stocks_menu_get_item_count',
					{
						title = "Quantité"
					},
					function(data2, menu2)

						local count = tonumber(data2.value)

						if count == nil then
							ESX.ShowNotification("La quantité indiqué est invalide")
						else
							menu2.close()
							menu.close()
							OpenGetStocksMenu()

							TriggerServerEvent('esx_resto:getStockItem', itemName, count)
						end

					end,
					function(data2, menu2)
						menu2.close()
					end
					)

			end,
			function(data, menu)
				menu.close()
			end
			)

	end)
	
end

function OpenPutStocksMenu()
	
	ESX.TriggerServerCallback('esx_resto:getPlayerInventory', function(inventory)

		local elements = {}

		for i=1, #inventory.items, 1 do

			local item = inventory.items[i]

			if item.count > 0 then
				table.insert(elements, {label = item.label .. ' x' .. item.count, type = 'item_standard', value = item.name})
			end

		end

		ESX.UI.Menu.Open(
			'default', GetCurrentResourceName(), 'stocks_menu',
			{
				title    = "Inventaire",
				elements = elements
			},
			function(data, menu)

				local itemName = data.current.value

				ESX.UI.Menu.Open(
					'dialog', GetCurrentResourceName(), 'stocks_menu_put_item_count',
					{
						title = "Quantité"
					},
					function(data2, menu2)

						local count = tonumber(data2.value)

						if count == nil then
							ESX.ShowNotification("La quantité indiqué est invalide")
						else
							menu2.close()
							menu.close()
							OpenPutStocksMenu()

							TriggerServerEvent('esx_resto:putStockItems', itemName, count)
						end

					end,
					function(data2, menu2)
						menu2.close()
					end
					)

			end,
			function(data, menu)
				menu.close()
			end
			)

	end)
	
end


AddEventHandler('wojtek_burgerownia:pozamarkerem', function (zone)
	Akt = nil
end)



Citizen.CreateThread(function()
	while true do

		Citizen.Wait(0)

		if IsControlJustReleased(0, Keys['F6']) and not IsDead and PlayerData.job ~= nil and PlayerData.job.name == 'resto' then
			OpenMobileRestoActionsMenu()
		end

		if Akt ~= nil then

			SetTextComponentFormat('STRING')
			AddTextComponentString(CurrentActionMsg)
			DisplayHelpTextFromStringLabel(0, 0, 1, -1)

			if IsControlPressed(0,  Keys['E']) then

				if Akt == 'przeb' then
					MenuPrzebieralnia()
				end

				if Akt == 'smazenie' and as1 == false then
					TriggerServerEvent('wojtek_burgerownia:czymozesmazyc')
					if as1 == false then
						as1 = true
					end
				end

				if Akt == 'krojenie' and as1 == false then
					TriggerServerEvent('wojtek_burgerownia:czymozekroic')
					if as1 == false then
						as1 = true
					end
				end

				if Akt == 'myju' and as1 == false then
					TriggerServerEvent('wojtek_burgerownia:czymozemyc')
					if as1 == false then
						as1 = true
					end
				end	

				if Akt == 'sprz' and sprzataj == true and as1 == false then
					TriggerEvent('wojtek_burgerownia:sprzatanie')
					if as1 == false then
						as1 = true
					end
				end

				if Akt == 'przygotuj' and as1 == false then
					MenuPrepaBurger()
					if as1 == false then
						as1 = true
					end
				end	

				if Akt == 'soda' and as1 == false then

					TriggerServerEvent('wojtek_burgerownia:fairesoda')
					if as1 == false then
						as1 = true
					end
				end

				if Akt == 'frite' and as1 == false then
					TriggerServerEvent('wojtek_burgerownia:peutonfairedesfrites')
					if as1 == false then
						as1 = true
					end
				end		


				if Akt == 'dessert' and as1 == false then
					MenuDessert()
					if as1 == false then
						as1 = true
					end
				end	

				if Akt == 'safe' and as1 == false then
					OpenRestoActionsMenu()
					if as1 == false then
						as1 = true
					end

				end

				if Akt == 'autosell' then
					OpenAutosellActionsMenu()
				end	

				if Akt == 'sell' and as1 == false and hardblock == false then
					TriggerServerEvent('wojtek_burgerownia:hajs')
					if as1 == false then
						as1 = true
					end
				end	

				if Akt == 'lod' then
					MenuLodowki()
				else

				end
			end
		end
	end
end)

function MenuPrzebieralnia()
	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'cloakroom',
		{
			title    = 'Vestiaire',
			align    = 'center',
			elements = {
				{label = 'Tenue de travail', value = 'job_wear'},
				{label = 'Tenue civil', value = 'citizen_wear'}
			}
		},
		function(data, menu)
			if data.current.value == 'citizen_wear' then
				TriggerEvent("pNotify:SendNotification",{
					text = ('Changer'),
					type = "info",
					timeout = (Config.Czasprzebierania * 1000),
					layout = "bottomCenter",
					queue = "burgerownia",
					animation = {
						open = "gta_effects_fade_in",
						close = "gta_effects_fade_out"
					}})
				TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_COP_IDLES", 0, true)
				FreezeEntityPosition(GetPlayerPed(-1), true)
				Wait(Config.Czasprzebierania * 1000 + 250)
				FreezeEntityPosition(GetPlayerPed(-1), false)
				ClearPedTasks(GetPlayerPed(-1))
				onDuty = false
				TriggerEvent("pNotify:SendNotification",{
					text = ('Tu te vetis en Civil'),
					type = "error",
					timeout = (3000),
					layout = "bottomCenter",
					queue = "burgerownia",
					animation = {
						open = "gta_effects_fade_in",
						close = "gta_effects_fade_out"
					}})
				majuznoty = false
				TriggerServerEvent('wojtek_burgerownia:pow2')
				ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin)
					TriggerEvent('skinchanger:loadSkin', skin)
				end)
			end
			if data.current.value == 'job_wear' then
				TriggerEvent("pNotify:SendNotification",{
					text = ('Changer'),
					type = "info",
					timeout = (Config.Czasprzebierania * 1000),
					layout = "bottomCenter",
					queue = "burgerownia",
					animation = {
						open = "gta_effects_fade_in",
						close = "gta_effects_fade_out"
					}})
				TaskStartScenarioInPlace(GetPlayerPed(-1), "WORLD_HUMAN_COP_IDLES", 0, true)
				FreezeEntityPosition(GetPlayerPed(-1), true)
				Wait(Config.Czasprzebierania * 1000 + 250)
				FreezeEntityPosition(GetPlayerPed(-1), false)
				ClearPedTasks(GetPlayerPed(-1))
				onDuty = true
				TriggerEvent("pNotify:SendNotification",{
					text = ('Tu te vetis en vetement de travail '),
					type = "success",
					timeout = (3000),
					layout = "bottomCenter",
					queue = "burgerownia",
					animation = {
						open = "gta_effects_fade_in",
						close = "gta_effects_fade_out"
					}})
				majuznoty = false
				TriggerServerEvent('wojtek_burgerownia:pow')
				ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin, jobSkin)
					if skin.sex == 0 then
						TriggerEvent('skinchanger:loadClothes', skin, jobSkin.skin_female)   
					else
						local clothesSkin = {
							['tshirt_1'] = 14, ['tshirt_2'] = 0,
							['torso_1'] = 294, ['torso_2'] = 1,
							['decals_1'] = 0, ['decals_2'] = 0,
							['arms'] = 5,
							['pants_1'] = 3, ['pants_2'] = 0,
							['shoes_1'] = 27, ['shoes_2'] = 0,
							['chain_1'] = 0, ['chain_2'] = 0
						}
						TriggerEvent('skinchanger:getSkin', function(skin)
							TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
						end)
					end

				end)
			end
			menu.close()
		end,
		function(data, menu)
			menu.close()
		end
		)
end

function MenuLodowki()
	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'cloakroom',
		{
			title    = 'Frigo',
			align    = 'center',
			elements = {
				{label = 'Prendre la viande', value = 'mieso'},
			}
		},
		function(data, menu)
			if data.current.value == 'mieso' then
				TriggerServerEvent('wojtek_burgerownia:dajitemmieso')
			end
		end,
		function(data, menu)
			menu.close()
		end
		)
end

function MenuDessert()
	
	if as1 == false then
		as1 = true
	end

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'cloakroom',
		{
			title    = 'Frigo',
			align    = 'center',
			elements = {
				{label = 'Prendre un Cupcake', value = 'cupcake'},
				{label = 'Prendre un Donut', value = 'donut'},
			}
		},
		function(data, menu)
			if data.current.value == 'cupcake' then
				TriggerServerEvent('wojtek_burgerownia:dajitemcupcake')
				if as1 == true then
					as1 = false
				end
			end

			if data.current.value == 'donut' then
				TriggerServerEvent('wojtek_burgerownia:dajitemdonut2')
				if as1 == true then
					as1 = false
				end
			end
		end,
		function(data, menu)
			menu.close()

			if as1 == true then
				as1 = false
			end

		end
		)
end

function MenuPrepaBurger()
	
	if as1 == true then
		as1 = false
	end

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open(
		'default', GetCurrentResourceName(), 'cloakroom',
		{
			title    = 'Table',
			align    = 'center',
			elements = {
				{label = 'Preparer un burger', value = 'burger'},
				{label = 'Preparer un menu classique', value = 'menuburger1'},
				{label = 'Preparer un menu XXL', value = 'menuburger2'},
			}
		},
		function(data, menu)

			if data.current.value == 'burger' then
				TriggerServerEvent('wojtek_burgerownia:czymozeprzygotowac')
			elseif data.current.value == 'menuburger1' then
				TriggerServerEvent('wojtek_burgerownia:czymozeprzygotowac2')
			elseif data.current.value == 'menuburger2' then
				TriggerServerEvent('wojtek_burgerownia:czymozeprzygotowac3')
			end
		end,
		function(data, menu)
			menu.close()
			if as1 == true then
				as1 = false
			end
		end
		)
end


Citizen.CreateThread(function ()
	while true do
		Wait(0)

		local coords = GetEntityCoords(GetPlayerPed(-1))

		for k,v in pairs(Config.Autosell) do
			if(v.Type ~= -1 and (GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < 100.0) and autosell == true ) then
				DrawMarker(v.Type, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 300, false, true, 2, false, false, false, false)
			end
		end
		for k,v in pairs(Config.StrefyJesliPrzebrany) do
			if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < 100.0) and onDuty == true and sprzataj == false then
				DrawMarker(v.Type, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 300, false, true, 2, false, false, false, false)
			end
		end
		for k,v in pairs(Config.StrefyJesliMaPrace) do
			if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < 100.0) and PlayerData.job ~= nil and PlayerData.job.name == 'resto' then
				DrawMarker(v.Type, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 300, false, true, 2, false, false, false, false)
			end
		end
		for k,v in pairs(Config.Strefysprzatanko) do
			if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < 100.0) and PlayerData.job ~= nil and PlayerData.job.name == 'resto' and sprzataj == true and onDuty == true then
				DrawMarker(v.Type, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 300, false, true, 2, false, false, false, false)
			end
		end
	end
end)



Citizen.CreateThread(function ()
	while true do
		Wait(0)

		local coords      = GetEntityCoords(GetPlayerPed(-1))
		local isInMarker  = false
		local currentZone = nil

		if autosell == true then
			for k,v in pairs(Config.Autosell) do
				if(GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x) then
					isInMarker  = true
					currentZone = k
				end
			end
		end

		for k,v in pairs(Config.StrefyJesliPrzebrany) do
			if(GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x) then
				isInMarker  = true
				currentZone = k
			end
		end

		for k,v in pairs(Config.StrefyJesliMaPrace) do
			if(GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x) then
				isInMarker  = true
				currentZone = k
			end
		end

		for k,v in pairs(Config.Strefysprzatanko) do
			if(GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x) then
				isInMarker  = true
				currentZone = k
			end
		end

		for k,v in pairs(Config.Vehicles) do
			if(GetDistanceBetweenCoords(coords, -1181.69, -903.77, 13.48, true) < 2.0) then
				SetTextComponentFormat('STRING')
				AddTextComponentString("Appuyez sur ~INPUT_PICKUP~ pour ouvrir le garage")
				DisplayHelpTextFromStringLabel(0, 0, 1, -1)
				if IsControlPressed(0,  38) then
				isInMarker  = true
				currentZone = 'openvehicle'
				end
			end
		end

		if (isInMarker and not JestWMarkerze) or (isInMarker and OstStrefa ~= currentZone) then
			JestWMarkerze = true
			OstStrefa                = currentZone
			TriggerEvent('wojtek_burgerownia:wmarkerze', currentZone)
		end

		if not isInMarker and JestWMarkerze then
			TriggerEvent('wojtek_burgerownia:pozamarkerem', OstStrefa)
			JestWMarkerze = false
		end
	end
end)


RegisterNetEvent('wojtek_burgerownia:animacjasmazenia')
AddEventHandler('wojtek_burgerownia:animacjasmazenia', function()
	if as2 == false then
		as2 = true
		local pP = GetPlayerPed(-1)  
		SetEntityCoords(GetPlayerPed(-1), -1199.99, -900.29, 13.1)
		SetEntityHeading(GetPlayerPed(-1), 126.9)
		TaskStartScenarioInPlace(GetPlayerPed(-1), "PROP_HUMAN_BBQ", 0, true) 
		smazeniepozostalo = Config.czassmazenia
		FreezeEntityPosition(GetPlayerPed(-1), true)
		TriggerEvent("pNotify:SendNotification",{
			text = ('Cuire la viande'),
			type = "info",
			timeout = (Config.czassmazenia * 999),
			layout = "bottomCenter",
			queue = "burgerownia",
			animation = {
				open = "gta_effects_fade_in",
				close = "gta_effects_fade_out"
			}})
		repeat
			smazeniepozostalo = smazeniepozostalo - 1
			Citizen.Wait(1000)
		until(smazeniepozostalo == 0) 
		TriggerServerEvent('wojtek_burgerownia:dajitemgmieso')
		FreezeEntityPosition(GetPlayerPed(-1), false)
		Wait(1000)
		ClearPedTasksImmediately(GetPlayerPed(-1))
		if as1 == true then
			as1 = false
		end

		if as2 == true then
			as2 = false
		end
	end

end)

-- Randomisation
RegisterNetEvent('wojtek_burgerownia:losowanko')
AddEventHandler('wojtek_burgerownia:losowanko', function()

	local zrzygalsie = math.random(1,100)

	if zrzygalsie < Config.szansa  then
		TriggerServerEvent('wojtek_burgerownia:pow3')

		if sprzataj == false then
			sprzataj = true
		end

		if hardblock == false then
			hardblock = true
		end
	end

end)

-- Nettoyage
RegisterNetEvent('wojtek_burgerownia:sprzatanie')
AddEventHandler('wojtek_burgerownia:sprzatanie', function() 

	if as1 == false then
		as1 = true
	end
	local pP = GetPlayerPed(-1)  
	SetEntityCoords(GetPlayerPed(-1), -1199.39, -889.90, 13.1)
	SetEntityHeading(GetPlayerPed(-1), 27.58)
	TaskStartScenarioInPlace(GetPlayerPed(-1), "PROP_HUMAN_BUM_BIN", 0, true) 
	sprzatajjeszcze = Config.czassprzatania
	FreezeEntityPosition(GetPlayerPed(-1), true)
	TriggerEvent("pNotify:SendNotification",{
		text = ('Nettoyage des toilettes'),
		type = "info",
		timeout = (Config.czassprzatania * 999),
		layout = "bottomCenter",
		queue = "burgerownia",
		animation = {
			open = "gta_effects_fade_in",
			close = "gta_effects_fade_out"
		}})
	repeat
		sprzatajjeszcze = sprzatajjeszcze - 1
		Citizen.Wait(1000)
	until(sprzatajjeszcze == 0) 
	TriggerServerEvent('wojtek_burgerownia:pow4')
	FreezeEntityPosition(GetPlayerPed(-1), false)
	Wait(1000)
	ClearPedTasksImmediately(GetPlayerPed(-1))

	if as1 == true then
		as1 = false
	end

	if sprzataj == true then
		sprzataj = false
	end

	if hardblock == true then
		hardblock = false
	end

end)


RegisterNetEvent('wojtek_burgerownia:animacjaprzygotowania')
AddEventHandler('wojtek_burgerownia:animacjaprzygotowania', function(itemName)
	if as2 == false then
		as2 = true
		local pP = GetPlayerPed(-1)  
		SetEntityCoords(GetPlayerPed(-1), -1199.80, -898.28, 13.1)
		SetEntityHeading(GetPlayerPed(-1), 304.4)
		TaskStartScenarioInPlace(GetPlayerPed(-1), "PROP_HUMAN_BUM_BIN", 0, true) 
		przygotowanieczas = Config.czasprzygotowania
		FreezeEntityPosition(GetPlayerPed(-1), true)
		TriggerEvent("pNotify:SendNotification",{
			text = ('Préparation du burger'),
			type = "info",
			timeout = (Config.czasprzygotowania * 999),
			layout = "bottomCenter",
			queue = "burgerownia",
			animation = {
				open = "gta_effects_fade_in",
				close = "gta_effects_fade_out"
			}})
		repeat
			przygotowanieczas = przygotowanieczas - 1
			Citizen.Wait(1000)
		until(przygotowanieczas == 0) 
		if itemName == "wburger" then
			TriggerServerEvent('wojtek_burgerownia:dajitemburger')
		elseif itemName == "menuburger1" then
			TriggerServerEvent('wojtek_burgerownia:dajitemmenuburger1')
		elseif itemName == "menuburger2" then
			TriggerServerEvent('wojtek_burgerownia:dajitemmenuburger2')
		end
		FreezeEntityPosition(GetPlayerPed(-1), false)
		Wait(1000)
		ClearPedTasksImmediately(GetPlayerPed(-1))
		if as1 == true then
			as1 = false
		end

		if as2 == true then
			as2 = false
		end
	end

end)

RegisterNetEvent('wojtek_burgerownia:animacfrite')
AddEventHandler('wojtek_burgerownia:animacfrite', function()
	if as2 == false then
		as2 = true
		local pP = GetPlayerPed(-1)  

		SetEntityCoords(GetPlayerPed(-1), -1201.00, -898.63, 13.1)
		SetEntityHeading(GetPlayerPed(-1), 122.4)

		EmoteName = {"anim@amb@clubhouse@bar@drink@idle_a", "idle_a_bartender", "Bartender", AnimationOptions =
			{
				EmoteLoop = true,
				EmoteMoving = true,
			}}

			ChosenDict,ChosenAnimation,ename = EmoteName[1],EmoteName[2],EmoteName[3]
			AnimationDuration = -1

			while not HasAnimDictLoaded(ChosenDict) do
				RequestAnimDict(ChosenDict)
				Wait(10)
			end

			if EmoteName.AnimationOptions then
				if EmoteName.AnimationOptions.EmoteLoop then
					MovementType = 1
				end
				if EmoteName.AnimationOptions.EmoteMoving then
					MovementType = 51
				end
			end

			TaskPlayAnim(GetPlayerPed(-1), ChosenDict, ChosenAnimation, 2.0, 2.0, AnimationDuration, MovementType, 0, false, false, false)
			RemoveAnimDict(ChosenDict)

			--TaskStartScenarioInPlace(GetPlayerPed(-1), "PROP_HUMAN_BUM_BIN", 0, true) 

			przygotowanieczas = 15
			FreezeEntityPosition(GetPlayerPed(-1), true)
			TriggerEvent("pNotify:SendNotification",{
				text = ('Preparation des frites'),
				type = "info",
				timeout = (15 * 999),
				layout = "bottomCenter",
				queue = "burgerownia",
				animation = {
					open = "gta_effects_fade_in",
					close = "gta_effects_fade_out"
				}})
			repeat
				przygotowanieczas = przygotowanieczas - 1
				Citizen.Wait(1000)
			until(przygotowanieczas == 0) 
			TriggerServerEvent('wojtek_burgerownia:dajitemfrite')
			FreezeEntityPosition(GetPlayerPed(-1), false)
			Wait(1000)
			ClearPedTasksImmediately(GetPlayerPed(-1))
			if as1 == true then
				as1 = false
			end

			if as2 == true then
				as2 = false
			end
		end

	end)


RegisterNetEvent('wojtek_burgerownia:animacsoda')
AddEventHandler('wojtek_burgerownia:animacsoda', function()
	
	print (as1,as2)
	if as2 == false then
		as2 = true
		local pP = GetPlayerPed(-1)  
		SetEntityCoords(GetPlayerPed(-1), -1198.87, -894.98, 13.1)
		SetEntityHeading(GetPlayerPed(-1), 128.4)
		
		EmoteName = {"anim@am_hold_up@male", "shoplift_mid", "Damn 2", AnimationOptions = { EmoteMoving = true, EmoteDuration = 1000}}
		
		ChosenDict,ChosenAnimation,ename = EmoteName[1],EmoteName[2],EmoteName[3]
		AnimationDuration = -1

		while not HasAnimDictLoaded(ChosenDict) do
			RequestAnimDict(ChosenDict)
			Wait(10)
		end

		if EmoteName.AnimationOptions then
			if EmoteName.AnimationOptions.EmoteLoop then
				MovementType = 1
				if EmoteName.AnimationOptions.EmoteMoving then
					MovementType = 51
				end

			elseif EmoteName.AnimationOptions.EmoteMoving then
				MovementType = 51
			elseif EmoteName.AnimationOptions.EmoteMoving == false then
				MovementType = 0
			elseif EmoteName.AnimationOptions.EmoteStuck then
				MovementType = 50
			end

		else
			MovementType = 0
		end

		if EmoteName.AnimationOptions then
			if EmoteName.AnimationOptions.EmoteDuration == nil then 
				EmoteName.AnimationOptions.EmoteDuration = -1
				AttachWait = 0
			else
				AnimationDuration = EmoteName.AnimationOptions.EmoteDuration
				AttachWait = EmoteName.AnimationOptions.EmoteDuration
			end
		end

		TriggerEvent("pNotify:SendNotification",{
			text = ('Preparation d un Soda'),
			type = "info",
			timeout = (5 * 999),
			layout = "bottomCenter",
			queue = "burgerownia",
			animation = {
				open = "gta_effects_fade_in",
				close = "gta_effects_fade_out"
			}})

		Citizen.Wait(5000)
		TaskPlayAnim(GetPlayerPed(-1), ChosenDict, ChosenAnimation, 2.0, 2.0, AnimationDuration, MovementType, 0, false, false, false)

		--TaskStartScenarioInPlace(GetPlayerPed(-1), "PROP_HUMAN_BUM_BIN", 0, true) 

		FreezeEntityPosition(GetPlayerPed(-1), true)

		--TaskPlayAnim(GetPlayerPed(-1), ChosenDict, ChosenAnimation, 2.0, 2.0, AnimationDuration, MovementType, 0, false, false, false)
		RemoveAnimDict(ChosenDict)

		TriggerServerEvent('wojtek_burgerownia:dajitemsoda')
		FreezeEntityPosition(GetPlayerPed(-1), false)
		Wait(1000)
		ClearPedTasksImmediately(GetPlayerPed(-1))
		if as1 == true then
			as1 = false
		end

		if as2 == true then
			as2 = false
		end
	end

end)

function OpenMobileRestoActionsMenu()

	ESX.UI.Menu.CloseAll()

	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'mobile_resto_actions', {
		css		= 'metier',
		title    = "Restaurateur",
		align    = 'left',
		elements = {
			{label = 'Donner une facture', value = 'ammende'},
			{label = "Placer un objet", value = 'object_spawner'}
		}
	}, function(data, menu)
	if IsBusy then return end

	if data.current.value == 'ammende' then

		ESX.UI.Menu.Open(
			'dialog', GetCurrentResourceName(), 'ammende',
			{
				title = 'Donner une Facture'
			},
			function(data, menu)

				local amount = tonumber(data.value)

				if amount == nil or amount <= 0 then
					ESX.ShowNotification('Montant invalide')
				else
					menu.close()

					local closestPlayer, closestDistance = ESX.Game.GetClosestPlayer()

					if closestPlayer == -1 or closestDistance > 3.0 then
						ESX.ShowNotification('Pas de joueurs proche')
					else
						local playerPed        = GetPlayerPed(-1)

						Citizen.CreateThread(function()
							TaskStartScenarioInPlace(playerPed, 'CODE_HUMAN_MEDIC_TIME_OF_DEATH', 0, true)
							Citizen.Wait(5000)
							ClearPedTasks(playerPed)
							TriggerServerEvent('esx_billing:sendBill', GetPlayerServerId(closestPlayer), 'society_resto', 'resto', amount)
							ESX.ShowNotification('Facture envoyée')							

						end)
					end
				end
			end,
			function(data, menu)
				menu.close()
			end)


	elseif data.current.value == 'object_spawner' then

		local playerPed = PlayerPedId()

		if IsPedSittingInAnyVehicle(playerPed) then
			ESX.ShowNotification("Vous ne pouvez pas utiliser ceci en étant dans une voiture")
			return
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'mobile_resto_actions_spawn', {
			css		= 'metier',
			title    = "Objet",
			align    = 'left',
			elements = {
				{label = "Canette", value = 'prop_cs_bs_cup'},
				{label = "FuturImplementation",  value = 'prop_toolchest_01'}
			}
		}, function(data2, menu2)
		local model   = data2.current.value
		local coords  = GetEntityCoords(playerPed)
		local forward = GetEntityForwardVector(playerPed)
		local x, y, z = table.unpack(coords + forward * 1.0)

		if model == 'prop_cs_bs_cup' then
			z = z - 2.0
		elseif model == 'prop_toolchest_01' then
			z = z - 2.0
		end

		ESX.Game.SpawnObject(model, {
			x = x,
			y = y,
			z = z
		}, function(obj)
		SetEntityHeading(obj, GetEntityHeading(playerPed))
		PlaceObjectOnGroundProperly(obj)
	end)

	end, function(data2, menu2)
	menu2.close()
end)

	end

end, function(data, menu)
menu.close()
end)
end


RegisterNetEvent('wojtek_burgerownia:animacfridge')
AddEventHandler('wojtek_burgerownia:animacfridge', function(itemName)
	if as2 == false then
		as2 = true
		local pP = GetPlayerPed(-1)  
		SetEntityCoords(GetPlayerPed(-1), -1199.80, -898.28, 13.1)
		SetEntityHeading(GetPlayerPed(-1), 124.4)
		TaskStartScenarioInPlace(GetPlayerPed(-1), "PROP_HUMAN_BUM_BIN", 0, true) 
		przygotowanieczas = 5
		FreezeEntityPosition(GetPlayerPed(-1), true)
		TriggerEvent("pNotify:SendNotification",{
			text = ('Recupere un dessert'),
			type = "info",
			timeout = (5 * 999),
			layout = "bottomCenter",
			queue = "burgerownia",
			animation = {
				open = "gta_effects_fade_in",
				close = "gta_effects_fade_out"
			}})
		repeat
			przygotowanieczas = przygotowanieczas - 1
			Citizen.Wait(1000)
		until(przygotowanieczas == 0) 
		if itemName == "cupcake" then
			TriggerServerEvent('wojtek_burgerownia:dajitemcupcake')
		else
			TriggerServerEvent('wojtek_burgerownia:dajitemdonut2')	
		end
		FreezeEntityPosition(GetPlayerPed(-1), false)
		Wait(1000)
		ClearPedTasksImmediately(GetPlayerPed(-1))
		if as1 == true then
			as1 = false
		end

		if as2 == true then
			as2 = false
		end
	end

end)

RegisterNetEvent('wojtek_burgerownia:animacsodamaker')
AddEventHandler('wojtek_burgerownia:animacsodamaker', function(itemName)
	
	print (as1,as2)
	if as2 == false then
		as2 = true
		local pP = GetPlayerPed(-1)  
		SetEntityCoords(GetPlayerPed(-1), -1198.87, -894.98, 13.1)
		SetEntityHeading(GetPlayerPed(-1), 128.4)

		local gobelet = CreateObjectNoOffset( GetHashKey("prop_cs_bs_cup"), -1199.32, -895.51, 14.06, true, false, false)

		EmoteName = {"anim@am_hold_up@male", "shoplift_mid", "Damn 2", AnimationOptions = { EmoteMoving = true, EmoteDuration = 1000}}

		ChosenDict,ChosenAnimation,ename = EmoteName[1],EmoteName[2],EmoteName[3]
		AnimationDuration = -1

		while not HasAnimDictLoaded(ChosenDict) do
			RequestAnimDict(ChosenDict)
			Wait(10)
		end

		if EmoteName.AnimationOptions then
			if EmoteName.AnimationOptions.EmoteLoop then
				MovementType = 1
				if EmoteName.AnimationOptions.EmoteMoving then
					MovementType = 51
				end

			elseif EmoteName.AnimationOptions.EmoteMoving then
				MovementType = 51
			elseif EmoteName.AnimationOptions.EmoteMoving == false then
				MovementType = 0
			elseif EmoteName.AnimationOptions.EmoteStuck then
				MovementType = 50
			end

		else
			MovementType = 0
		end

		if EmoteName.AnimationOptions then
			if EmoteName.AnimationOptions.EmoteDuration == nil then 
				EmoteName.AnimationOptions.EmoteDuration = -1
				AttachWait = 0
			else
				AnimationDuration = EmoteName.AnimationOptions.EmoteDuration
				AttachWait = EmoteName.AnimationOptions.EmoteDuration
			end
		end



		przygotowanieczas = 5
		FreezeEntityPosition(GetPlayerPed(-1), true)
		TriggerEvent("pNotify:SendNotification",{
			text = ('Recupere un soda'),
			type = "info",
			timeout = (5 * 999),
			layout = "bottomCenter",
			queue = "burgerownia",
			animation = {
				open = "gta_effects_fade_in",
				close = "gta_effects_fade_out"
			}})
		repeat
			przygotowanieczas = przygotowanieczas - 1
			Citizen.Wait(1000)
		until(przygotowanieczas == 0) 
		TaskPlayAnim(GetPlayerPed(-1), ChosenDict, ChosenAnimation, 2.0, 2.0, AnimationDuration, MovementType, 0, false, false, false)
		gobelet = DeleteObject()
		TriggerServerEvent('wojtek_burgerownia:dajitemsoda')
		FreezeEntityPosition(GetPlayerPed(-1), false)
		Wait(1000)
		ClearPedTasksImmediately(GetPlayerPed(-1))
		if as1 == true then
			as1 = false
		end

		if as2 == true then
			as2 = false
		end
	end

end)


RegisterNetEvent('wojtek_burgerownia:falarm')
AddEventHandler('wojtek_burgerownia:falarm', function()
	if as1 == true then
		as1 = false
	end

end)

RegisterNetEvent('wojtek_burgerownia:animacjakrojenia')
AddEventHandler('wojtek_burgerownia:animacjakrojenia', function()
	if as2 == false then
		as2 = true

		local pP = GetPlayerPed(-1)
		local cgracza = GetEntityCoords(pP)

		SetEntityCoords(pP, -1198.99, -901.92, 13.1)
		SetEntityHeading(pP, 120.6)
		FreezeEntityPosition(pP, true)

		LoadDict(an)
		TaskPlayAnim(pP, an, animacja, 3.5, -6, -1, 63, 0, 0, 0, 0 )

		nozkuchenny = CreateObject(nozhash,cgracza.x, cgracza.y, cgracza.z, true, true, true)
		AttachEntityToEntity(nozkuchenny, pP, GetPedBoneIndex(pP, 0xDEAD), 0.11, 0.16, 0.10, 39.7, 0.0, 0.0, false, false, false, false, 2, true)


		krojenie = Config.czaskrojenia
		TriggerEvent("pNotify:SendNotification",{
			text = ('Couper les tomates'),
			type = "info",
			timeout = (Config.czaskrojenia * 999),
			layout = "bottomCenter",
			queue = "burgerownia",
			animation = {
				open = "gta_effects_fade_in",
				close = "gta_effects_fade_out"
			}})

		repeat
			krojenie = krojenie - 1
			Citizen.Wait(1000)
		until(krojenie == 0) 

		DeleteEntity(nozkuchenny)

		TriggerServerEvent('wojtek_burgerownia:dajitemgpomidor')

		FreezeEntityPosition(pP, false)
		Wait(1000)
		ClearPedTasksImmediately(pP)
		if as1 == true then
			as1 = false
		end

		if as2 == true then
			as2 = false
		end
	end

end)

function LoadDict(an)
	RequestAnimDict(an)
	while not HasAnimDictLoaded(an) do
		Citizen.Wait(10)
	end
end

RegisterNetEvent('wojtek_burgerownia:animacjamycia')
AddEventHandler('wojtek_burgerownia:animacjamycia', function()
	if as2 == false then
		as2 = true
		local pP = GetPlayerPed(-1)  
		SetEntityCoords(GetPlayerPed(-1), -1197.23, -901.53, 13.1)
		SetEntityHeading(GetPlayerPed(-1), 219.07)
		TaskStartScenarioInPlace(GetPlayerPed(-1), "PROP_HUMAN_BUM_BIN", 0, true) 
		myciejeszcze = Config.czasmycia
		FreezeEntityPosition(GetPlayerPed(-1), true)
		TriggerEvent("pNotify:SendNotification",{
			text = ('Laver la salade..'),
			type = "info",
			timeout = (Config.czasmycia * 999),
			layout = "bottomCenter",
			queue = "burgerownia",
			animation = {
				open = "gta_effects_fade_in",
				close = "gta_effects_fade_out"
			}})
		repeat
			myciejeszcze = myciejeszcze - 1
			Citizen.Wait(1000)
		until(myciejeszcze == 0) 
		TriggerServerEvent('wojtek_burgerownia:dajitemgsalata')
		FreezeEntityPosition(GetPlayerPed(-1), false)
		Wait(1000)
		ClearPedTasksImmediately(GetPlayerPed(-1))
		if as1 == true then
			as1 = false
		end

		if as2 == true then
			as2 = false
		end
	end

end)

function OpenVehicleSpawnerMenu()
	local playerCoords = GetEntityCoords(PlayerPedId())
	PlayerData = ESX.GetPlayerData()
	local elements = {
		{label = 'Ouvrir le garage', action = 'garage'},
		{label = 'Ranger le véhicule', action = 'store_garage'}
	}
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle', {
		title    = 'Garage',
		align    = 'top-left',
		elements = elements
	}, function(data, menu)
	if data.current.action == 'garage' then
		local garage = {}
		for k,v in ipairs(Config.AuthorizedVehicles.Shared) do
			table.insert(garage, {
				label  = v.label,
				model = v.model,
				type  = 'car'
			})
		end

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'vehicle_garage', {
			title    = 'Garage',
			align    = 'top-left',
			elements = garage
		}, function(data2, menu2)
		menu2.close()
		ESX.Game.SpawnVehicle(data2.current.model, Config.Vehicles[1].SpawnPoint, Config.Vehicles[1].Heading, function(vehicle)
			ESX.Game.SetVehicleProperties(vehicle, Config.Plate)
			SetVehicleFixed(vehicle)
			SetVehicleNumberPlateText(vehicle, Config.Plate)
			SetVehicleUndriveable(vehicle, false)
			SetVehicleEngineOn(vehicle, true, true)
			local plate = GetVehicleNumberPlateText(vehicle)
			TriggerServerEvent('esx_vehiclelock:givekey', 'no', plate) -- vehicle lock
			ESX.ShowNotification('Votre ~b~véhicule~s~ a été ~g~sorti~s~')
		end)
	end, function(data2, menu2)
	menu2.close()
end)
	elseif data.current.action == 'store_garage' then
		local vehicles, vehiclePlates = ESX.Game.GetVehiclesInArea(playerCoords, 30.0), {}
		if #vehicles > 0 then
			for k,v in ipairs(vehicles) do
				if GetVehicleNumberOfPassengers(v) == 0 and IsVehicleSeatFree(v, -1) then
					local plate = GetVehicleNumberPlateText(v)
					if plate == Config.Plate then
						ESX.Game.DeleteVehicle(v)
					end
				end
			end
		else
			ESX.ShowNotification('Aucun ~b~véhicule~s~ a proximité.')
			return
		end
	end
end, function(data, menu)
menu.close()
end)
end

--------------------------------------------
------ Napisane przez wojtek.cfg#0349 ------
----------------- ©  2019 ------------------
--------------------------------------------
