local Webhook = 'https://discord.com/api/webhooks/825509296124985365/5mpyYzEOJnvdd-bCJdMf8PgVfGoIcpckDmxTFhQUuBa3mX8cSSshs5hf0P0T09NGJ9og'

local SystemName = 'Sincity Coords'

RegisterCommand("gc", function(source, args, rawCommand)
    local source = source
    TriggerClientEvent('tm1_getcoords', source)
end, true)

RegisterCommand("gc1", function(source, args, rawCommand)
    local source = source
	TriggerClientEvent('tm1_getcoords1', source)
end, true)

RegisterServerEvent('tm1_getcoords:print')
AddEventHandler('tm1_getcoords:print', function(msg)
    ToDiscord(SystemName, '```css\n '..msg..'\n```')
end)

function ToDiscord(Name, Message, Image)
	if Message == nil or Message == '' then
		return false
	end
	
	if Image then
		PerformHttpRequest(Webhook, function(Error, Content, Head) end, 'POST', json.encode({username = Name, content = Message, avatar_url = Image}), { ['Content-Type'] = 'application/json' })
	else
		PerformHttpRequest(Webhook, function(Error, Content, Head) end, 'POST', json.encode({username = Name, content = Message}), { ['Content-Type'] = 'application/json' })
	end
end

function stringsplit(input, seperator)
	if seperator == nil then
		seperator = '%s'
	end
	
	local t={} ; i=1
	
	for str in string.gmatch(input, '([^'..seperator..']+)') do
		t[i] = str
		i = i + 1
	end
	
	return t
end
