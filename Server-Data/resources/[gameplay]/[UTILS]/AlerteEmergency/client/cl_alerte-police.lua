---------------------------------------------------------------------------------------------------------------------------------------------------------------


local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}


---------------------------------------------------------------------------------------------------------------------------------------------------------------


local PlayerData = {}
local blips = {}
ESX = nil


---------------------------------------------------------------------------------------------------------------------------------------------------------------

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end
    PlayerData = ESX.GetPlayerData()
end)


---------------------------------------------------------------------------------------------------------------------------------------------------------------


RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)


---------------------------------------------------------------------------------------------------------------------------------------------------------------


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)


---------------------------------------------------------------------------------------------------------------------------------------------------------------


local coordsX = {}
local coordsY = {}
local coordsZ = {}
local alerteEnCours = {}
local AlertePrise = false


---------------------------------------------------------------------------------------------------------------------------------------------------------------


Citizen.CreateThread( function()
    DelayAnnounce()
    while true do
        Citizen.Wait(0)
        if IsPedJacking(GetPlayerPed(-1)) then
            if alerteEnCours.Jacking == false then
                alerteEnCours.Jacking = true
                local plyPos = GetEntityCoords(GetPlayerPed(-1), true)
                TriggerServerEvent('Sincity_Police:VolEntenduServeur', plyPos.x, plyPos.y, plyPos.z)
                DelayAnnounce()
            end
        end

        if IsPedInParachuteFreeFall(GetPlayerPed(-1)) then
            if alerteEnCours.Parachute == false then
                alerteEnCours.Parachute = true
                local plyPos = GetEntityCoords(GetPlayerPed(-1), true)
                print("Aviation Civil , une homme viens de passer devant nous en parachute !!!")
                DelayAnnounce()
            end
        end

        if IsPedInFlyingVehicle(GetPlayerPed(-1)) and (PlayerData.job ~= "fly" or PlayerData.job ~= "police" or PlayerData.job ~= "sheriff" or PlayerData.job ~= "ambulance") then
            if alerteEnCours.Fly == false then
                alerteEnCours.Fly = true
                local plyPos = GetEntityCoords(GetPlayerPed(-1), true)
                    print("Aéroport de Los Santos , un engin viens de décoller sans autorisation !!! ")
                DelayAnnounce()
            end
        end

        if IsPedBeingStunned(GetPlayerPed(-1)) then
            if alerteEnCours.Stunned == false then
                alerteEnCours.Stunned = true
                local plyPos = GetEntityCoords(GetPlayerPed(-1), true)
                local rand  = math.random(1,100)
                    if rand >= 90 then
                        print("Un citoyen nous signale une rixe en cours ")
                    end
                DelayAnnounce()
            end
        end
    end
end)


---------------------------------------------------------------------------------------------------------------------------------------------------------------




AddEventHandler('esx:playerLoaded', function(PlayerData)
    TriggerServerEvent('Sincity_Police:playerConnecting')
end)


---------------------------------------------------------------------------------------------------------------------------------------------------------------


-- RegisterNetEvent('Sincity_Police:BagarreEntendu')
-- AddEventHandler('Sincity_Police:BagarreEntendu', function(gx, gy, gz)
--     if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
--         ESX.ShowAdvancedNotification(
--         	'LSPD INFORMATION', 
--             'CENTRAL LSPD', 
--             'Appel d\'un citoyen concernant des bagarres\n~g~Y~s~ Pour prendre l\'appel\n~r~W~s~ Pour Refuser.', 'CHAR_CHAT_CALL', 8)
--         coordsX = gx
--         coordsY = gy
--         coordsZ = gz
--         Citizen.Wait(1000)
--         alerteEnCours = true
-- 	end
-- end)


---------------------------------------------------------------------------------------------------------------------------------------------------------------


-- RegisterNetEvent('Sincity_Police:TireEntendu')
-- AddEventHandler('Sincity_Police:TireEntendu', function(gx, gy, gz)
--     if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
--         Citizen.Wait(15000)
--         ESX.ShowAdvancedNotification(
--             'LSPD INFORMATION', 
--             'CENTRAL LSPD', 
--             'Appel d\'un citoyen concernant des coups de feu\n~g~Y~s~ Pour prendre l\'appel\n~r~W~s~ Pour Refuser.', 'CHAR_CHAT_CALL', 8)
--         coordsX = gx
--         coordsY = gy
--         coordsZ = gz
--         Citizen.Wait(1000)
--         alerteEnCours = true
--     end
-- end)

function DelayAnnounce()
Wait(10000)
alerteEnCours.Stunned = false
alerteEnCours.Fly = false
alerteEnCours.Parachute = false
alerteEnCours.Jacking = false
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------


RegisterNetEvent('Sincity_Police:VolEntendu')
AddEventHandler('Sincity_Police:VolEntendu', function(gx, gy, gz)
    if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
        text = 'Appel d\'un citoyen concernant un vol de véhicule'
        coord = vector3(gx,gy,gz)
        exports["core_dispach"]:addCall2(text,coord,"police",nil,nil,nil,nil)        
    end
end)

RegisterNetEvent('Sincity_Police:DrugVu')
AddEventHandler('Sincity_Police:DrugVu', function(gx, gy, gz)
    if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
        text = 'Un citoyen a remarqué un individu suspect avec des sachets'
        coord = vector3(gx,gy,gz)
        exports["core_dispach"]:addCall2(text,coord,"police",nil,nil,nil,nil)
    end
end)

RegisterNetEvent('Sincity_Police:VolVu')
AddEventHandler('Sincity_Police:DrugVu', function(gx, gy, gz)
    if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
        text = 'Un citoyen a remarqué un individu suspect avec des sachets'
        coord = vector3(gx,gy,gz)
        exports["core_dispach"]:addCall2(text,coord,"police",nil,nil,nil,nil)
    end
end)


-- RegisterNetEvent('Sincity_Police:FlyVu')
-- AddEventHandler('Sincity_Police:FlyVu', function(gx, gy, gz)
--     if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
--         text = 'Aéroport de Los Santos , un abruti avec un avion ou hélicoptére viens de razer ma maison, trop con lui !!!!'
--         coord = vector3(gx,gy,gz)
--         exports["core_dispach"]:addCall2(text,coord,"police",nil,nil,nil,nil)
--     end
-- end)


---------------------------------------------------------------------------------------------------------------------------------------------------------------


RegisterNetEvent('Sincity_Police:BagarreEntenduBlips')
AddEventHandler('Sincity_Police:BagarreEntenduBlips', function(gx, gy, gz)
    if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
        if AlertePrise then
            blipId = AddBlipForCoord(gx, gy, gz)
            SetBlipSprite(blipId, 4)
            SetBlipScale(blipId, 0.4)
            SetBlipColour(blipId, 1)
            SetBlipRoute(blipId,  true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString('Alerte LSPD')
            EndTextCommandSetBlipName(blipId)
            SetBlipAsShortRange(blipId, true)
            table.insert(blips, blipId)
            Citizen.Wait(120000)
            AlertePrise = false
            for i, blipId in pairs(blips) do 
                RemoveBlip(blipId)
            end
        end
    end
end)


---------------------------------------------------------------------------------------------------------------------------------------------------------------


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if AlertePrise then
            for k,v in pairs(blips) do
                local dist = Vdist2(GetBlipCoords(v),GetEntityCoords(GetPlayerPed(-1)))
                if dist < 100.0 then
                    AlertePrise = false
                    RemoveBlip(v)
                    table.remove( blips, k )
                end
            end
        end
    end
end)


