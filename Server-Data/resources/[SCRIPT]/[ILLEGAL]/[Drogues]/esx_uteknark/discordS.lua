-- Define default colors
if string.find(Discord.joinColor,"#") then
	local joinColor = tonumber(Discord.joinColor:gsub("#",""),16)
else
	local joinColor = Discord.joinColor
end

if string.find(Discord.leaveColor,"#") then
	local leaveColor = tonumber(Discord.leaveColor:gsub("#",""),16)
else
	local leaveColor = Discord.leaveColor
end

if string.find(Discord.chatColor,"#") then
	local chatColor = tonumber(Discord.chatColor:gsub("#",""),16)
else
	local chatColor = Discord.chatColor
end

if string.find(Discord.shootingColor,"#") then
	local shootingColor = tonumber(Discord.shootingColor:gsub("#",""),16)
else
	local shootingColor = Discord.shootingColor
end

if string.find(Discord.deathColor,"#") then
	local deathColor = tonumber(Discord.deathColor:gsub("#",""),16)
else
	local deathColor = Discord.deathColor
end

if string.find(Discord.resourceColor,"#") then
	local resourceColor = tonumber(Discord.resourceColor:gsub("#",""),16)
else
	local resourceColor = Discord.resourceColor
end

RegisterNetEvent("discordLogs")
AddEventHandler("discordLogs", function(message)
    discordLog(message)
end)



    function discordLog(message)
        if string.find(color,"#") then
            _color = tonumber(color:gsub("#",""),16)
        else
            _color = color
        end

        if Discord.AllLogs then
          PerformHttpRequest(Discord.webhooks["script"], function(err, text, headers) end, 'POST', json.encode({username = Discord.username, embeds = {{["color"] = _color, ["author"] = {["name"] = Discord.communtiyName,["icon_url"] = Discord.communtiyLogo}, ["description"] = "".. message .."",["footer"] = {["text"] = "© JackOneillMyTv - "..os.date("%x %X %p"),["icon_url"] = "https://static-cdn.jtvnw.net/jtv_user_pictures/1b24b2ff-ec74-4624-a855-1387230520e5-profile_image-300x300.png",},}}, avatar_url = Discord.avatar}), { ['Content-Type'] = 'application/json' })
        end
          PerformHttpRequest(Discord.webhooks["script"], function(err, text, headers) end, 'POST', json.encode({username = Discord.username, embeds = {{["color"] = _color, ["author"] = {["name"] = Discord.communtiyName,["icon_url"] = Discord.communtiyLogo}, ["description"] = "".. message .."",["footer"] = {["text"] = "© JackOneillMyTv - "..os.date("%x %X %p"),["icon_url"] = "https://static-cdn.jtvnw.net/jtv_user_pictures/1b24b2ff-ec74-4624-a855-1387230520e5-profile_image-300x300.png",},}}, avatar_url = Discord.avatar}), { ['Content-Type'] = 'application/json' })
      end