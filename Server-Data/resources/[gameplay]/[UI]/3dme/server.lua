local logEnabled = false

RegisterCommand('me', function(source, args)
    local text = '* L\'Individu' -- edit here if you want to change the language : EN: the person / FR: la personne
    for i = 1,#args do
        text = text .. ' ' .. args[i]
    end
    text = text .. ' *'
	if logEnabled then
		setLog(text, source)
	end
    TriggerClientEvent('3dme:shareDisplay', -1, text, source,"me")
end)

RegisterCommand('do', function(source, args)
    local text = '* ' -- edit here if you want to change the language : EN: the person / FR: la personne
    for i = 1,#args do
        text = text .. ' ' .. args[i]
    end
    text = text .. ' *'
	if logEnabled then
		setLog(text, source)
	end
    TriggerClientEvent('3dme:shareDisplay', -1, text, source,"do")
end)

RegisterCommand('it', function(source, args)
    local text = '* ' -- edit here if you want to change the language : EN: the person / FR: la personne
    for i = 1,#args do
        text = text .. ' ' .. args[i]
    end
    text = text .. ' *'
	if logEnabled then
		setLog(text, source)
	end
    TriggerClientEvent('3dme:shareDisplay', -1, text, source,"it")
end)

RegisterCommand('roll', function(source, args)
    local text = '* L\'action est' -- edit here if you want to change the language : EN: the person / FR: la personne
    local rand = math.random(0,100)
    if rand <= 10 then 
        text = text .. ' un échec total *'
    elseif rand > 10 and rand <= 25 then 
        text = text .. ' ratée *'
    elseif rand > 25 and rand <= 50 then 
        text = text .. ' un peu ratée *'
    elseif rand > 50 and rand <= 75 then 
        text = text .. ' tout juste réussie *'
    elseif rand > 75 and rand <= 90 then 
        text = text .. ' réussie *'
    else 
        text = text .. ' une totale réussite *'
    end
	if logEnabled then
		setLog(text, source)
	end
    TriggerClientEvent('3dme:shareDisplay', -1, text, source, rand)
end)

function setLog(text, source)
	local time = os.date("%d/%m/%Y %X")
	local name = GetPlayerName(source)
	local identifier = GetPlayerIdentifiers(source)
	local data = time .. ' : ' .. name .. ' - ' .. identifier[1] .. ' : ' .. text

	local content = LoadResourceFile(GetCurrentResourceName(), "log.txt")
	local newContent = content .. '\r\n' .. data
	SaveResourceFile(GetCurrentResourceName(), "log.txt", newContent, -1)
end