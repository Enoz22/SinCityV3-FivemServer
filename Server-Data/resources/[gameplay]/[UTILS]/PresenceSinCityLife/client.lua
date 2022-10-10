Citizen.CreateThread(function()
	while true do
		
        SetDiscordAppId(805477856603144212)

		SetDiscordRichPresenceAsset('logo_name')
        
        SetDiscordRichPresenceAssetText('Rejoignez nous !')
       
        SetDiscordRichPresenceAssetSmall('logo_small')

        SetDiscordRichPresenceAssetSmallText('Discord : https://discord.gg/qPnvDAe')

        SetDiscordRichPresenceAction(0, "Se connecter", "fivem://connect/51.210.223.224")
        
        SetDiscordRichPresenceAction(1, "Discord", "https://discord.gg/qPnvDAe")

  player = {}
  
  for i = 0, 255 do
      if NetworkIsPlayerActive( i ) then
          table.insert( players, i )
      end
  end

  for _, player in ipairs(GetActivePlayers()) do
    local ped = GetPlayerPed(player)

  end
  SetRichPresence(GetPlayerName(PlayerId()) .. " - ".. #player .. "/350")
  

		Citizen.Wait(60000)
	end
end)