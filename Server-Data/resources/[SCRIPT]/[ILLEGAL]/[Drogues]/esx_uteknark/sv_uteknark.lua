local ESX = nil
local oneSyncEnabled = GetConvar('onesync_enabled', false)
local VERBOSE = false
local lastPlant = {}
local tickTimes = {}
local tickPlantCount = 0
local VERSION = '1.1.4'
local LocationRandomizer = math.ceil(math.random(1,2)) or 1
Config.plantation = Uteknarkplantation[LocationRandomizer]
print(LocationRandomizer)
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

AddEventHandler('playerDropped',function(why)
    lastPlant[source] = nil
end)

--HappyHour

local function HappyHourHarvest(source)
	--print(tonumber(os.date("%w")),tonumber(os.date("%H")),tonumber(os.date("%w")) >= 5,tonumber(os.date("%w")) == 0,(tonumber(os.date("%w")) == 0) or (tonumber(os.date("%w")) >= 5),tonumber(os.date("%H")) < 15,(tonumber(os.date("%H")) < 15) ~= (tonumber(os.date("%H")) > 3))
	if Config.ProtectionHour then
		if ((tonumber(os.date("%w")) == 3) or (tonumber(os.date("%w")) >= 5)) then
			if ((tonumber(os.date("%H")) < 16) == (tonumber(os.date("%H")) > 2)) then
				TriggerClientEvent('esx:showNotification', source, "La plante ne peut plus être planté en dehors des heures d'affluence (16h-02h)")
				return false
			end
		else
			if (tonumber(os.date("%H")) < 16) then
				TriggerClientEvent('esx:showNotification', source, "La plante ne peut plus être planté en dehors des heures d'affluence (16h-00h)")
				return false
			end
		end
		return true
	end
	return true
end

function log (...)
    local numElements = select('#',...)
    local elements = {...}
    local line = ''
    local prefix = '['..os.date("%H:%M:%S")..'] '
    suffix = '\n'
    local resourceName = '<'..GetCurrentResourceName()..'>'

    for i=1,numElements do
        local entry = elements[i]
        line = line..' '..tostring(entry)
    end
    Citizen.Trace(prefix..resourceName..line..suffix)
end

function verbose(...)
    if VERBOSE then
        log(...)
    end
end

if not oneSyncEnabled then
    if Config.debug == true then
        log('OneSync not available: Will have to trust client for locations!')
    end
end

function HasItem(who, what, count)
    count = count or 1
    if ESX == nil then
        if Config.debug == true then
            log("HasItem: No ESX Object!")
        end
        return false
    end
    local xPlayer = ESX.GetPlayerFromId(who)
    if xPlayer == nil then
        if Config.debug == true then
            log("HasItem: Failed to resolve xPlayer from", who)
        end
        return false
    end
    local itemspec =  xPlayer.getInventoryItem(what)
    if itemspec then
        if itemspec.count >= count then
            return true
        else
            return false
        end
    else
        if Config.debug == true then
            log("HasItem: Failed to get item data for item", what)
        end
        return false
    end
end

function TakeItem(who, what, count)
    count = count or 1
    if ESX == nil then
        if Config.debug == true then
            log("TakeItem: No ESX Object!")
        end
        return false
    end
    local xPlayer = ESX.GetPlayerFromId(who)
    if xPlayer == nil then
        if Config.debug == true then
            log("TakeItem: Failed to resolve xPlayer from", who)
        end
        return false
    end
    local itemspec =  xPlayer.getInventoryItem(what)
    if itemspec then
        if itemspec.count >= count then
            xPlayer.removeInventoryItem(what, count)
            return true
        else
            return false
        end
    else
        if Config.debug == true then
            log("TakeItem: Failed to get item data for item", what)
            
        end
        return false
    end
end

function GiveItem(who, what, count)
    count = count or 1
    if ESX == nil then
        if Config.debug == true then
            log("GiveItem: No ESX Object!")
           
        end
        return false
    end
    local xPlayer = ESX.GetPlayerFromId(who)
    if xPlayer == nil then
        if Config.debug == true then
            log("GiveItem: Failed to resolve xPlayer from", who)
        end
        return false
    end
    local itemspec =  xPlayer.getInventoryItem(what)
    if itemspec then
        if not itemspec.limit or itemspec.limit == -1 or itemspec.count + count <= itemspec.limit then
            xPlayer.addInventoryItem(what, count)
            if Config.debug == true then
			log("GiveItem: Give a Seed to ", who)
            end
            return true
        else
            return false
        end
    else
        if Config.debug == true then
        log("GiveItem: Failed to get item data for item", what)
        end
        return false
    end
end

function makeToast(target, subject, message)
    TriggerClientEvent('esx_uteknark:make_toast', target, subject, message)
end

function inChat(target, message)
    if target == 0 then
        if Config.debug == true then
        log(message)
        end
    else
        TriggerClientEvent('chat:addMessage',target,{args={'UteKnark', message}})
    end
end

function areasecure(location)
	for k,v in pairs(Config.plantation) do
			local distance = #(v.coord - location)
			if distance < v.dist and Config.debug == true then
                if Config.debug == true then
				print("zoneOK")
                end
				return true
			end
	end
	return false
end

function antispam(ident)
	datauke = false
	MySQL.Async.fetchAll("SELECT player FROM uteknark_Opium WHERE player=@player;", {['@player']=ident}, function(results)
				local getN = 0
				for n in pairs(results) do 
					getN = getN + 1 
				end
                if Config.debug == true then
                    if Config.debug == true then
				    print("Uke:"..getN , getN < 15)
                    end
                end
				datauke = getN < Config.Nbr
	end)
	return datauke
end

function plantSeed(location, soil, source)
	local xPlayer = ESX.GetPlayerFromId(source)
	print("Plante Uteknark tente d'etre planté et il y a "..CopsConnected.." policier/policière")
	if CopsConnected >= 0 then
		if HappyHourHarvest(source) then
			antispam(xPlayer.identifier)
			Wait(200)
			
				if Config.debug == true then
					print("Condition 1 : Nbr de weed OK",datauke)
				end 
					datauke2 = false
					--print(json.encode(location))
					--print(json.encode(Uteknarkplantation[LocationRandomizer].coord))
					local distance = #(Uteknarkplantation[LocationRandomizer].coord - location)
					--print(distance)
						if distance < Uteknarkplantation[LocationRandomizer].dist then
							if Config.debug == true then
							print("zoneOK")
							end
							datauke2 = true
						end	
				if datauke2 then
						if Config.debug == true then
							print("Condition 2 : Localisation OK")
						end
					local hits = cropstate.octree:searchSphere(location, Config.Distance.Space)
					if #hits > 0 then
						return false
					end
					
					verbose('Planting at',location,'in soil', soil)
					cropstate:plant(location, soil, 1, xPlayer.identifier)
					return true
				else
					--GiveItem(source, Config.Items.Seed)
					makeToast(source, _U('planting_text'), "Votre sol n'est vraiment pas bien localisé pour faire pousser cela ici")
					return false
				end
			
		else
			
		end
	else
		TriggerClientEvent('esx:showNotification', source, "La présence policière n'est pas suffisante pour commencer cette activité , Merci de tenter une autre fois")
	end
end

function doScenario(who, what, where)
    verbose('Telling', who,'to',what,'at',where)
    TriggerClientEvent('esx_uteknark:do', who, what, where)
end

--RegisterNetEvent('esx_uteknark:localisestart')
ESX.RegisterServerCallback('esx_uteknark:localisestart', function(playerId, cb)
    cb(LocationRandomizer)
end)

RegisterNetEvent('esx_uteknark:success_plant')
AddEventHandler ('esx_uteknark:success_plant', function(location, soil)
    local src = source
    if oneSyncEnabled and false then -- "and false" because something is weird in my OneSync stuff
        local ped = GetPlayerPed(src)
        --log('ped:',ped)
        local pedLocation = GetEntityCoords(ped)
        --log('pedLocation:',pedLocation)
        --log('location:', location)
        local distance = #(pedLocation - location)
        if distance > Config.Distance.Interact then
            if distance > 10 then
                if Config.debug == true then
                log(GetPlayerName(src),'attempted planting at',distance..'m - Cheating?')
                end
            end
				makeToast(src, _U('planting_text'), _U('planting_too_far'))
            return
        end
    end
    if soil and Config.Soil[soil] then
        local hits = cropstate.octree:searchSphere(location, Config.Distance.Space)
        if #hits == 0 then
            if TakeItem(src, Config.Items.Seed) then
                if plantSeed(location, soil, src) then
                    makeToast(src, _U('planting_text'), _U('planting_ok'))
                    doScenario(src, 'Plant', location)
                else
                    GiveItem(src, Config.Items.Seed)
                    makeToast(src, _U('planting_text'), _U('planting_failed'))
                end
            else
                makeToast(src, _U('planting_text'), _U('planting_no_seed'))
            end
        else
            makeToast(src, _U('planting_text'), _U('planting_too_close'))
        end
    else
        makeToast(src, _U('planting_text'), _U('planting_not_suitable_soil'))
    end
end)

RegisterNetEvent('esx_uteknark:log')
AddEventHandler ('esx_uteknark:log',function(...)
    local src = source
    if Config.debug == true then
    log(src,GetPlayerName(src),...)
    end
end)

RegisterNetEvent('esx_uteknark:test_forest')
AddEventHandler ('esx_uteknark:test_forest',function(forest)
    local src = source


    if IsPlayerAceAllowed(src, 'command.uteknark') then

        local soil
        for candidate, quality in pairs(Config.Soil) do
            soil = candidate
            if quality >= 1.0 then
                break
            end
        end
        if Config.debug == true then
        log(GetPlayerName(src),'('..src..') is magically planting a forest of',#forest,'plants')
        end
        for i, tree in ipairs(forest) do
            cropstate:plant(tree.location, soil, tree.stage)
            if i % 25 == 0 then
                Citizen.Wait(500)
            end
        end
    else
        if Config.debug == true then
        log('OY!', GetPlayerName(src),'with ID',src,'tried to spawn a test forest, BUT IS NOT ALLOWED!')
        end
    end
end)

function keyCount(tbl)
    local count = 0
    if type(tbl) == 'table' then
        for key, value in pairs(tbl) do
            count = count + 1
        end
    end
    return count
end

Citizen.CreateThread(function()
    local ESXTries = 60
    local itemsLoaded = false
    while not itemsLoaded and ESXTries > 0 do
        TriggerEvent('esx:getSharedObject', function(obj)
            ESX = obj
            if keyCount(ESX.Items) > 0 then
                itemsLoaded = true
                for forWhat,itemName in pairs(Config.Items) do
                    if ESX.Items[itemName] then
                        if Config.debug == true then
                        --log('---------------------------------------------------------------------')
                        log(forWhat,'item in configuration ('..itemName..') found in ESX: Good!')
                        end
                    else
                        if Config.debug == true or Config.debug == false then
                        log('WARNING:',forWhat,'item in cofiguration ('..itemName..') does not exist!')
                        end
                    end
                end
                ESX.RegisterUsableItem(Config.Items.Seed, function(source)
                    local now = os.time()
                    local last = lastPlant[source] or 0
                    if now > last + (Config.ActionTime/1000) then
                        if HasItem(source, Config.Items.Seed) then
                            TriggerClientEvent('esx_uteknark:attempt_plant', source)
                            lastPlant[source] = now
                        else
                            makeToast(source, _U('planting_text'), _U('planting_no_seed'))
                        end
                    else
                        makeToast(source, _U('planting_text'), _U('planting_too_fast'))
                    end
                end)
            end
        end)
        Citizen.Wait(1000)
        ESXTries = ESXTries - 1
    end
    if not ESX then
        log("CRITICAL ERROR: Could not obtain ESX object!\n")
    end
end)

Citizen.CreateThread(function()
    local databaseReady = false
    while not databaseReady do
        Citizen.Wait(500)
        local state = GetResourceState('mysql-async')
        if state == "started" then
            Citizen.Wait(500)
            cropstate:load(function(plantCount)
                if plantCount == 1 then
                    if Config.debug == true then
                    log('Uteknark loaded a single plant!')
                    end
                else
                    if Config.debug == true then
                    log('Uteknark loaded',plantCount,'plants')
                    --log('---------------------------------------------------------------------')
                    end
                end
            end)
            databaseReady = true
        end
    end

    while true do
        Citizen.Wait(1000)
        local now = os.time()
        local begin = GetGameTimer()
        local plantsHandled = 0
        for id, plant in pairs(cropstate.index) do
            if type(id) == 'number' then -- Because of the whole "hashtable = true" thing
                local stageData = Growth[plant.data.stage]
				--print(stageData.time)
                local growthTime = (stageData.time * 60 * Config.TimeMultiplier)
                local soilQuality = Config.Soil[plant.data.soil] or 1.0
                -- for k,v in ipairs(Growth) do
                --     print(json.encode(v))
                -- end
                if stageData.interact then
                --local relevantTime = plant.data.time + ((growthTime / soilQuality) * Config.TimeMultiplier)
                --if now >= relevantTime then
                --    verbose('Plant',id,'has died: No interaction in time')
                --    cropstate:remove(id)
                --end
                else
                    local relevantTime = plant.data.time + ((growthTime * soilQuality) * Config.TimeMultiplier)
                    --print(now,relevantTime,now >= relevantTime)
					if now >= relevantTime then
                        if plant.data.stage < #Growth then
                            verbose('Plant',id,'has grown to stage',plant.data.stage + 1)
                            cropstate:update(id, plant.data.stage + 1)
                        else
                            verbose('Plant',id,'has died: Ran out of stages')
                            cropstate:remove(id)
                        end
                    end
                end

                plantsHandled = plantsHandled + 1
                if plantsHandled % 10 == 0 then
                    Citizen.Wait(500)
                end
            end
        end

        tickPlantCount = plantsHandled
        local tickTime = GetGameTimer() - begin
        table.insert(tickTimes, tickTime)
        while #tickTimes > 20 do
            table.remove(tickTimes, 1)
        end
    end
end)

local commands = {
    debug = function(source, args)
        if source == 0 then
            if Config.debug == true then
                log('Client debugging on the console? Nope.')
            end
        else
            TriggerClientEvent('esx_uteknark:toggle_debug', source)
        end
    end,
    stage = function(source, args)
        if args[1] and string.match(args[1], "^%d+$") then
            local plant = tonumber(args[1])
            if cropstate.index[plant] then
                if args[2] and string.match(args[2], "^%d+$") then
                    local stage = tonumber(args[2])
                    if stage > 0 and stage <= #Growth then
                        if Config.debug == true then
                        log(source,GetPlayerName(source),'set plant',plant,'to stage',stage)
                        end
                        cropstate:update(plant, stage)
                    else
                        inChat(source, string.format("%i is an invalid stage", stage))
                    end
                else
                    inChat(source, "What stage?")
                end
            else
                inChat(source,string.format("Plant %i does not exist!", plant))
            end
        else
            inChat(source, "What plant, you say?")
        end
    end,
    forest = function(source, args)
        if source == 0 then
            if Config.debug == true then
            log('Forests can\'t grow in a console, buddy!')
            end
        else

            local count = #Growth * #Growth
            if args[1] and string.match(args[1], "%d+$") then
                count = tonumber(args[1])
            end

            local randomStage = false
            if args[2] then randomStage = true end

            TriggerClientEvent('esx_uteknark:test_forest', source, count, randomStage)

        end
    end,
    stats = function(source, args)
        if cropstate.loaded then
            local totalTime = 0
            for i,time in ipairs(tickTimes) do
                totalTime = totalTime + time
            end
            local tickTimeAverage = totalTime / #tickTimes
            inChat(source, string.format("Tick time average: %.1fms", tickTimeAverage))
            inChat(source, string.format("Plant count: %i", tickPlantCount))
        else
            inChat(source,'Not loaded yet')
        end
    end,
    groundmat = function(source, args)
        if source == 0 then
            if Config.debug == true then
            log('Console. The ground material is CONSOLE.')
            end
        else
            TriggerClientEvent('esx_uteknark:groundmat', source)
        end
    end,
    pyro = function(source, args)
        if source == 0 then
            if Config.debug == true then
            log('You can\'t really test particle effects on the console.')
            end
        else
            TriggerClientEvent('esx_uteknark:pyromaniac', source)
        end
    end,
}

RegisterCommand('uteknark', function(source, args, raw)
    if #args > 0 then
        local directive = string.lower(args[1])
        if commands[directive] then
            if #args > 1 then
                local newArgs = {}
                for i,entry in ipairs(args) do
                    if i > 1 then
                        table.insert(newArgs, entry)
                    end
                end
                args = newArgs
            else
                args = {}
            end
            commands[directive](source,args)
        elseif source == 0 then
            if Config.debug == true then
            log('Invalid directive: ' .. directive)
            end
        else
            inChat(source,_U('command_invalid', directive))
        end
    else
        inChat(source, _U('command_empty', VERSION))
    end
end,true)

function CountCops()
	if ESX~=nil then
		local xPlayers = ESX.GetPlayers()

		CopsConnected = 0

		for i=1, #xPlayers, 1 do
			local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
			if xPlayer.job.name == 'police' then
				CopsConnected = CopsConnected + 1
			end
		end
	end
	
	SetTimeout(120 * 1000, CountCops)

end

CountCops()
