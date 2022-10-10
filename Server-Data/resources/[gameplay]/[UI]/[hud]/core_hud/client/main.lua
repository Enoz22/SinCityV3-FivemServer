local hunger = 10
local thirst = 10
local stress = 0
local voiceRadius = 50
local istalking = false

local voiceToggled = false
local UIHidden = false
local UIRadar = false

--Cricle Radar
Citizen.CreateThread(
    function()
        RequestStreamedTextureDict("circlemap", true)
        while not HasStreamedTextureDictLoaded("circlemap") do
            Wait(100)
        end

        AddReplaceTexture("platform:/textures/graphics", "radarmasksm", "circlemap", "radarmasksm")

        ReplaceHudColourWithRgba(142, 37, 171, 254, 1)

        SetMinimapClipType(1)
        SetMinimapComponentPosition("minimap", "L", "B", -0.010, 0.03, 0.17, Config.MapZoom)
        SetMinimapComponentPosition("minimap_mask", "L", "B", -0.135, 0.05, 0.145, 0.999)
        SetMinimapComponentPosition("minimap_blur", "L", "B", -0.020, 0.05, 0.256, 0.307)

        local minimap = RequestScaleformMovie("minimap")

        SetRadarBigmapEnabled(false, false)
        Citizen.Wait(100)
        SetRadarBigmapEnabled(false, false)
        SetBigmapActive(false, false)

        Citizen.Wait(1000)
        SetRadarBigmapEnabled(false, false)
        SetBigmapActive(false, false)

        SendNUIMessage(
            {
                type = "Init",
                healthIcon = Config.HealthIcon,
                armorIcon = Config.ArmorIcon,
                foodIcon = Config.FoodIcon,
                thirstIcon = Config.ThirstIcon,
                fourthIcon = Config.FourthIcon,
                showid = Config.DisplayId,
                showstress = Config.DisplayStress,
                showvoice = Config.DisplayVoice
            }
        )

        while true do
            Wait(0)
            BeginScaleformMovieMethod(minimap, "SETUP_HEALTH_ARMOUR")
            ScaleformMovieMethodAddParamInt(3)
            EndScaleformMovieMethod()

            if Config.DisplayVoice then
              local netTalk = NetworkIsPlayerTalking(PlayerId()) or talking
                
                if netTalk  ~= voiceToggled then
              
                SendNUIMessage(
                    {
                        type = "toggleTalking",
                        talking = netTalk
                    }
                )
                voiceToggled = netTalk
                end
            end
        end
    end
)

Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(Config.StatusUpdateInterval)

            GetStatus(
                function(result)
                    hunger = result[1]
                    thirst = result[2]
                    stress = result[3]
                end
            )
        end
    end
)

Citizen.CreateThread(
    function()
        while true do

            Citizen.Wait(Config.VitalsUpdateInterval)
            
            local ped = PlayerPedId()
            local vehicle = GetVehiclePedIsIn(ped)
            local health = GetEntityHealth(ped) - 100
            local armor = GetPedArmour(ped)
            local serverid = GetPlayerServerId(PlayerId())
            local pauseMenu = IsPauseMenuActive()

            SendNUIMessage(
                {
                    type = "changeStatus",
                    health = health,
                    armor = armor,
                    food = hunger,
                    thirst = thirst,
                    id = serverid,
                    stress = stress,
                    voice = voiceRadius
                }
            )

           if pauseMenu and not UIHidden then
                 SendNUIMessage(
                        {
                            type = "hideUI"
                        }
                    )
                 UIHidden = true
            elseif UIHidden and not pauseMenu then
                 SendNUIMessage(
                        {
                            type = "showUI"
                        }
                    )
                UIHidden = false
            end

            if not Config.AlwaysDisplayRadar then
                if vehicle ~= 0 and UIRadar then
                    SendNUIMessage(
                        {
                            type = "openMapUI"
                        }
                    )
                    DisplayRadar(true)
                    SetVehicleEngineOn(vehicle, true)
                    UIRadar = false
                elseif not UIRadar and vehicle == 0 then
                    SendNUIMessage(
                        {
                            type = "closeMapUI"
                        }
                    )
                    UIRadar = true
                    DisplayRadar(false)
                    SetVehicleEngineOn(vehicle, false)

                end
            else
                DisplayRadar(true)
            end

            
        end
    end
)

--EXPORTS

exports(
    "setTalking",
    function(talking)
        istalking = talking
    end
)

exports(
    "setVoiceRange",
    function(percent)
        voiceRadius = percent
    end
)
