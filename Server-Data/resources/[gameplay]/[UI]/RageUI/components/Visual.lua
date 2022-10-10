---
--- @author Dylan MALANDAIN
--- @version 2.0.0
--- @since 2020
---
--- RageUI Is Advanced UI Libs in LUA for make beautiful interface like RockStar GAME.
---
---
--- Commercial Info.
--- Any use for commercial purposes is strictly prohibited and will be punished.
---
--- @see RageUI
---

---@class Visual
Visual = Visual or {};

local function AddLongString(txt)
    for i = 100, string.len(txt), 99 do
        local sub = string.sub(txt, i, i + 99)
        AddTextComponentSubstringPlayerName(sub)
    end
end

RegisterNetEvent('RageUI:Popup')
AddEventHandler('RageUI:Popup', function(text, color, sound)
    Visual.Popup(text, color, sound)
end)

function Visual.Popup(text, color, sound)
    ClearPrints()
    if (color == nil) then
        SetNotificationBackgroundColor(140)
    else
        SetNotificationBackgroundColor(color)
    end
    SetNotificationTextEntry("STRING")
    if (text == nil) then
        error("Missing arguments, message")
    else
        AddTextComponentString(tostring(text))
    end
    DrawNotification(false, true)
    if (sound ~= nil) then
        if (sound.audio_name ~= nil) then
            if (sound.audio_ref ~= nil) then
                PlaySoundFrontend(-1, sound.audio_name, sound.audio_ref, true)
            else
                error("Missing arguments, audio_ref")
            end
        else
            error("Missing arguments, audio_name")
        end
    else
        PlaySoundFrontend(-1, 'NotifiMission_Pass_Notifycation', '&g_3842', true)
    end
end

RegisterNetEvent('RageUI:Radar')
AddEventHandler('RageUI:Radar', function(sender, title, message, picture, iconTypes, colors, request_stream_texture_dics, sound)
    Visual.Radar(sender, title, message, picture, iconTypes, colors, request_stream_texture_dics, sound)
end)

function Visual.Radar(sender, title, message, picture, iconTypes, colors, request_stream_texture_dics, sound)
    if (colors == nil) then
        SetNotificationBackgroundColor(140)
    else
        SetNotificationBackgroundColor(colors)
    end
    SetNotificationTextEntry("STRING")
    if (message == nil) then
        error("Missing arguments, message")
    else
        AddTextComponentString(tostring(message))
    end
    if (request_stream_texture_dics ~= nil) then
        RequestStreamedTextureDict(request_stream_texture_dics)
    end
    if (picture ~= nil) then
        if (iconTypes == 1) or (iconTypes == 2) or (iconTypes == 3) or (iconTypes == 7) or (iconTypes == 8) or (iconTypes == 9) then
            SetNotificationMessage(tostring(picture), tostring(picture), true, iconTypes, sender, title)
        else
            SetNotificationMessage(tostring(picture), tostring(picture), true, 4, sender, title)
        end
    else
        if (iconTypes == 1) or (iconTypes == 2) or (iconTypes == 3) or (iconTypes == 7) or (iconTypes == 8) or (iconTypes == 9) then
            SetNotificationMessage('CHAR_ALL_PLAYERS_CONF', 'CHAR_ALL_PLAYERS_CONF', true, iconTypes, sender, title)
        else
            SetNotificationMessage('CHAR_ALL_PLAYERS_CONF', 'CHAR_ALL_PLAYERS_CONF', true, 4, sender, title)
        end
    end
    if (sound ~= nil) then
        if (sound.audio_name ~= nil) then
            if (sound.audio_ref ~= nil) then
                PlaySoundFrontend(-1, sound.audio_name, sound.audio_ref, true)
            else
                error("Missing arguments, audio_ref")
            end
        else
            error("Missing arguments, audio_name")
        end
    end
    DrawNotification(false, true)
end

function Visual.Subtitle(text, time)
    ClearPrints()
    BeginTextCommandPrint("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandPrint(time and math.ceil(time) or 0, true)
end

function Visual.FloatingHelpText(text, sound, loop)
    BeginTextCommandDisplayHelp("jamyfafi")
    AddTextComponentSubstringPlayerName(text)
    if string.len(text) > 99 then
        AddLongString(text)
    end
    EndTextCommandDisplayHelp(0, loop or 0, sound or true, -1)
end

function Visual.Prompt(text, spinner)
    BeginTextCommandBusyspinnerOn("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandBusyspinnerOn(spinner or 1)
end

function Visual.PromptDuration(duration, text, spinner)
    Citizen.CreateThread(function()
        Citizen.Wait(0)
        Visual.Prompt(text, spinner)
        Citizen.Wait(duration)
        if (BusyspinnerIsOn()) then
            BusyspinnerOff();
        end
    end)
end
