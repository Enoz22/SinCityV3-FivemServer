ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("niso-bank:doQuickDeposit")
AddEventHandler("niso-bank:doQuickDeposit", function(amount)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local curBank = xPlayer.getAccount("bank").money
    while xPlayer == nil do Wait(0) end
    if tonumber(amount) <= curBank then
        xPlayer.addAccountMoney('bank', tonumber(amount))
        xPlayer.removeMoney(tonumber(amount))
        TriggerClientEvent("niso-bank:refreshBank", src)
        --TriggerClientEvent('mythic_notify:client:SendAlert', src, { type = 'inform', length = 5000, text = "You made a cash deposit of $ " .. amount .. " successfully." })
        --TriggerClientEvent("notification", src, "You made a cash deposit of $ " .. amount .. " successfully.", 1)
        TriggerClientEvent('esx:showAdvancedNotification', _source, 'Avertisement', '' , '~b~Vous avez deposée $ " .. amount .. "', 'CHAR_BANK_MAZE', 0)
    else
        --TriggerClientEvent('mythic_notify:client:SendAlert',src, { type = 'error', length = 5000, text = "You don't have that amount on your cash wallet." })
        --TriggerClientEvent("notification", src, "You don't have that amount on your cash wallet.", 2)
        TriggerClientEvent('esx:showAdvancedNotification', _source, 'Avertisement', '' , '~b~Pas assez d\'argent dans vos poches', 'CHAR_BANK_MAZE', 0)
    end
end)

RegisterServerEvent("niso-bank:doQuickWithdraw")
AddEventHandler("niso-bank:doQuickWithdraw", function(amount)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local curBank = xPlayer.getAccount("bank").money
    while xPlayer == nil do Wait(0) end
    if tonumber(amount) <= curBank then
        xPlayer.removeAccountMoney('bank', tonumber(amount))
        xPlayer.addMoney(tonumber(amount))
        TriggerClientEvent("niso-bank:refreshBank", src)
        --TriggerClientEvent('mythic_notify:client:SendAlert',src, { type = 'inform', length = 5000, text = "You made a cash withdrawl of $ " .. amount .. " successfully." })
        --TriggerClientEvent("notification", src, "You made a cash withdrawl of $ " .. amount .. " successfully.", 1)
        TriggerClientEvent('esx:showAdvancedNotification', _source, 'Avertisement', '' , '~b~Vous avez retirée $ " .. amount .. "', 'CHAR_BANK_MAZE', 0)
    else
        --TriggerClientEvent('mythic_notify:client:SendAlert',src, { type = 'error', length = 5000, text = "You don't have that amount on your bank wallet." })
        --TriggerClientEvent("notification", src, "You don't have that amount on your bank wallet.", 2)
        TriggerClientEvent('esx:showAdvancedNotification', _source, 'Avertisement', '' , '~b~Pas assez d\'argent dans vos poches', 'CHAR_BANK_MAZE', 0)
    end
end)

RegisterServerEvent("niso-bank:doQuickWithdrawATM")
AddEventHandler("niso-bank:doQuickWithdrawATM", function(amount)
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local curBank = xPlayer.getAccount("bank").money
    while xPlayer == nil do Wait(0) end
    if tonumber(amount) <= curBank then
        xPlayer.removeAccountMoney('bank', tonumber(amount))
        xPlayer.addMoney( tonumber(amount))
        TriggerClientEvent("niso-bank:refreshAtm", src)
        --TriggerClientEvent('mythic_notify:client:SendAlert',src, { type = 'inform', length = 5000, text = "You made a cash withdrawl of $ " .. amount .. " successfully." })
        --TriggerClientEvent("notification", src, "You made a cash withdrawl of $ " .. amount .. " successfully.", 1)
    else
        --TriggerClientEvent('mythic_notify:client:SendAlert',src, { type = 'error', length = 5000, text = "You don't have that amount on your bank wallet." })
        --TriggerClientEvent("notification", src, "You don't have that amount on your bank wallet.", 2)
        TriggerClientEvent('esx:showAdvancedNotification', _source, 'Avertisement', '' , '~b~Pas assez d\'argent dans vos poches', 'CHAR_BANK_MAZE', 0)
    end
end)

RegisterServerEvent("niso-bank:checkWallet")
AddEventHandler("niso-bank:checkWallet", function()
    local src = source
    local xPlayer = ESX.GetPlayerFromId(src)
    local bank = xPlayer.getAccount("bank").money
    local cash = xPlayer.getMoney()
    TriggerClientEvent("checkWallet", src, bank, cash)
end)