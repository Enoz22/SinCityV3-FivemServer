ESX = nil

Id = 0

Units = {}
Calls = {}
UnitStatus = {}

TriggerEvent(
    "esx:getSharedObject",
    function(obj)
        ESX = obj
    end
)

RegisterServerEvent("core_dispach:playerStatus")
AddEventHandler(
    "core_dispach:playerStatus",
    function(status)
        local src = source

        if status.carPlate ~= "" then
            Units[src] = {plate = status.carPlate, type = status.type, job = status.job, netId = status.netId}
        else
            Units[src] = nil
        end
    end
)

RegisterServerEvent("core_dispach:removeCall")
AddEventHandler(
    "core_dispach:removeCall",
    function(id)
        Calls[tonumber(id)] = nil
    end
)

RegisterServerEvent("core_dispach:changeStatus")
AddEventHandler(
    "core_dispach:changeStatus",
    function(userid, status)


        UnitStatus[userid] = status


    end
)

RegisterServerEvent("core_dispach:unitDismissed")
AddEventHandler(
    "core_dispach:unitDismissed",
    function(id, job)
        local src = source
        local count = 1

        for _, v in ipairs(Calls[tonumber(id)].respondingUnits) do
            if v.unit == src then
                table.remove(Calls[tonumber(id)].respondingUnits, count)
            end
            count = count + 1
        end
    end
)

RegisterServerEvent("core_dispach:unitResponding")
AddEventHandler(
    "core_dispach:unitResponding",
    function(id, job)
        local src = source
        table.insert(Calls[tonumber(id)].respondingUnits, {unit = src, type = job})
    end
)

RegisterServerEvent("core_dispach:forwardCall")
AddEventHandler(
    "core_dispach:forwardCall",
    function(id, job)
        local add = true
        for _, v in ipairs(Calls[tonumber(id)].job) do
            if v == job then
                add = false
            end
        end

        if add then
            table.insert(Calls[tonumber(id)].job, job)

            TriggerClientEvent("core_dispach:callAdded", -1, tonumber(id), Calls[tonumber(id)], job, 5000)
        end
    end
)

RegisterServerEvent("core_dispach:addMessage")
AddEventHandler(
    "core_dispach:addMessage",
    function(message, location, job, cooldown, sprite, color)
        local src = source
        local identifier = ESX.GetPlayerFromId(src).getIdentifier()
        local phone =
            MySQL.Sync.fetchScalar(
            "SELECT phone_number FROM users WHERE identifier = @identifier ",
            {["@identifier"] = identifier}
        )
        Calls[Id] = {
            code = "911",
            title = "Alerte Citoyens",
            extraInfo = {},
            respondingUnits = {},
            coords = location,
            job = {job},
            phone = phone,
            message = message,
            type = "message",
            caller = src
        }

        TriggerClientEvent("core_dispach:callAdded", -1, Id, Calls[Id], job, cooldown or 5000, sprite or 11, color or 5)

        Id = Id + 1


    end
)

RegisterServerEvent("core_dispach:addCall2")
AddEventHandler(
    "core_dispach:addCall2",
    function(message, location, job, cooldown, sprite, color, phone)
        local src = source
        local identifier = ESX.GetPlayerFromId(src).getIdentifier()
        
        if phone == nil then 
            phone = "DISPATCH"
        end

        Calls[Id] = {
            code = "911",
            title = "Alerte Citoyens",
            extraInfo = {},
            respondingUnits = {},
            coords = location,
            job = {job},
            phone = phone,
            message = message,
            type = "message",
            caller = src
        }

        TriggerClientEvent("core_dispach:callAdded", -1, Id, Calls[Id], job, cooldown or 5000, sprite or 11, color or 5)

        Id = Id + 1


    end
)

RegisterServerEvent("core_dispach:addCall3")
AddEventHandler(
    "core_dispach:addCall3",
    function(message, location, job, cooldown, sprite, color, phone, title)
        local src = source
        local identifier = ESX.GetPlayerFromId(src).getIdentifier()
        
        if phone == "" then 
            phone = "DISPATCH"
        end

        Calls[Id] = {
            code = "911",
            title = "Alerte Citoyens",
            extraInfo = {},
            respondingUnits = {},
            coords = location,
            job = {job},
            phone = phone,
            message = message,
            type = "message",
            caller = src
        }

        TriggerClientEvent("core_dispach:callAdded", -1, Id, Calls[Id], job, cooldown or 5000, sprite or 11, color or 5)

        Id = Id + 1


    end
)


RegisterServerEvent("core_dispach:addCall4")
AddEventHandler(
    "core_dispach:addCall4",
    function(message, location, job, cooldown, sprite, color, phone, title)
        local src = source
        local identifier = ESX.GetPlayerFromId(src).getIdentifier()
        print("je suis dans le script core dipatch coter serveur")
        if phone == "" then 
            phone = "DISPATCH"
        end

        Calls[Id] = {
            code = "911",
            title = "Alerte Citoyens",
            extraInfo = {},
            respondingUnits = {},
            job = {job},
            phone = phone,
            message = message,
            type = "message",
            caller = src
        }

        TriggerClientEvent("core_dispach:callAdded2", -1, Id, Calls[Id], job, cooldown or 5000, sprite or 11, color or 5)

        Id = Id + 1


    end
)


RegisterServerEvent("core_dispach:addCall")
AddEventHandler(
    "core_dispach:addCall",
    function(code, title, info, location, job, cooldown, sprite, color)

        Calls[Id] = {
            code = code,
            title = title,
            extraInfo = info,
            respondingUnits = {},
            coords = location,
            job = {job},
            type = "call"
        }
        if code == "C-99" then
            TriggerClientEvent("core_dispach:callAdded", -1, Id, Calls[Id], job, cooldown or 9500, sprite or 11, color or 17)
        else
            TriggerClientEvent("core_dispach:callAdded", -1, Id, Calls[Id], job, cooldown or 5000, sprite or 11, color or 5)
        end

         Id = Id + 1
    end
)

RegisterServerEvent("core_dispach:addCall2")
AddEventHandler(
    "core_dispach:addCall2",
    function(code, title, info, location, job, cooldown, sprite, color)
        Calls[Id] = {
            code = code,
            title = title,
            extraInfo = info,
            respondingUnits = {},
            coords = location,
            job = {job},
            type = "message"
        }

        TriggerClientEvent("core_dispach:callAdded", -1, Id, Calls[Id], job, cooldown or 5000, sprite or 11, color or 5)


         Id = Id + 1
    end
)

RegisterServerEvent("core_dispach:arrivalNotice")
AddEventHandler(
    "core_dispach:arrivalNotice",
    function(caller)
    	if caller ~= nil then
        TriggerClientEvent("core_dispach:arrivalNotice", caller)
    end
    end
)

ESX.RegisterServerCallback(
    "core_dispach:getPersonalInfo",
    function(source, cb)
        local identifier = ESX.GetPlayerFromId(source).getIdentifier()
        local firstname =
            MySQL.Sync.fetchScalar(
            "SELECT firstname FROM users WHERE identifier = @identifier ",
            {["@identifier"] = identifier}
        )
        local lastname =
            MySQL.Sync.fetchScalar(
            "SELECT lastname FROM users WHERE identifier = @identifier ",
            {["@identifier"] = identifier}
        )

        cb(firstname, lastname)
    end
)

ESX.RegisterServerCallback("core_dispach:OffDuty",function(source, cb)
    local identifier = ESX.GetPlayerFromId(source).getIdentifier()
    local player = ESX.GetPlayerFromId(source)
    local job =
        MySQL.Sync.fetchScalar(
        "SELECT job FROM users WHERE identifier = @identifier ",
        {["@identifier"] = identifier}
    )

    if job == "police" then
        MySQL.Async.transaction({
            'UPDATE users SET job = @job WHERE identifier = @identifier',
          },
          { ['job'] = "offpolice", ['identifier'] = identifier },
          function()
           
            cb("offpolice")
          end
        )
    elseif job == "offpolice" then
        MySQL.Async.transaction({
            'UPDATE users SET job = @job WHERE identifier = @identifier',
          },
          { ['job'] = "police", ['identifier'] = identifier },
          function()
           
            cb("police")
          end
        )
    elseif job == "ambulance" then
        MySQL.Async.transaction({
            'UPDATE users SET job = @job WHERE identifier = @identifier',
          },
          { ['job'] = "offambulance", ['identifier'] = identifier },
          function()
           
            cb("offambulance")
          end
        )
    elseif job == "offambulance" then
        MySQL.Async.transaction({
            'UPDATE users SET job = @job WHERE identifier = @identifier',
          },
          { ['job'] = "ambulance", ['identifier'] = identifier },
          function()
           
            cb("ambulance")
          end
        )
    elseif job == "sheriff" then
        MySQL.Async.transaction({
            'UPDATE users SET job = @job WHERE identifier = @identifier',
          },
          { ['job'] = "offsheriff", ['identifier'] = identifier },
          function()
           
            cb("offsheriff")
          end
        )
    elseif job == "offsheriff" then
        MySQL.Async.transaction({
            'UPDATE users SET job = @job WHERE identifier = @identifier',
          },
          { ['job'] = "sheriff", ['identifier'] = identifier },
          function()
           
            cb("sheriff")
          end
        )
    end
 end)

ESX.RegisterServerCallback(
    "core_dispach:getInfo",
    function(source, cb)
        local generated = {}

        for k, v in pairs(Units) do
            if GetPlayerPing(k) > 0 then
                local identifier = ESX.GetPlayerFromId(k).getIdentifier()
                local firstname =
                    MySQL.Sync.fetchScalar(
                    "SELECT firstname FROM users WHERE identifier = @identifier ",
                    {["@identifier"] = identifier}
                )
                local lastname =
                    MySQL.Sync.fetchScalar(
                    "SELECT lastname FROM users WHERE identifier = @identifier ",
                    {["@identifier"] = identifier}
                )

                if generated[v.plate] == nil then
                    generated[v.plate] = {
                        type = Config.Icons[v.type],
                        units = {{id = k, name = firstname .. " " .. lastname}},
                        job = v.job
                    }
                elseif generated[v.plate].job == v.job then
                    table.insert(generated[v.plate].units, {id = k, name = firstname .. " " .. lastname})
                end
            end
        end
        cb(generated, Calls, UnitStatus)
    end
)

ESX.RegisterServerCallback(
    "core_dispach:getUnits",
    function(source, cb)
        local generated = {}

        for k, v in pairs(Units) do
            if GetPlayerPing(k) > 0 then
                local identifier = ESX.GetPlayerFromId(k).getIdentifier()
                local firstname =
                    MySQL.Sync.fetchScalar(
                    "SELECT firstname FROM users WHERE identifier = @identifier ",
                    {["@identifier"] = identifier}
                )
                local lastname =
                    MySQL.Sync.fetchScalar(
                    "SELECT lastname FROM users WHERE identifier = @identifier ",
                    {["@identifier"] = identifier}
                )

                generated[k] = {netId = v.netId, firstname = firstname, lastname = lastname, type = v.type, job = v.job}
            end
        end
        cb(generated)
    end
)
