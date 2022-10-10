RegisterCommand("policeS", function(source, args, raw)
    local src = source
    TriggerClientEvent("shield:TogglePoliceShield", src)
end)

RegisterCommand("sheriffS", function(source, args, raw)
    local src = source
    TriggerClientEvent("shield:ToggleSheriffShield", src)
end)

RegisterCommand("nooseS", function(source, args, raw)
    local src = source
    TriggerClientEvent("shield:ToggleNooseShield", src)
end)