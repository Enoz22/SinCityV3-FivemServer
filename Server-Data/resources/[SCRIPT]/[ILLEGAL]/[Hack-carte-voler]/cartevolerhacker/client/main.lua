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

local LastZone                = nil
local CurrentAction           = nil
local CurrentActionMsg        = ''
local CurrentActionData       = {}
local cameraMode              = false
local curMissionPos           = nil
local blipMission             = nil
local lastPos                 = nil
local missionPosition         = Config.MissionData
ESX                           = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end

    if Config.Blips.show == true then
        blips(Config.Blips.Blip, _U('map_blip'))
    end
end)

AddEventHandler('esx_anonymous:hasExitedMarker', function(zone)
    CurrentAction = nil
    ESX.UI.Menu.CloseAll()
end)

AddEventHandler('esx_anonymous:hasEnteredMarker', function(zone)
    if zone == 'GetCard' then
      CurrentAction     = 'get_card'
      CurrentActionMsg  = _U('open_get_card')
      CurrentActionData = {}
    end

    if zone == 'GetMoney' then
      CurrentAction     = 'get_money'
      CurrentActionMsg  = _U('open_get_money')
      CurrentActionData = {}
    end

    if zone == 'hack_zone' then
      CurrentAction     = 'hack_zone'
      CurrentActionMsg  = _U('hack_zone')
      CurrentActionData = {}
    end

    if zone == 'Film' then
      CurrentAction     = 'film'
      CurrentActionData = {}
      if cameraMode == true then
        CurrentActionMsg  = _U('close_film')
      else
        CurrentActionMsg  = _U('open_film')
      end
    end
end)

function blips(blipMarker, label)
		local blip = AddBlipForCoord(blipMarker.Pos.x, blipMarker.Pos.y, blipMarker.Pos.z)

		SetBlipSprite (blip, blipMarker.Sprite)
		SetBlipColour (blip, blipMarker.Colour)

		BeginTextCommandSetBlipName('STRING')
		AddTextComponentString(label)
		EndTextCommandSetBlipName(blip)

    return blip
end

-- Display markers
Citizen.CreateThread(function()
    while true do

      Wait(0)
      if cameraMode == true then
        SendNUIMessage({openCamera = true})
        ESX.UI.HUD.SetDisplay(0.0)
        TriggerEvent('esx_status:setDisplay', 0.0)
        DisplayRadar(false)
        SetTimecycleModifier("scanline_cam_cheap")
        SetTimecycleModifierStrength(2.0)
      else
        SendNUIMessage({openCamera = false})
        ESX.UI.HUD.SetDisplay(1.0)
        TriggerEvent('esx_status:setDisplay', 1.0)
        DisplayRadar(true)
        ClearTimecycleModifier("scanline_cam_cheap")
      end

      local coords = GetEntityCoords(GetPlayerPed(-1))

      for k,v in pairs(Config.Zones) do
        if(v.Type ~= -1 and GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < Config.DrawDistance) then
          DrawMarker(v.Type, v.Pos.x, v.Pos.y, v.Pos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, v.Size.x, v.Size.y, v.Size.z, v.Color.r, v.Color.g, v.Color.b, 100, false, false, 2, false, false, false, false)
        end
      end

      if curMissionPos ~= nil and GetDistanceBetweenCoords(coords, curMissionPos.x, curMissionPos.y, curMissionPos.z, true) < Config.DrawDistance then
          DrawMarker(1, curMissionPos.x, curMissionPos.y, curMissionPos.z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.0, 1.0, 0.2, 0, 255, 0, 100, false, false, 2, false, false, false, false)
      end
    end
end)

-- Enter / Exit marker events
Citizen.CreateThread(function()
    while true do

        Wait(0)

        local coords      = GetEntityCoords(GetPlayerPed(-1))
        local isInMarker  = false
        local currentZone = nil

        for k,v in pairs(Config.Zones) do
            if(GetDistanceBetweenCoords(coords, v.Pos.x, v.Pos.y, v.Pos.z, true) < v.Size.x + 0.5) then
                isInMarker  = true
                currentZone = k
            end
        end

        if curMissionPos ~= nil and GetDistanceBetweenCoords(coords, curMissionPos.x, curMissionPos.y, curMissionPos.z, true) < 1.5 then
          isInMarker  = true
          currentZone = "hack_zone"
        end

        if (isInMarker and not HasAlreadyEnteredMarker) or (isInMarker and LastZone ~= currentZone) then
            HasAlreadyEnteredMarker = true
            LastZone                = currentZone
            TriggerEvent('esx_anonymous:hasEnteredMarker', currentZone)
        end

        if not isInMarker and HasAlreadyEnteredMarker then
            HasAlreadyEnteredMarker = false
            TriggerEvent('esx_anonymous:hasExitedMarker', LastZone)
        end

    end
end)

AddEventHandler('esx_anonymous:hasExitedMarker', function(zone)
  ESX.UI.Menu.CloseAll()
  CurrentAction = nil
end)

-- Key Controls
Citizen.CreateThread(function()
  while true do

    Citizen.Wait(0)

    if CurrentAction ~= nil then

      SetTextComponentFormat('STRING')
      AddTextComponentString('~INPUT_CONTEXT~ ' .. CurrentActionMsg)
      DisplayHelpTextFromStringLabel(0, 0, 1, -1)

      if IsControlJustReleased(0,  Keys['E']) then
        if CurrentAction == 'film' then
          cameraMode = not cameraMode
          if cameraMode == true then
              while (not HasAnimDictLoaded("anim@heists@ornate_bank@hack")) do
                  RequestAnimDict("anim@heists@ornate_bank@hack")
                  Citizen.Wait(5)
              end
              TaskPlayAnim(GetPlayerPed(-1), "anim@heists@ornate_bank@hack", "hack_loop", 8.0, 1.0, -1, 18, 0, 0, 0, 0)
              SetEntityHeading(GetPlayerPed(-1), 99.75)
  
              Citizen.Wait(900)
  
              ClearPedTasksImmediately(GetPlayerPed(-1))
              CurrentActionMsg  = _U('close_film')
          else
            CurrentActionMsg  = _U('open_film')
          end
        else
          if CurrentAction == 'get_card' then
            while (not HasAnimDictLoaded("anim@heists@ornate_bank@hack")) do
                RequestAnimDict("anim@heists@ornate_bank@hack")
                Citizen.Wait(5)
            end
            TaskPlayAnim(GetPlayerPed(-1), "anim@heists@ornate_bank@hack", "hack_loop", 8.0, 1.0, -1, 18, 0, 0, 0, 0)
            SetEntityHeading(GetPlayerPed(-1), 269.09)

            Citizen.Wait(10000)

            ClearPedTasksImmediately(GetPlayerPed(-1))
            TriggerServerEvent('esx_anonymous:start_mission')
          end
          if CurrentAction == 'get_money' then
            while (not HasAnimDictLoaded("anim@heists@ornate_bank@hack")) do
                RequestAnimDict("anim@heists@ornate_bank@hack")
                Citizen.Wait(5)
            end
            TaskPlayAnim(GetPlayerPed(-1), "anim@heists@ornate_bank@hack", "hack_loop", 8.0, 1.0, -1, 18, 0, 0, 0, 0)
            SetEntityHeading(GetPlayerPed(-1), 14.85)

            Citizen.Wait(10000)

            ClearPedTasksImmediately(GetPlayerPed(-1))
            TriggerServerEvent('esx_anonymous:end_mission')
          end
          if CurrentAction == 'hack_zone' then
            while (not HasAnimDictLoaded("anim@heists@ornate_bank@hack")) do
                RequestAnimDict("anim@heists@ornate_bank@hack")
                Citizen.Wait(5)
            end
            TaskPlayAnim(GetPlayerPed(-1), "anim@heists@ornate_bank@hack", "hack_loop", 8.0, 1.0, -1, 18, 0, 0, 0, 0)

            Citizen.Wait(10000)

            ClearPedTasksImmediately(GetPlayerPed(-1))
            TriggerServerEvent('esx_anonymous:do_mission')
          end
          CurrentAction = nil
        end
      end
    end
  end
end)



RegisterNetEvent('esx_anonymous:start_mission')
AddEventHandler('esx_anonymous:start_mission', function()
  curMissionPos = missionPosition[math.random(1, #missionPosition)]
  local blipData = {}
  blipData.Pos   = {}
  blipData.Pos.x = curMissionPos.x
  blipData.Pos.y = curMissionPos.y
  blipData.Pos.z = curMissionPos.z
  blipData.Sprite = 362
  blipData.Colour = 52
  blipMission = AddBlipForCoord(blipData.Pos.x, blipData.Pos.y, blipData.Pos.z)
  SetBlipSprite(blipMission, blipData.Sprite)
  SetBlipColour(blipMission, blipData.Colour)
  N_0x80ead8e2e1d5d52e(blipMission)
  SetBlipRoute(blipMission, 1)
end)

RegisterNetEvent('esx_anonymous:do_mission')
AddEventHandler('esx_anonymous:do_mission', function()
  lastPos = curMissionPos
  curMissionPos = nil
  if blipMission ~= nil and DoesBlipExist(blipMission) then
    RemoveBlip(blipMission)
  end
      blipMission = nil
end)