

-- Afk kick Hawmie
local reason = 'Vous avez été déconnecté | Raison: AFK'
RegisterNetEvent('afk:kick')
AddEventHandler('afk:kick', function()
    local name = GetPlayerName(source)
    DropPlayer(source, reason)
    RconPrint("Joueur déconnecté: Raison: " ..reason)
end)