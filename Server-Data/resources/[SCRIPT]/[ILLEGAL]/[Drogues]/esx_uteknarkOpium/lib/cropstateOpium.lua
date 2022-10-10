
ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
local onServer = IsDuplicityVersion()
local cropstateMethods2 = {
    plant = function(instance, location, soil, stage, source)
        if onServer then
            stage = stage or 1
            if Config.debug == true then
            -- print(source)
            end
            MySQL.Async.insert("INSERT INTO `uteknark_Opium` (`player`,`x`, `y`, `z`, `soil`, `stage`) VALUES (@player, @x, @y, @z, @soil, @stage);",
            {
                ['@player'] = source,
                ['@x'] = location.x,
                ['@y'] = location.y,
                ['@z'] = location.z,
                ['@soil'] = soil,
                ['@stage'] = stage,
            },
            function(id)
                instance:import(id, location, stage, os.time(), soil)
                TriggerClientEvent('esx_uteknarkOpium:planted',-1, id, location, stage)
                verbose('Plant',id,'was planted.')
            end)
        else
            Citizen.Trace("Attempt to cropstate:plant on client. Not going to work.\n")
        end
    end,
    load = function(instance, callback)
        if onServer then
            verbose('Loading...')
            MySQL.Async.fetchAll("SELECT `id`, `stage`, UNIX_TIMESTAMP(`time`) AS `time`, `x`, `y`, `z`, `soil` FROM `uteknark_Opium`;", 
            {},
            function(rows)
                Citizen.CreateThread(function()
                    for rownum,row in ipairs(rows) do
                        instance:import(row.id, vector3(row.x, row.y, row.z), row.stage, row.time, row.soil)
                        if rownum % 50 == 0 then
                            Citizen.Wait(0)
                        end
                    end
                    if callback then callback(#rows) end
                    instance.loaded = true
                    verbose('Load complete')
                end)
            end)
        else
            Citizen.Trace("Attempt to cropstate:load on client. Not going to work\n")
        end
    end,
    import = function(instance, id, location, stage, time, soil)
        local success, object = instance.octree:insert(location, 0.01, {id=id, stage=stage, time=time, soil=soil})
        if not success then
            Citizen.Trace(string.format("Uteknark failed to import plant with ID %i into octree\n", id))
        end
        instance.index[id] = object
    end,
    update = function(instance, id, stage, yield)
        local plant = instance.index[id]
        plant.data.stage = stage
        if onServer then
            plant.data.time = os.time()
            MySQL.Async.execute("UPDATE `uteknark_Opium` SET `stage` = @stage WHERE `id` = @id;",
            {
                ['@id'] = id,
                ['@stage'] = stage,
            }, function(_)
                TriggerClientEvent('esx_uteknarkOpium:update', -1, id, stage)
                verbose('Set plant',id,'to stage',stage)
            end)
        elseif plant.data.object then
            if DoesEntityExist(plant.data.object) then
                DeleteObject(plant.data.object)
            end
            plant.data.object = nil
        end
    end,
    remove = function(instance, id, withPyro)
        local object = instance.index[id]
        local location = object.bounds.location
        object.data.deleted = true
        if object.node then
            -- NOTE: In rare cases the node is being re-assigned while a remove is happening.
            -- This cases `node` to be nil here, crashing the script.
            -- Technically this is a memory leak because the object will then exist in the reflowed node.
            -- It's not a real problem, however, as it's exceedingly rare and not even a whole kilobyte.
            -- The object will still get deleted, and is not propagated to clients, so it's just a data ghost.
            object.node:remove(object.oindex)
        end
        instance.index[id] = nil
        if onServer then
            MySQL.Async.execute("DELETE FROM `uteknark_Opium` WHERE `id` = @id LIMIT 1;",
            { ['@id'] = id },
            function()
                TriggerClientEvent('esx_uteknarkOpium:removePlant', -1, id)
                if withPyro then
                    TriggerClientEvent('esx_uteknarkOpium:pyromaniac', -1, location)
                end
                verbose('Removed plant',id)
            end)
        else
            if object.data.object then
                if DoesEntityExist(object.data.object) then
                    DeleteObject(object.data.object)
                end
                object.data.object = nil
            end
        end
    end,
    bulkData = function(instance, target)
        if onServer then
            verbose('Preparing bulk plant data for player',target)
            target = target or -1
            while not instance.loaded do
                Citizen.Wait(1000)
            end
            local forest = {}
            for id, plant in pairs(instance.index) do
                if type(id) == 'number' then -- Because there is a key called `hashtable`!
                    table.insert(forest, {id=id, location=plant.bounds.location, stage=plant.data.stage})
                end
            end
            TriggerClientEvent('esx_uteknarkOpium:bulk_data', target, forest)
        else
            TriggerServerEvent('esx_uteknarkOpium:request_data')
        end
    end,
}

local cropstateMeta2 = {
    __newindex = function(instance, key, value)
        -- Do I even need this?
    end,
    __index = function(instance, key)
        return instance._methods[key]
    end,
}

cropstateOpium = {
    index = {
        hashtable = true, -- To *force* lua to make it a hashtable rather than an array.
    },
    octree = pOctree(vector3(0,1500,0),vector3(12000,13000,2000)),
    loaded = false,
    _methods = cropstateMethods2,
}

setmetatable(cropstateOpium,cropstateMeta2)

if onServer then
    RegisterNetEvent('esx_uteknarkOpium:request_data')
    AddEventHandler ('esx_uteknarkOpium:request_data', function()
        cropstateOpium:bulkData(source)
    end)
    
    RegisterNetEvent('esx_uteknarkOpium:remove')
    AddEventHandler ('esx_uteknarkOpium:remove', function(plantID, nearLocation)
        local src = source
        local plant = cropstateOpium.index[plantID]
        if plant then
            local plantLocation = plant.bounds.location
            local distance = #( nearLocation - plantLocation)
            if distance <= Config.Distance.Interact then
                cropstateOpium:remove(plantID, true)
                makeToast(src, _U('interact_text'), _U('interact_destroyed'))
                doScenario(src, 'Destroy', plantLocation)
            else
                Citizen.Trace(GetPlayerName(src)..' ('..src..') is too far away from '..plantID..' to remove it ('..distance'm)\n')
            end
        else
            Citizen.Trace(GetPlayerName(src)..' ('..src..') tried to remove plant '..plantID..': That plant does not exist!\n')
            TriggerClientEvent('esx_uteknarkOpium:remove', src, plantID)
        end
    end)

    RegisterNetEvent('esx_uteknarkOpium:frob')
    AddEventHandler ('esx_uteknarkOpium:frob', function(plantID, nearLocation)
        local src = source
        local plant = cropstateOpium.index[plantID]
        if plant then
            local plantLocation = plant.bounds.location
            local distance = #( nearLocation - plantLocation)
            if distance <= Config.Distance.Interact then
                local stageData = GrowthOpium[plant.data.stage]
                -- print(stageData)
                if stageData.interact then
                    if stageData.yield then
                        local yield = math.random(Config.Yield[1], Config.Yield[2])
                        local seeds = 0
                        if GiveItem(src, Config.Items.Product, yield) then
                            cropstateOpium:remove(plantID)
                            doScenario(src, 'Frob', plantLocation)
                            if seeds > 0 and GiveItem(src, Config.Items.Seed, seeds) then
                                makeToast(src, _U('interact_text'), _U('interact_harvested', yield, seeds))
                            else
                                makeToast(src, _U('interact_text'), _U('interact_harvested', yield, 0))
                            end
                        else
                            makeToast(src, _U('interact_text'), _U('interact_full', yield))
                        end
                    else
                        if #GrowthOpium > plant.data.stage then
                            local xPlayer = ESX.GetPlayerFromId(src)
                            
                                if Config.Items.Tend ~= nil and xPlayer.getInventoryItem(Config.Items.Tend) then
                                makeToast(src, _U('interact_text'), _U('interact_tended'))
                                cropstateOpium:update(plantID, plant.data.stage + 1)
                                doScenario(src, 'Frob', plantLocation)
                                TakeItem(src, Config.Items.Tend)
                                else
                                    makeToast(src, _U('interact_text'), "Vous n'avez pas d'eau pour vos plantes")
                                end
                        end
                    end
                else
                    Citizen.Trace(GetPlayerName(src)..' ('..src..') tried to frob plant '..plantID..': That plant is in a non-frobbable stage!\n')
                end
            else
                Citizen.Trace(GetPlayerName(src)..' ('..src..') is too far away from '..plantID..' to frob it ('..distance'm)\n')
            end
        else
            Citizen.Trace(GetPlayerName(src)..' ('..src..') tried to frob plant '..plantID..': That plant does not exist!\n')
        end
    end)

else
    RegisterNetEvent('esx_uteknarkOpium:bulk_data')
    AddEventHandler ('esx_uteknarkOpium:bulk_data', function(forest)
        for i, plant in ipairs(forest) do
            cropstateOpium:import(plant.id, plant.location, plant.stage)
        end
        cropstateOpium.loaded = true
    end)

    RegisterNetEvent('esx_uteknarkOpium:planted')
    AddEventHandler ('esx_uteknarkOpium:planted', function(id, location, stage)
        cropstateOpium:import(id, location, stage)
    end)
    
    RegisterNetEvent('esx_uteknarkOpium:update')
    AddEventHandler ('esx_uteknarkOpium:update', function(plantID, stage)
        cropstateOpium:update(plantID, stage)
    end)

    RegisterNetEvent('esx_uteknarkOpium:removePlant')
    AddEventHandler ('esx_uteknarkOpium:removePlant', function(plantID)
        cropstateOpium:remove(plantID)
    end)
end
