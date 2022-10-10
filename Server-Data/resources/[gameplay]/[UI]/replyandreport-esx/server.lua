--[[

  Made with love by Cheleber, you can join my RP Server here: www.grandtheftlusitan.com
  Just add your admins steam id!

--]]

--- ADD STEAM ID OR LICENSE FROM YOUR ADMINS!
local admins = {
	'license:8bb0ae58c45b1d8b93acfe15eabf8665656cd424',
	'license:73a453bf747d825eccbcce668c369a013f67af13',
    'license:d5c2d7e2eec631427ab4484cd2081cbf07ff9867',
	'license:d1f5c63a301c404581700290562694d536e335c1',
	'license:ae104df9692db78276ddf1c510d3eaa595561359',
	'license:9eaad6abb6654a850edda35ac06aa5bef38fcb0e',
	'license:719455f12d132a32ad856a3e461ccc69f2f6688d',
	'license:b086d9b64fbec587a521025bae8f92fca512e879',
	'license:a65e3c1bea3e6dc5f60060c7323f8aeb094b40ea',
	'license:7caa0992b97ffa2aae24ad57941195b415a2ecab',
	'license:c2e048572f3a2bb20e0eb97fc36783bb072e233f',
	'license:f623ceef84f6bbb0ec5aaaf9b128cd99459e0476',
	'license:93f5b12c76b0bbb89c41851a50fe436dd0eaccde',
	'license:455244a7161961d5b10b6703a3a8581ebb713667',
	'license:640fa1857cda764f7b9b5267bf1243f09bf85864',
	'license:da136ee0b0543dd0c0c76bd65d49d84b0035bf88',
	'license:f5914dbae1a359f9a23d42673c62b122db4bf630'
}

function isAdmin(player)
    local allowed = false
    for i,id in ipairs(admins) do
        for x,pid in ipairs(GetPlayerIdentifiers(player)) do
            if string.lower(pid) == string.lower(id) then
                allowed = true
            end
        end
    end
    return allowed
end


AddEventHandler('chatMessage', function(source, color, msg)
	cm = stringsplit(msg, " ")
	if cm[1] == "/reply" or cm[1] == "/r" then
		CancelEvent()
		if tablelength(cm) > 1 then
			local tPID = tonumber(cm[2])
			local names2 = GetPlayerName(tPID)
			local names3 = GetPlayerName(source)
			local textmsg = ""
			for i=1, #cm do
				if i ~= 1 and i ~= 2 then
					textmsg = (textmsg .. " " .. tostring(cm[i]))
				end
			end
		    if isAdmin(source) then
			    TriggerClientEvent('textmsg', tPID, source, textmsg, names2, names3)
			    TriggerClientEvent('textsent', source, tPID, names2)
		    else
			    TriggerClientEvent('chatMessage', source, "SYSTEM", {255, 0, 0}, "Insuficient Premissions!")
			end
		end
	end	
	
	if cm[1] == "/report" then
		CancelEvent()
		if tablelength(cm) > 1 then
			local names1 = GetPlayerName(source)
			local textmsg = ""
			for i=1, #cm do
				if i ~= 1 then
					textmsg = (textmsg .. " " .. tostring(cm[i]))
				end
			end
		    TriggerClientEvent("sendReport", -1, source, names1, textmsg)
		end
	end	
	
end)

RegisterServerEvent('checkadmin')
AddEventHandler('checkadmin', function(n1, tmsg, ii)
	local id = source
	if isAdmin(id) then
		TriggerClientEvent("sendReportToAllAdmins", -1, source, n1, tostring(tmsg), ii)
	else
	end
end)


function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end



function tablelength(T)
	local count = 0
	for _ in pairs(T) do count = count + 1 end
	return count
end
