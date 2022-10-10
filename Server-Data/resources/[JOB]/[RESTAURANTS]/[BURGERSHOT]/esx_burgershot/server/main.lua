--------------------------------------------
------ Napisane przez wojtek.cfg#0349 ------
----------------- ©  2019 ------------------
--------------------------------------------

-- LEPIEJ NIE DOTYKAJ -- CHYBA ŻE WIESZ CO ROBISZ --

AutosellServValue = true

TriggerEvent('esx_society:registerSociety', 'resto', 'Restaurateur', 'society_resto', 'society_resto', 'society_resto', {type = 'private'})

TriggerEvent('esx_phone:registerNumber', 'resto', 'Téléphone résto', true, true)

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('wburger', function(source)

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeInventoryItem('wburger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 800000)
	TriggerClientEvent('esx_status:add', source, 'satiete', 500000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, 'Tu viens de manger un burger')

end)

ESX.RegisterUsableItem('frite', function(source)

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeInventoryItem('frite', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_status:add', source, 'satiete', 100000)
	TriggerClientEvent('esx_basicneeds:onEat', source, "prop_food_bs_chips")
	TriggerClientEvent('esx:showNotification', source, 'Tu viens de manger des frites')

end)

ESX.RegisterUsableItem('donut1', function(source)

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeInventoryItem('donut1', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_status:add', source, 'satiete', 50000)
	TriggerClientEvent('esx_basicneeds:onEat', source, "prop_donut_01")
	TriggerClientEvent('esx:showNotification', source, 'Tu viens de manger un Donut')

end)

ESX.RegisterUsableItem('donut2', function(source)

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeInventoryItem('donut2', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_status:add', source, 'satiete', 50000)
	TriggerClientEvent('esx_basicneeds:onEat', source, "prop_donut_02")
	TriggerClientEvent('esx:showNotification', source, 'Tu viens de manger un Donut')

end)

ESX.RegisterUsableItem('menuburger1', function(source)

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeInventoryItem('menuburger1', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 1000000)
	TriggerClientEvent('esx_status:add', source, 'satiete', 700000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 800000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, 'Tu viens de manger un Menu')

end)

ESX.RegisterUsableItem('soda', function(source)

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeInventoryItem('soda', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 250000)
	TriggerClientEvent('esx_basicneeds:onDrink', source, "prop_cs_bs_cup")
	TriggerClientEvent('esx:showNotification', source, 'Tu viens de boire un soda')

end)

ESX.RegisterUsableItem('menuburger2', function(source)

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

	xPlayer.removeInventoryItem('menuburger2', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 1000000)
	TriggerClientEvent('esx_status:add', source, 'satiete', 1000000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 1000000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, 'Tu viens de manger un Maxi Menu')

end)

--Paye par burger
RegisterServerEvent('wojtek_burgerownia:hajs')
AddEventHandler('wojtek_burgerownia:hajs', function()
	-- Definicje hajsu
	local h1 = Config.Wyplata1
	local h2 = Config.Wyplata2
	local ht = Config.Wyplatanielosuj
	local h3 = math.random(h1,h2)
	--
    local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local vburger = xPlayer.getInventoryItem('wburger').count

	TriggerEvent('esx_addonaccount:getSharedAccount', 'society_resto', function(account)
		societyAccount = account
	  end)
	

if vburger > 0 then

	if Config.losujwyplate == true then
	societyAccount.addMoney(h3)
	TriggerClientEvent('esx:showNotification', source, 'Tu viens de gagner ~g~'..h3..' $ pour ta société')
	xPlayer.removeInventoryItem('wburger', 1)
	else
	societyAccount.addMoney(ht)
	TriggerClientEvent('esx:showNotification', source, 'Tu viens de gagner ~g~'..ht..' $ pour ta société')
	xPlayer.removeInventoryItem('wburger', 1)
	end

	TriggerClientEvent('wojtek_burgerownia:losowanko', source)

else
	TriggerClientEvent('esx:showNotification', source, '~r~Vous n\'avez pas de burger sur vous!')
end

	TriggerClientEvent('wojtek_burgerownia:falarm', source)

end)

-- Notif de prise de service
RegisterServerEvent('wojtek_burgerownia:pow')
AddEventHandler('wojtek_burgerownia:pow', function()
	-- Definicje hajsu
	local h1 = Config.Wyplata1
	local h2 = Config.Wyplata2
	local h3 = math.random(h1,h2)
	local ht = Config.Wyplatanielosuj
	--
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

	TriggerClientEvent('esx:showNotification', source, '~b~Prise de service!')
	if Config.losujwyplate == true then
	TriggerClientEvent('esx:showNotification', source, 'Apres chaque burger vous recevez de ~g~'..h1..'$~w~ à ~g~'..h2..'$' )
	else
	TriggerClientEvent('esx:showNotification', source, 'Apres chaque burger vous recevez: ~g~'..ht..'$' )
	end
end)

--Notif de fin de service
RegisterServerEvent('wojtek_burgerownia:pow2')
AddEventHandler('wojtek_burgerownia:pow2', function()

    local _source = source

	TriggerClientEvent('esx:showNotification', source, '~r~Fin de service!')
end)

--Toilette / Nettoyage
RegisterServerEvent('wojtek_burgerownia:pow4')
AddEventHandler('wojtek_burgerownia:pow4', function()

    local _source = source

	TriggerClientEvent('esx:showNotification', source, '~g~Tu viens de nettoyer la toilette!')
end)

--Fabrication avec rater 
RegisterServerEvent('wojtek_burgerownia:pow3')
AddEventHandler('wojtek_burgerownia:pow3', function()

    local _source = source
	local cosiestalo = math.random(1,5)

        if cosiestalo == 1 then
            TriggerClientEvent('esx:showNotification', source, '~r~Cette viande n\'etait pas fraiche')
        elseif cosiestalo == 2 then
            TriggerClientEvent('esx:showNotification', source, '~r~Cette Salade n\'etait pas fraiche')
        elseif cosiestalo == 3 then
            TriggerClientEvent('esx:showNotification', source, '~r~Cette tomate n\'etait pas fraiche')
        elseif cosiestalo == 4 then
            TriggerClientEvent('esx:showNotification', source, '~r~Ce ketchup n\'etait pas fraiche')
        else
            TriggerClientEvent('esx:showNotification', source, '~r~Ce pain n\'etait pas frais')
        end

            TriggerClientEvent('esx:showNotification', source, '~o~Le client a vomit après avoir manger ton burger')
            TriggerClientEvent('esx:showNotification', source, '~b~Tu dois nettoyé les ~y~toilettes')
	
end)


--Recuperation de frite
RegisterServerEvent('wojtek_burgerownia:dajitemfrite')
AddEventHandler('wojtek_burgerownia:dajitemfrite', function()
	
	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

	TriggerClientEvent('esx:showNotification', source, '~b~La barquette de frites tout chaude!')
	xPlayer.addInventoryItem('frite', 1)

end)

--Recuperation de soda
RegisterServerEvent('wojtek_burgerownia:dajitemsoda')
AddEventHandler('wojtek_burgerownia:dajitemsoda', function()

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
	local vpomidor = xPlayer.getInventoryItem('soda').count

	if vpomidor < Config.maxpomidor then
		TriggerClientEvent('esx:showNotification', source, '~b~Et un Soda Frais!')
		xPlayer.addInventoryItem('soda', 1)
	else
		TriggerClientEvent('esx:showNotification', source, '~r~Vous ne pouvez pas prendre plus de soda!')
	end
end)

--Recuperation de Donuts
RegisterServerEvent('wojtek_burgerownia:dajitemdonut2')
AddEventHandler('wojtek_burgerownia:dajitemdonut2', function()

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
	local vsalata = xPlayer.getInventoryItem('donut2').count

	if vsalata < Config.maxsalata then
		TriggerClientEvent('esx:showNotification', source, '~b~Oh le bon donut !')
		xPlayer.addInventoryItem('donut2', 1)
	else
		TriggerClientEvent('esx:showNotification', source, '~r~Vous ne pouvez pas prendre + de Donuts!')
	end
end)


--Recuperation de Cupcake
RegisterServerEvent('wojtek_burgerownia:dajitemcupcake')
AddEventHandler('wojtek_burgerownia:dajitemcupcake', function()

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
	local vketchup = xPlayer.getInventoryItem('cupcake').count

	if vketchup < 20 then
		TriggerClientEvent('esx:showNotification', source, '~b~Voici un beau cupcake!')
		xPlayer.addInventoryItem('cupcake', 1)
	else
		TriggerClientEvent('esx:showNotification', source, '~r~Vous ne pouvez pas prendre plus de Cupcake!')
	end
end)

--Recuperation de viande
RegisterServerEvent('wojtek_burgerownia:dajitemmieso')
AddEventHandler('wojtek_burgerownia:dajitemmieso', function()

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
	local vmieso = xPlayer.getInventoryItem('wmieso').count

	if vmieso < Config.maxmieso then
		TriggerClientEvent('esx:showNotification', source, '~b~Tu viens de recuperer de la viande!')
		xPlayer.addInventoryItem('wmieso', 1)
	else
		TriggerClientEvent('esx:showNotification', source, '~r~Tu as trop de viande sur toi!')
	end
end)
--Fabrication du Burger ???
RegisterServerEvent('wojtek_burgerownia:dajitemburger')
AddEventHandler('wojtek_burgerownia:dajitemburger', function()

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
	local vburger = xPlayer.getInventoryItem('wburger').count

end)

RegisterServerEvent('wojtek_burgerownia:dajitemmenuburger1')
AddEventHandler('wojtek_burgerownia:dajitemmenuburger1', function()

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
	local vburger = xPlayer.getInventoryItem('menuburger1').count

end)

RegisterServerEvent('wojtek_burgerownia:dajitemmenuburger2')
AddEventHandler('wojtek_burgerownia:dajitemmenuburger2', function()

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
	local vburger = xPlayer.getInventoryItem('menuburger2').count

end)


--Avec quoi tu peux cuire
RegisterServerEvent('wojtek_burgerownia:peutonfairedesfrites')
AddEventHandler('wojtek_burgerownia:peutonfairedesfrites', function()

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
	local vmieso = xPlayer.getInventoryItem('potato').count
	local vgmieso = xPlayer.getInventoryItem('frite').count

	if vmieso > 0 and vgmieso < 20 then 
	xPlayer.removeInventoryItem('potato', 1)
	TriggerClientEvent('wojtek_burgerownia:animacfrite', source)
	elseif vmieso < 0 or vmieso == 0 then
		TriggerClientEvent('esx:showNotification', source, '~r~Tu n\'as pas assez de patates!') 
		TriggerClientEvent('wojtek_burgerownia:falarm', source)
	elseif vgmieso == 20 or vgmieso > 20 then
		TriggerClientEvent('esx:showNotification', source, '~r~Tu possèdes une quantité max de cornet de frites!') 
		TriggerClientEvent('wojtek_burgerownia:falarm', source)
	end

end)

--Avec quoi tu peux cuire
RegisterServerEvent('wojtek_burgerownia:czymozesmazyc')
AddEventHandler('wojtek_burgerownia:czymozesmazyc', function()

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
	local vmieso = xPlayer.getInventoryItem('wmieso').count
	local vgmieso = xPlayer.getInventoryItem('wgmieso').count

	if vmieso > 0 and vgmieso < Config.maxgmieso then 
	xPlayer.removeInventoryItem('wmieso', 1)
	TriggerClientEvent('wojtek_burgerownia:animacjasmazenia', source)
	elseif vmieso < 0 or vmieso == 0 then
		TriggerClientEvent('esx:showNotification', source, '~r~Tu n\'as pas assez de viande!') 
		TriggerClientEvent('wojtek_burgerownia:falarm', source)
	elseif vgmieso == Config.maxgmieso or vgmieso > Config.maxgmieso then
		TriggerClientEvent('esx:showNotification', source, '~r~Tu possèdes une quantité max de viande cuite!') 
		TriggerClientEvent('wojtek_burgerownia:falarm', source)
	end

end)

--Avec quoi tu peux laver
RegisterServerEvent('wojtek_burgerownia:czymozemyc') 
AddEventHandler('wojtek_burgerownia:czymozemyc', function()

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
	local vsalata = xPlayer.getInventoryItem('salad').count
	local vgsalata = xPlayer.getInventoryItem('wgsalata').count

	if vsalata > 0 and vgsalata < Config.maxgsalata then 
	xPlayer.removeInventoryItem('salad', 1)
	TriggerClientEvent('wojtek_burgerownia:animacjamycia', source)
	elseif vsalata < 0 or vsalata == 0 then
		TriggerClientEvent('esx:showNotification', source, '~r~Tu n\'as pas assez de salade!') 
		TriggerClientEvent('wojtek_burgerownia:falarm', source)
	elseif vgsalata == 5 or vgsalata > 5 then
		TriggerClientEvent('esx:showNotification', source, '~r~Tu possèdes une quantité max de salade lavé!') 
		TriggerClientEvent('wojtek_burgerownia:falarm', source)
	end

end)

--Avec quoi tu peux cuirefritte
RegisterServerEvent('wojtek_burgerownia:cuirfritte') 
AddEventHandler('wojtek_burgerownia:cuirfritte', function()

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
	local vingrediant = xPlayer.getInventoryItem('potato').count
	local vrecette = xPlayer.getInventoryItem('frite').count

		if vrecette < 29 then
		xPlayer.removeInventoryItem('potato', 1)
		TriggerClientEvent('wojtek_burgerownia:animacfrite', source)
	elseif vingrediant < 0 or vingrediant == 0 then
		TriggerClientEvent('esx:showNotification', source, '~r~Tu n\'as pas assez de patates!') 
		TriggerClientEvent('wojtek_burgerownia:falarm', source)
	elseif vrecette == 30 or vrecette > 30 then
		TriggerClientEvent('esx:showNotification', source, '~r~Tu possèdes une quantité max de frites!') 
		TriggerClientEvent('wojtek_burgerownia:falarm', source)
	end

end)

--Avec quoi tu peux faire soda
RegisterServerEvent('wojtek_burgerownia:fairesoda') 
AddEventHandler('wojtek_burgerownia:fairesoda', function()

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
	local vingrediant = xPlayer.getInventoryItem('sugar').count
	local vingrediant2 = xPlayer.getInventoryItem('water').count
	local vrecette = xPlayer.getInventoryItem('soda').count

	print(vingrediant,vingrediant2,vrecette,(vingrediant > 0 and vingrediant2 > 0 and vrecette < 30))

	if vingrediant > 0 and vingrediant2 > 0 and vrecette < 30 then
		xPlayer.removeInventoryItem('sugar', 1)
		xPlayer.removeInventoryItem('water', 1)
		TriggerClientEvent('wojtek_burgerownia:animacsodamaker', source)
	elseif vingrediant < 0 or vingrediant == 0 then
		TriggerClientEvent('esx:showNotification', source, '~r~Tu n\'as pas assez de sucres!') 
		TriggerClientEvent('wojtek_burgerownia:falarm', source)
	elseif vingrediant2 < 0 or vingrediant2 == 0 then	
		TriggerClientEvent('esx:showNotification', source, '~r~Tu n\'as pas assez d eau!') 
		TriggerClientEvent('wojtek_burgerownia:falarm', source)
	elseif vrecette <= 30 then
		TriggerClientEvent('esx:showNotification', source, '~r~Tu possèdes une quantité max de sodas!') 
		TriggerClientEvent('wojtek_burgerownia:falarm', source)
	end

end)

--Avec quoi tu peux couper tomate
RegisterServerEvent('wojtek_burgerownia:czymozekroic') 
AddEventHandler('wojtek_burgerownia:czymozekroic', function()

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
	local vpomidor = xPlayer.getInventoryItem('tomato').count
	local vgpomidor = xPlayer.getInventoryItem('wgpomidor').count

	if vpomidor > 0 and vgpomidor < Config.maxgpomidor then 
	xPlayer.removeInventoryItem('tomato', 1)
	TriggerClientEvent('wojtek_burgerownia:animacjakrojenia', source)
	elseif vpomidor < 0 or vpomidor == 0 then
		TriggerClientEvent('esx:showNotification', source, '~r~Tu n\'as pas assez de tomate!') 
		TriggerClientEvent('wojtek_burgerownia:falarm', source)
	elseif vgpomidor == 5 or vgpomidor > 5 then
		TriggerClientEvent('esx:showNotification', source, '~r~Tu possèdes une quantité max de tomate coupé!') 
		TriggerClientEvent('wojtek_burgerownia:falarm', source)
	end

end)

--Fabrication du Burger
RegisterServerEvent('wojtek_burgerownia:czymozeprzygotowac') 
AddEventHandler('wojtek_burgerownia:czymozeprzygotowac', function()

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

	local vgpomidor = xPlayer.getInventoryItem('wgpomidor').count
	local vgsalata = xPlayer.getInventoryItem('wgsalata').count
	local vgmieso = xPlayer.getInventoryItem('wgmieso').count
	local vketchup = xPlayer.getInventoryItem('ketchup').count
	local vbulka = xPlayer.getInventoryItem('bread').count

	if vgpomidor > 0 and vgsalata > 0 and vgmieso > 0 and vketchup > 0 and vbulka > 0 then 

	xPlayer.removeInventoryItem('wgpomidor', 1)
	xPlayer.removeInventoryItem('wgsalata', 1)
	xPlayer.removeInventoryItem('wgmieso', 1)
	xPlayer.removeInventoryItem('ketchup', 1)
	xPlayer.removeInventoryItem('bread', 1)

	TriggerClientEvent('wojtek_burgerownia:animacjaprzygotowania', source, "wburger")
	else
		TriggerClientEvent('esx:showNotification', source, '~r~Tu essaye de produire un burger mais')
		TriggerClientEvent('esx:showNotification', source, '~w~Il te manque sans doute une des ingrediants: ~y~1x ~b~pain~w~, ~y~1x ~b~viande cuite~w~, ')
		TriggerClientEvent('esx:showNotification', source, '~w~~y~1x ~b~tomate coupé~w~, ~y~1x ~b~salade lavé~w~, ~y~1x ~b~ketchup')
		TriggerClientEvent('wojtek_burgerownia:falarm', source)
	end

end)


RegisterServerEvent('wojtek_burgerownia:czymozeprzygotowac2') 
AddEventHandler('wojtek_burgerownia:czymozeprzygotowac2', function()

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

	local vburger = xPlayer.getInventoryItem('wburger').count
	local vfrite = xPlayer.getInventoryItem('frite').count
	local vcupcake = xPlayer.getInventoryItem('cupcake').count
	local vdonut = xPlayer.getInventoryItem('donut2').count
	local vsoda = xPlayer.getInventoryItem('soda').count

	if vburger > 0 and vfrite > 0 and vcupcake > 0 and vdonut > 0 and vsoda > 0 then 

	xPlayer.removeInventoryItem('wburger', 1)
	xPlayer.removeInventoryItem('frite', 1)
	xPlayer.removeInventoryItem('cupcake', 1)
	xPlayer.removeInventoryItem('donut2', 1)
	xPlayer.removeInventoryItem('soda', 1)

	TriggerClientEvent('wojtek_burgerownia:animacjaprzygotowania', source, "menuburger1")
	else
		TriggerClientEvent('esx:showNotification', source, '~r~Tu essaye de produire un menu mais')
		TriggerClientEvent('esx:showNotification', source, '~w~Il te manque sans doute une des ingrediants: ~y~1x ~b~burger~w~, ~y~1x ~b~cupcake~w~, ')
		TriggerClientEvent('esx:showNotification', source, '~w~~y~1x ~b~donut~w~, ~y~1x ~b~frites~w~, ~y~1x ~b~soda')
		TriggerClientEvent('wojtek_burgerownia:falarm', source)
	end

end)

RegisterServerEvent('wojtek_burgerownia:czymozeprzygotowac3') 
AddEventHandler('wojtek_burgerownia:czymozeprzygotowac3', function()

	local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

	local vburger = xPlayer.getInventoryItem('wburger').count
	local vfrite = xPlayer.getInventoryItem('frite').count
	local vcupcake = xPlayer.getInventoryItem('cupcake').count
	local vdonut = xPlayer.getInventoryItem('donut2').count
	local vsoda = xPlayer.getInventoryItem('soda').count

	if vburger > 0 and vfrite > 1 and vcupcake > 0 and vdonut > 0 and vsoda > 1 then 

	xPlayer.removeInventoryItem('wburger', 1)
	xPlayer.removeInventoryItem('frite', 2)
	xPlayer.removeInventoryItem('cupcake', 1)
	xPlayer.removeInventoryItem('donut2', 1)
	xPlayer.removeInventoryItem('soda', 2)

	TriggerClientEvent('wojtek_burgerownia:animacjaprzygotowania', source, "menuburger2")
	else
		TriggerClientEvent('esx:showNotification', source, '~r~Tu essaye de produire un menu mais')
		TriggerClientEvent('esx:showNotification', source, '~w~Il te manque sans doute une des ingrediants: ~y~1x ~b~burger~w~, ~y~1x ~b~cupcake~w~, ')
		TriggerClientEvent('esx:showNotification', source, '~w~~y~1x ~b~donut~w~, ~y~2x ~b~frites~w~, ~y~2x ~b~soda')
		TriggerClientEvent('wojtek_burgerownia:falarm', source)
	end

end)


--Donner Viande cuite
RegisterServerEvent('wojtek_burgerownia:dajitemgmieso')
AddEventHandler('wojtek_burgerownia:dajitemgmieso', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)



	xPlayer.addInventoryItem('wgmieso', 1)


end)

--Donner Tomate coupé
RegisterServerEvent('wojtek_burgerownia:dajitemgpomidor')
AddEventHandler('wojtek_burgerownia:dajitemgpomidor', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)



	xPlayer.addInventoryItem('wgpomidor', 1)


end)

--Donner salade lavé
RegisterServerEvent('wojtek_burgerownia:dajitemgsalata')
AddEventHandler('wojtek_burgerownia:dajitemgsalata', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)



	xPlayer.addInventoryItem('wgsalata', 1)


end)

--Donner burger
RegisterServerEvent('wojtek_burgerownia:dajitemburger')
AddEventHandler('wojtek_burgerownia:dajitemburger', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)



	xPlayer.addInventoryItem('wburger', 1)


end)

--Donner burger
RegisterServerEvent('wojtek_burgerownia:dajitemmenuburger1')
AddEventHandler('wojtek_burgerownia:dajitemmenuburger1', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)



	xPlayer.addInventoryItem('menuburger1', 1)


end)
--Donner burger
RegisterServerEvent('wojtek_burgerownia:dajitemmenuburger2')
AddEventHandler('wojtek_burgerownia:dajitemmenuburger2', function()

	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)



	xPlayer.addInventoryItem('menuburger2', 1)


end)



RegisterServerEvent('esx_resto:getStockItem')
AddEventHandler('esx_resto:getStockItem', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_resto', function(inventory)

    local item = inventory.getItem(itemName)

    if item.count >= count then
      inventory.removeItem(itemName, count)
      xPlayer.addInventoryItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, "La quantité indiqué est invalide")
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, "Les" .. count .. ' ' .. itemName .." ont été retiré du stock")

  end)

end)

ESX.RegisterServerCallback('esx_resto:getStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_resto', function(inventory)
    cb(inventory.items)
  end)

end)

-------------
-- AJOUT 2 --
-------------

RegisterServerEvent('esx_resto:putStockItems')
AddEventHandler('esx_resto:putStockItems', function(itemName, count)

  local xPlayer = ESX.GetPlayerFromId(source)
  local sourceItem = xPlayer.getInventoryItem(itemName)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_resto', function(inventory)

    local inventoryItem = inventory.getItem(itemName)

    if sourceItem.count >= count and count > 0 then
      xPlayer.removeInventoryItem(itemName, count)
      inventory.addItem(itemName, count)
    else
      TriggerClientEvent('esx:showNotification', xPlayer.source, "La quantité indiqué est invalide")
    end

    TriggerClientEvent('esx:showNotification', xPlayer.source, "Les " .. count .. ' ' .. itemName .. "ont été ajouté au stock" )

  end)

end)

ESX.RegisterServerCallback('esx_resto:putStockItems', function(source, cb)

  TriggerEvent('esx_addoninventory:getSharedInventory', 'society_resto', function(inventory)
    cb(inventory.items)
  end)

end)

ESX.RegisterServerCallback('esx_resto:getPlayerInventory', function(source, cb)

	local xPlayer    = ESX.GetPlayerFromId(source)
	local items      = xPlayer.inventory
  
	cb({
	  items      = items
	})
  
  end)
  
  ESX.RegisterServerCallback('esx_resto:tryRemoveInventoryItem', function(source, cb, itemName, itemCount)
  
	local xPlayer = ESX.GetPlayerFromId(source)
	local item    = xPlayer.getInventoryItem(itemName)
  
	if item.count >= itemCount then
	  xPlayer.removeInventoryItem(itemName, itemCount)
	  cb(true)
	else
	  cb(false)
	end
  end)

--------------------------------------------
------ Napisane przez wojtek.cfg#0349 ------
----------------- ©  2019 ------------------
--------------------------------------------

RegisterServerEvent('esx_resto:updateautosell')
AddEventHandler('esx_resto:updateautosell', function(source)
	AutosellServValue = not AutosellServValue
  	TriggerClientEvent('esx_resto:updateauto', -1, AutosellServValue)

end)

RegisterServerEvent('esx_resto:haveenoughmoney')
AddEventHandler('esx_resto:haveenoughmoney', function(source, itemName, count , totalprice)
	print(source, itemName, count , totalprice)
	local _source = source
	local xPlayer = ESX.GetPlayerFromIdentifier(_source)
	price = ESX.Math.Round(tonumber(totalprice))
	local itemlimit = xPlayer.getInventoryItem(itemName).count
	
	if (itemlimit + count) > 6 then
		TriggerClientEvent('esx:showNotification', xPlayer.source, "Vous avez trop de "..itemName.." sur vous (5max)")
	else
		if price > 0 and xPlayer.getMoney() >= price then
			xPlayer.removeMoney(price)
			TriggerEvent('esx_addonaccount:getSharedAccount', 'society_resto', function(account)
				account.addMoney(price)
			end)

			TriggerEvent('esx_addoninventory:getSharedInventory', 'society_resto', function(inventory)

				local item = inventory.getItem(itemName)
			
				if item.count >= count then
				inventory.removeItem(itemName, count)
				xPlayer.addInventoryItem(itemName, count)
				else
				TriggerClientEvent('esx:showNotification', xPlayer.source, "La quantité indiqué est invalide")
				end
			
				TriggerClientEvent('esx:showNotification', xPlayer.source, "Les" .. count .. ' ' .. itemName .." ont été retiré du stock")
			end)
		else
			TriggerClientEvent('esx:showNotification', xPlayer.source, "Vous n'avez pas assez d'argent sur vous")

		end
	end

	
	  
	
  
end)

ESX.RegisterServerCallback('esx_resto:firstload', function(source,cb)
  	cb(AutosellServValue)
end)
