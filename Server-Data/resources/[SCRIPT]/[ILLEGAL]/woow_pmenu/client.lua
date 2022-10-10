
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
legalmenuOpen = false
illegalmenuOpen = false
local hasCinematic = false


function alert(msg)
    SetTextComponentFormat("STRING")
    AddTextComponentString(msg)
    DisplayHelpTextFromStringLabel(0,0,1,-1)
end

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(10)
    end
end)


Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if IsPauseMenuActive() then
			ESX.UI.HUD.SetDisplay(0.0)
		elseif hasCinematic == true then
			ESX.UI.HUD.SetDisplay(0.0)
		end
	end
end)




-- Ca fait spawn le ped, vous pouvez changer le model du ped si vous le souhaitez.
--[[Citizen.CreateThread(function()
    for k,v in pairs(Config.Zones) do
        -- Un ped pour chaque shop légal
        for i = 1, #v.LegalPos, 1 do

            local hash = GetHashKey("mp_m_shopkeep_01")
            while not HasModelLoaded(hash) do
                RequestModel(hash)
                Wait(60)
            end

            ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_shopkeep_01", v.LegalPos[i].x, v.LegalPos[i].y, v.LegalPos[i].z, v.LegalPos[i].angle, false, true)
            SetBlockingOfNonTemporaryEvents(ped, true)
            SetEntityInvincible(ped, true)
            FreezeEntityPosition(ped, true)
        end

        for i = 1, #v.IllegalMedic, 1 do

            local hash = GetHashKey("s_m_m_paramedic_01")
            while not HasModelLoaded(hash) do
                RequestModel(hash)
                Wait(60)
            end

            ped = CreatePed("PED_TYPE_CIVMALE", "s_m_m_paramedic_01", v.IllegalMedic[i].x, v.IllegalMedic[i].y, v.IllegalMedic[i].z, v.IllegalMedic[i].angle, false, true)
            SetBlockingOfNonTemporaryEvents(ped, true)
            SetEntityInvincible(ped, true)
            FreezeEntityPosition(ped, true)
        end

        for i = 1, #v.BlackMarket, 1 do

            local hash = GetHashKey("mp_m_securoguard_01")
            while not HasModelLoaded(hash) do
                RequestModel(hash)
                Wait(60)
            end

            ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_securoguard_01", v.BlackMarket[i].x, v.BlackMarket[i].y, v.BlackMarket[i].z, v.BlackMarket[i].angle, false, true)
            SetBlockingOfNonTemporaryEvents(ped, true)
            SetEntityInvincible(ped, true)
            FreezeEntityPosition(ped, true)
        end        

        -- un ped pour chaque shop illégal
        for i = 1, #v.IllegalPos, 1 do

            local hash = GetHashKey("a_m_m_og_boss_01")
            while not HasModelLoaded(hash) do
                RequestModel(hash)
                Wait(60)
            end

            ped = CreatePed("PED_TYPE_CIVMALE", "a_m_m_og_boss_01", v.IllegalPos[i].x, v.IllegalPos[i].y, v.IllegalPos[i].z, v.IllegalPos[i].angle, false, true)
            SetBlockingOfNonTemporaryEvents(ped, true)
            SetEntityInvincible(ped, true)
            FreezeEntityPosition(ped, true)
            GiveWeaponToPed(ped, GetHashKey("WEAPON_ADVANCEDRIFLE"), 2800, true, true)
        end

        for i = 1, #v.Pacific, 1 do

            local hash = GetHashKey("g_m_y_mexgoon_01")
            while not HasModelLoaded(hash) do
                RequestModel(hash)
                Wait(60)
            end

            ped = CreatePed("PED_TYPE_CIVMALE", "g_m_y_mexgoon_01", v.Pacific[i].x, v.Pacific[i].y, v.Pacific[i].z, v.Pacific[i].angle, false, true)
            SetBlockingOfNonTemporaryEvents(ped, true)
            SetEntityInvincible(ped, true)
            FreezeEntityPosition(ped, true)
        end

        for i = 1, #v.Armurerie, 1 do

            local hash = GetHashKey("cs_terry")
            while not HasModelLoaded(hash) do
                RequestModel(hash)
                Wait(60)
            end

            ped = CreatePed("PED_TYPE_CIVMALE", "cs_terry", v.Armurerie[i].x, v.Armurerie[i].y, v.Armurerie[i].z, v.Armurerie[i].angle, false, true)
            SetBlockingOfNonTemporaryEvents(ped, true)
            SetEntityInvincible(ped, true)
            FreezeEntityPosition(ped, true)
        end 

    end
end)

-- on crée le blips pour chaque shop légaux
Citizen.CreateThread(function()
    for k,v in pairs(Config.Zones) do
        for i = 1, #v.LegalPos, 1 do
            local blip = AddBlipForCoord(v.LegalPos[i].x, v.LegalPos[i].y, v.LegalPos[i].z)

            SetBlipSprite (blip, 52)
            SetBlipScale  (blip, 0.3)
            SetBlipColour (blip, 2)
            SetBlipAsShortRange(blip, true)

            BeginTextCommandSetBlipName('STRING')
            AddTextComponentSubstringPlayerName('Jardinier')
            EndTextCommandSetBlipName(blip)
         end
     end
end)
]]

local superet = {
    Base = { Header = {"shopui_title_conveniencestore", "shopui_title_conveniencestore"}, Color = {color_black}, HeaderColor = {255, 255, 255}, Title = "Superette", Blocked = false },
	Data = { currentMenu = "~b~Acheter un produit chez Apou", "Superette" },
    Events = {

        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)
        -- si vous voulez rajouter un boutton pour close le menu:    self:CloseMenu(true)
              if btn.name == "Passoire a lait" then
                    TriggerServerEvent('astral_menu:buy', 75, "milk_engine", "Passoire a lait")                
              elseif btn.name == "Bouteille d'Eau" then
                    TriggerServerEvent('astral_menu:buy', 10, "water", "Eau")                                                       
              end
        end,
    },

    Menu = {
        ["~b~Acheter un produit chez Apou"] = {
            b = {
                {name = "Passoire a lait", ask = "~g~75$", askX = true},
                {name = "Bouteille d'Eau", ask = "~g~7$", askX = true},
            }
        },

    }
}






Citizen.CreateThread(function()
    for k,v in pairs(Config.Zones) do
        for i = 1, #v.Barber, 1 do
            local blip = AddBlipForCoord(v.Barber[i].x, v.Barber[i].y, v.Barber[i].z)

            SetBlipSprite (blip, 71)
            SetBlipScale  (blip, 0.3)
            SetBlipColour (blip, 9)
            SetBlipAsShortRange(blip, true)

            BeginTextCommandSetBlipName('STRING')
            AddTextComponentSubstringPlayerName('BarberShop')
            EndTextCommandSetBlipName(blip)
         end
     end
end)



local armurerie = {
    Base = { Header = {"shopui_title_gr_gunmod", "shopui_title_gr_gunmod"}, Color = {color_black}, HeaderColor = {255, 255, 255}, Title = "Armurerie", Blocked = false },
	Data = { currentMenu = "~b~Acheter une arme.", "Armurerie" },
    Events = {

        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)
        -- si vous voulez rajouter un boutton pour close le menu:    self:CloseMenu(true)
              if btn.name == "Drone LSPD" then
                TriggerServerEvent('astral_menu:buy', 15000, "drone_flyer_7", "Police Drone") 
              end
        end,
    },

    Menu = {
        ["~b~Acheter une arme."] = {
            b = {
                {name = "Drone LSPD", ask = "15 000$", askX = true},
            }
        }

    }
}






local illegal = {
    Base = { Title = "Marchand d\'arme illégal" },
    Data = { currentMenu = "~b~Faites attention, vous etes dans l'illégalité !" },
    Events = {

        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)
        -- si vous voulez rajouter un boutton pour close le menu:    self:CloseMenu(true)
            if btn.name == "Dague" then
                TriggerServerEvent('astral_menu:buyweapon', 20000, "WEAPON_DAGGER", "Dague")
            elseif btn.name == "Couteaux Papillons" then
                TriggerServerEvent('astral_menu:buyweapon', 5000, "WEAPON_SWITCHBLADE", "Couteaux Papillons")
            --elseif btn.name == "Couteaux" then
            --    TriggerServerEvent('astral_menu:buyweapon', 10000, "WEAPON_KNIFE", "Couteau")
            elseif btn.name == "Batte" then
                TriggerServerEvent('astral_menu:buyweapon', 5000, "WEAPON_BAT", "Batte")
            --elseif btn.name == "Poing Americain" then 
               -- TriggerServerEvent('astral_menu:buyweapon', 20000, "WEAPON_KNUCKLE", "Poing Americain")
            elseif btn.name == "Machette" then
                TriggerServerEvent('astral_menu:buyweapon', 10000, "WEAPON_MACHETE", "Machette")
            elseif btn.name == "Hache" then
                TriggerServerEvent('astral_menu:buyweapon', 10000, "WEAPON_HATCHET", "Hache")
            elseif btn.name == "Queue de Billard" then
                TriggerServerEvent('astral_menu:buyweapon', 10000, "WEAPON_POOLCUE", "Queue de Billard")
            elseif btn.name == "Pied de Biche" then
                TriggerServerEvent('astral_menu:buyweapon', 10000, "WEAPON_CROWBAR", "Pied de Biche")
            elseif btn.name == "Clé a molette" then
                TriggerServerEvent('astral_menu:buyweapon', 10000, "WEAPON_WRENCH", "Clé a molette")
            elseif btn.name == "Club de Golfe" then
                TriggerServerEvent('astral_menu:buyweapon', 10000, "WEAPON_GOLFCLUB", "Club de Golfe")
            end 

        end,
    },

    Menu = {
        ["~b~Faites attention, vous etes dans l'illégalité !"] = {
            b = {
                {name = "Dague", ask = "~g~20000$", askX = true},
              --  {name = "Couteaux", ask = "~g~10000$", askX = true},
                {name = "Couteaux Papillons", ask = "~g~5000$", askX = true},
                {name = "Batte", ask = "~g~5000$", askX = true},
                --{name = "Poing Americain", ask = "~g~20000$", askX = true},
                {name = "Machette", ask = "~g~10000$", askX = true},
                {name = "Hache", ask = "~g~10000$", askX = true},
                {name = "Club de Golfe", ask = "~g~10000$", askX = true},
                {name = "Queue de Billard", ask = "~g~10000$", askX = true},
                {name = "Pied de Biche", ask = "~g~10000$", askX = true},
                {name = "Clé a molette", ask = "~g~10000$", askX = true},
            }
        },

    }
}

local Pacific = {
    Base = { Title = "Marchand illégal" },
    Data = { currentMenu = "~b~Holà putos, voici ce que j\'ai à vous proposer" },
    Events = {

        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)
        -- si vous voulez rajouter un boutton pour close le menu:    self:CloseMenu(true)
            if btn.name == "Bombe thermique" then
                TriggerServerEvent('astral_menu:buy', 10000, "thermite", "Bombe thermique")
            elseif btn.name == "Ordinateur de Lester" then
                TriggerServerEvent('astral_menu:buy', 10000, "hackerDevice", "Ordinateur de Lester")
            elseif btn.name == "Gilet renforcée" then
                TriggerServerEvent('astral_menu:buy', 10000, "armor", "Gilet renforcée")
            elseif btn.name == "Lockpick" then
                TriggerServerEvent('astral_menu:buy', 500, "lockpick", "Lockpick")
            elseif btn.name == "coupe fil" then
                TriggerServerEvent('astral_menu:buy', 10000, "hammerwirecutter", "coupe fil")
            elseif btn.name == "menotte" then
                TriggerServerEvent('astral_menu:buy', 500, "menotte", "Menotte")
            elseif btn.name == "Perceuse" then
                TriggerServerEvent('astral_menu:buy', 10000, "drill", "Perceuse")
            elseif btn.name == "lockpick2" then
              TriggerServerEvent('astral_menu:buy', 10000, "lockpickv2", "lockpick2")
            elseif btn.name == "cagoule" then
                TriggerServerEvent('astral_menu:buy', 10000, "cagoule", "Cagoule")
            end
        end,
    },

    Menu = {
        ["~b~Holà putos, voici ce que j\'ai à vous proposer"] = {
            b = {
                {name = "Bombe thermique", ask = "~g~10000$", askX = true},
                {name = "Ordinateur de Lester", ask = "~g~10000$", askX = true},
                {name = "Gilet renforcée", ask = "~g~10000$", askX = true},
                {name = "Lockpick", ask = "~g~500$", askX = true},
                {name = "Outils d'électricitée", ask = "~g~10000$", askX = true},
                {name = "Perceuse", ask = "~g~10000$", askX = true},
                {name = "Menotes", ask = "~g~500$", askX = true},
                {name = "Eau Purifiée", ask = "~g~10000$", askX = true},
                {name = "Sac à patate", ask = "~g~10000$", askX = true},
            }
        },

    }
}



local IllegalMedic = {
    Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {255, 0, 22}, Title = "Ambulancier" },
	Data = { currentMenu = "~e~Acheter des médicaments", "Ambulancier" },
    Events = {

        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)
        -- si vous voulez rajouter un boutton pour close le menu:    self:CloseMenu(true)
              if btn.name == "Bandage" then
                TriggerServerEvent('astral_menu:buy', 75, "bandage", "Bandage")
              elseif btn.name == "Medikit" then
                    TriggerServerEvent('astral_menu:buy', 150, "medikit", "Medikit")
              end
        end,
    },

    Menu = {
        ["~e~Acheter des médicaments"] = {
            b = {
                {name = "Bandage", ask = "~g~75$", askX = true},
                {name = "Medikit", ask = "~g~150$", askX = true},
            }
        },

    }
}

local BlackMarket = {
    Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {255, 0, 22}, Title = "Marchand Illégal" },
    Data = { currentMenu = "~e~Acheter des accesessoires", "Marchand Illégal" },
    Events = {

        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)
        -- si vous voulez rajouter un boutton pour close le menu:    self:CloseMenu(true)
              if btn.name == "USB-C" then
                TriggerServerEvent('astral_menu:buy', 75, "drugItem", "USB-C")
              elseif btn.name == "Outil de crochetage" then
                TriggerServerEvent('astral_menu:buy', 150, "lockpick", "Outil de crochetage")
              elseif btn.name == "Dispositif de hack" then
                TriggerServerEvent('astral_menu:buy', 150, "hackerDevice", "Dispositif de hack")
            end
        end,
    },

    Menu = {
        ["~e~Acheter des accesessoires"] = {
            b = {
                {name = "Dispositif de hack", ask = "~g~75$", askX = true},
                {name = "Outil de crochetage", ask = "~g~150$", askX = true},
                {name = "USB-C", ask = "~g~150$", askX = true},
            }
        },

    }
}

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
end)

function AstralSaveSkin()
	TriggerEvent('skinchanger:getSkin', function(skin)
		LastSkin = skin
	end)
	TriggerEvent('skinchanger:getSkin', function(skin)
	TriggerServerEvent('esx_skin:save', skin)
	end)
end



function DrawSub(msg, time)
	ClearPrints()
	BeginTextCommandPrint('STRING')
	AddTextComponentSubstringPlayerName(msg)
	EndTextCommandPrint(time, 1)
end



local Barber = {
	Base = { Header = {"shopui_title_barber3", "shopui_title_barber3"}, Color = {color_black}, HeaderColor = {255, 255, 255}, Title = "BarberShop", Blocked = false },
	Data = { currentMenu = "~r~Changer de style.", "BarberShop" },
	Events = {
		onOpened = function(self, _, btn, CMenu, menuData, currentButton, currentBtn, currentSlt, result, slide, onSlide) 
			SetEntityInvincible(GetPlayerPed(-1), true) -- Set entity vinvcible
			FreezeEntityPosition(GetPlayerPed(-1), true)
			DrawSub("~g~Invincible", 12000)	
        end,
        onExited = function(self, _, btn, CMenu, menuData, currentButton, currentBtn, currentSlt, result, slide, onSlide) 
			SetEntityInvincible(GetPlayerPed(-1), false) -- Set entity vinvcible
			FreezeEntityPosition(GetPlayerPed(-1), false)
			DrawSub("~r~Vous n'êtes plus invincible", 12000)
		end,	
        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)
			PlaySoundFrontend(-1, "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET", 1)
			local slide = btn.slidenum
			local btn = btn.name
			local check = btn.unkCheckbox
            if btn.name == "EZ" then
				OpenMenu('EZ:')
			elseif btn == "Style de barbe" then
                OpenMenu('Barbe:')
            elseif btn == "Taille de la barbe" then
                OpenMenu('Taille:')
            elseif btn == "Couleurs de la barbe" then
                OpenMenu('Couleur:')
            elseif btn == "Style de Cheveux" then
                OpenMenu('Cheveux:')
            elseif btn == "Première couleur des cheveux" then
                OpenMenu('Première Couleur:')
            elseif btn == "Deuxième couleur des cheveux" then
                OpenMenu('Deuxième Couleur:')
            elseif btn == "~g~Payer sa facture" then
                TriggerServerEvent('astral:uhotenue')
				AstralSaveSkin()
				TriggerServerEvent('astral:uhotenue')
                ESX.ShowNotification("Vous avez payer ~r~$200")
            end
        end,
        onSlide = function(menuData, currentButton, currentSlt, CMenu)
			local currentMenu, ped = menuData.currentMenu, GetPlayerPed(-1)
			if currentMenu == "Barbe:" then
				if currentSlt ~= 1 then return end
				local currentButton = currentButton.slidenum - 1
                beard1 = currentButton
				TriggerEvent('skinchanger:change', 'beard_1', beard1)
			end
			if currentMenu == "Taille:" then
				if currentSlt ~= 1 then return end
				local currentButton = currentButton.slidenum - 1
                beard2 = currentButton
				TriggerEvent('skinchanger:change', 'beard_2', beard2)
            end
            if currentMenu == "Couleur:" then
				if currentSlt ~= 1 then return end
				local currentButton = currentButton.slidenum - 1
                beard3 = currentButton
				TriggerEvent('skinchanger:change', 'beard_3', beard3)
            end
            if currentMenu == "Cheveux:" then
				if currentSlt ~= 1 then return end
				local currentButton = currentButton.slidenum - 1
                hair1 = currentButton
				TriggerEvent('skinchanger:change', 'hair_1', hair1)
            end
            if currentMenu == "Première Couleur:" then
				if currentSlt ~= 1 then return end
				local currentButton = currentButton.slidenum - 1
                hair_color1 = currentButton
				TriggerEvent('skinchanger:change', 'hair_color_1', hair_color1)
            end
            if currentMenu == "Deuxième Couleur:" then
				if currentSlt ~= 1 then return end
				local currentButton = currentButton.slidenum - 1
                hair_color2 = currentButton
				TriggerEvent('skinchanger:change', 'hair_color_2', hair_color2)
			end
		end,
    },

    Menu = {
        ["~r~Changer de style."] = {
            b = {
                {name = "Changer sa coiffure.", ask = "→", askX = true},
                {name = "Changer sa barbe.", ask = "→", askX = true},
                {name = "~g~Payer sa facture", ask = "~r~200$", askX = true},
            }
        },


        ["changer sa barbe."] = {
            b = {
                {name = "Style de barbe", ask = "→", askX = true},
                {name = "Taille de la barbe", ask = "→", askX = true},
                {name = "Couleurs de la barbe", ask = "→", askX = true},
            }
        },

        ["changer sa coiffure."] = {
            b = {
                {name = "Style de Cheveux", ask = "→", askX = true},
                {name = "Première couleur des cheveux", ask = "→", askX = true},
                {name = "Deuxième couleur des cheveux", ask = "→", askX = true},
            }
        },

		["Barbe:"] = {
			b = {
				{name = "Style de barbe:", slidemax =  28}
			}
        },
        
        ["Taille:"] = {
			b = {
				{name = "Taille de la barbe:", slidemax =  10}
			}
        },

        ["Couleur:"] = {
			b = {
                {name = "Première couleur:", slidemax =  63},
			}
        },

        ["Cheveux:"] = {
			b = {
                {name = "coupe de cheveux:", slidemax =  73},
			}
        },

        ["Première Couleur:"] = {
			b = {
                {name = "Première couleur des cheveux:", slidemax =  63},
			}
        },

        ["Deuxième Couleur:"] = {
			b = {
                {name = "Deuxième couleur des cheveux:", slidemax =  63},
			}
        },

    }
}






Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        -- on check si le joueur est assez proche du ped
        for k,v in pairs(Config.Zones) do
            
            -- Pour tous les shop legaux
            for i = 1, #v.LegalPos, 1 do
                local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.LegalPos[i].x, v.LegalPos[i].y, v.LegalPos[i].z, true)
                if distance < 2.2 then
                    alert('Appuyez sur ~INPUT_CONTEXT~ pour parler à Apou.')
                    if IsControlJustPressed(1,51) then  -- 51 = E
                        CreateMenu(superet)
                    end
                end
            end

            -- Pour tous les shop illégaux
            for i = 1, #v.IllegalPos, 1 do
            
                local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.IllegalPos[i].x, v.IllegalPos[i].y, v.IllegalPos[i].z, true)
                if distance < 2.2 then
                    alert('Appuyez sur ~INPUT_CONTEXT~ pour parler à John.')
                    if IsControlJustPressed(1,51) then  -- 51 = E
                        CreateMenu(illegal)
                    end
                end
            end

            for i = 1, #v.Pacific, 1 do
            
                local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.Pacific[i].x, v.Pacific[i].y, v.Pacific[i].z, true)
                if distance < 2.2 then
                    alert('Appuyez sur ~INPUT_CONTEXT~ pour parler à Alejandro.')
                    if IsControlJustPressed(1,51) then  -- 51 = E
                        CreateMenu(Pacific)
                    end
                end
            end

            for i = 1, #v.IllegalMedic, 1 do
            
                local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.IllegalMedic[i].x, v.IllegalMedic[i].y, v.IllegalMedic[i].z, true)
                if distance < 2.2 then
                    alert('Appuyez sur ~INPUT_CONTEXT~ pour parler à l\'ambulancier.')
                    if IsControlJustPressed(1,51) then  -- 51 = E
                        CreateMenu(IllegalMedic)
                    end
                end
            end

            for i = 1, #v.BlackMarket, 1 do
            
                local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.BlackMarket[i].x, v.BlackMarket[i].y, v.BlackMarket[i].z, true)
                if distance < 2.2 then
                    alert('Appuyez sur ~INPUT_CONTEXT~ pour parler au marchand illégal.')
                    if IsControlJustPressed(1,51) then  -- 51 = E
                        CreateMenu(BlackMarket)
                    end
                end
            end

            for i = 1, #v.Barber, 1 do
            
                local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.Barber[i].x, v.Barber[i].y, v.Barber[i].z, true)
                if distance < 2.2 then
                    alert('Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le catalogue..')
                    if IsControlJustPressed(1,51) then
                        CreateMenu(Barber)
                    end
                end
            end


            for i = 1, #v.Armurerie, 1 do
            
                local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.Armurerie[i].x, v.Armurerie[i].y, v.Armurerie[i].z, true)
                if distance < 2.2 then
                    alert('Appuyez sur ~INPUT_CONTEXT~ pour parler à Michel')
                    if IsControlJustPressed(1,51) then  -- 51 = E
                        CreateMenu(armurerie)
                    end
                end
            end


        end
    end
end)





Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if IsPauseMenuActive() then
			ESX.UI.HUD.SetDisplay(0.0)
		elseif hasCinematic == true then
			ESX.UI.HUD.SetDisplay(0.0)
		end
	end
end)





Citizen.CreateThread(function()
    for k,v in pairs(Config.Zones) do
        for i = 1, #v.Burger, 1 do
            local hash = GetHashKey("csb_burgerdrug")
            while not HasModelLoaded(hash) do
                RequestModel(hash)
                Wait(60)
            end
            ped = CreatePed("PED_TYPE_CIVMALE", "csb_burgerdrug", v.Burger[i].x, v.Burger[i].y, v.Burger[i].z, v.Burger[i].angle, false, true)
            SetBlockingOfNonTemporaryEvents(ped, true)
            SetEntityInvincible(ped, true)
            FreezeEntityPosition(ped, true)
        end
    end
end)




local burger = {
	Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {255, 0, 22}, Title = "Burgershot" },
    Data = { currentMenu = "~b~Acheter un produit au Burgergshot !" },
    Events = {
        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)
              if btn.name == "HotDog" then
                    TriggerServerEvent('astral_menu:buy', 5, "hotdog", "HotDog")
              elseif btn.name == "DrPepper" then
                    TriggerServerEvent('astral_menu:buy', 7, "drpepper", "DrPepper")
              elseif btn.name == "Scaphandre" then
                    TriggerServerEvent('astral_menu:buy', 70, "scuba", "Scaphandre")
                elseif btn.name == "Appat" then
                    TriggerServerEvent('astral_menu:buy', 70, "fishbait", "Appat")
              elseif btn.name == "Canne à pêche" then
                    TriggerServerEvent('astral_menu:buy', 7, "fishingrod", "Canne à pêche")
              end
        end,
    },
    Menu = {
        ["~b~Acheter un produit au Burgergshot !"] = {
            b = {
                {name = "HotDog", ask = "~g~5$", askX = true},
                {name = "DrPepper", ask = "~g~7$", askX = true},
                {name = "Scaphandre", ask = "~g~70$", askX = true},
                {name = "Canne à pêche", ask = "~g~7$", askX = true},
                {name = "Appat", ask = "~g~7$", askX = true},
            }
        },

    }
}


Citizen.CreateThread(function()
    for k,v in pairs(Config.Zones) do
        for i = 1, #v.Burger, 1 do
            local blip = AddBlipForCoord(v.Burger[i].x, v.Burger[i].y, v.Burger[i].z)

            SetBlipSprite (blip, 52)
            SetBlipScale  (blip, 0.3)
            SetBlipColour (blip, 2)
            SetBlipAsShortRange(blip, true)

            BeginTextCommandSetBlipName('STRING')
            AddTextComponentSubstringPlayerName('Superette Automatique')
            EndTextCommandSetBlipName(blip)
         end
     end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        -- on check si le joueur est assez proche du ped
        for k,v in pairs(Config.Zones) do
            
            -- Pour tous les shop legaux
            for i = 1, #v.Burger, 1 do
                local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.Burger[i].x, v.Burger[i].y, v.Burger[i].z, true)
                if distance < 2.2 then
                    alert('Appuyez sur ~INPUT_CONTEXT~ pour parler au vendeur.')
                    if IsControlJustPressed(1,51) then  -- 51 = E
                        CreateMenu(burger)
                    end
                end
            end
        end
    end
end)






-------- Radgol --------

function setRagdoll(flag)
    ragdoll = flag
end
  
Citizen.CreateThread(function()
while true do
  Citizen.Wait(0)
  if ragdoll then
    SetPedToRagdoll(GetPlayerPed(-1), 1000, 1000, 0, 0, 0, 0)
  end
end
end)

ragdol = true

RegisterNetEvent("Ragdoll")
AddEventHandler("Ragdoll", function()
  if (ragdol) then
      setRagdoll(true)
      ragdol = false
  else
      setRagdoll(false)
      ragdol = true
  end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if IsPauseMenuActive() then
			ESX.UI.HUD.SetDisplay(0.0)
		elseif hasCinematic == true then
			ESX.UI.HUD.SetDisplay(0.0)
		end
	end
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("g_m_y_korlieut_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "g_m_y_korlieut_01", 243.36, -1092.34, 28.29, 2.40, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
end)

local lspd = {
    Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {255, 0, 22}, Blocked = true, Title = "Gouvernement" },
    Data = { currentMenu = "~g~Interaction avec Gilbert !" },
    Events = {
        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)
              if btn.name == "Carte d'identité" then
                    TriggerServerEvent('astral_menu:buy', 2, "idcard", "Carte d'identité") 
              elseif btn.name == "~r~Fermer le menu" then
                CloseMenu(true)       
              end
        end,
    },
    Menu = {
        ["~g~Interaction avec Gilbert !"] = {
            b = {
                {name = "Carte d'identité", ask = "~g~2$", askX = true},
                {name = "~r~Fermer le menu"},
            }
        },

    }
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        -- on check si le joueur est assez proche du ped
        for k,v in pairs(Config.Zones) do
            
            -- Pour tous les shop legaux
            for i = 1, #v.LSPD, 1 do
                local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.LSPD[i].x, v.LSPD[i].y, v.LSPD[i].z, true)
                if distance < 3.2 then
                    alert('Appuyez sur ~INPUT_CONTEXT~ pour parler à ~b~Gilbert.')
                    if IsControlJustPressed(1,51) then  -- 51 = E
                        CreateMenu(lspd)
                    end
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if IsPauseMenuActive() then
			ESX.UI.HUD.SetDisplay(0.0)
		elseif hasCinematic == true then
			ESX.UI.HUD.SetDisplay(0.0)
		end
	end
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("cs_bankman")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "cs_bankman", 254.00, 222.48, 105.286, 157.30, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
end)

local banque = {
    Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {255, 0, 22}, Blocked = true, Title = "Banquier" },
    Data = { currentMenu = "~g~Interaction avec le banquier !" },
    Events = {
        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)
              if btn.name == "Carte bancaire" then
                    TriggerServerEvent('astral_menu:buy', 100, "cartebanque", "Carte bancaire")
              elseif btn.name == "~r~Fermer le menu" then
                CloseMenu(true)     
              end
        end,
    },
    Menu = {
        ["~g~Interaction avec le banquier !"] = {
            b = {
                {name = "Carte bancaire", ask = "~g~100$", askX = true},
                {name = "~r~Fermer le menu"},

            }
        },

    }
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        -- on check si le joueur est assez proche du ped
        for k,v in pairs(Config.Zones) do
            
            -- Pour tous les shop legaux
            for i = 1, #v.Banque, 1 do
                local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.Banque[i].x, v.Banque[i].y, v.Banque[i].z, true)
                if distance < 3.2 then
                    alert('Appuyez sur ~INPUT_CONTEXT~ pour parler au ~b~banquier.')
                    if IsControlJustPressed(1,51) then  -- 51 = E
                        CreateMenu(banque)
                    end
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if IsPauseMenuActive() then
			ESX.UI.HUD.SetDisplay(0.0)
		elseif hasCinematic == true then
			ESX.UI.HUD.SetDisplay(0.0)
		end
	end
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("csb_customer")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "csb_customer", -627.71, -274.99, 34.57, 119.79, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
end)

local ifruit = {
    Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {255, 0, 22}, Blocked = true, Title = "iFruit" },
    Data = { currentMenu = "~g~Interaction avec William !" },
    Events = {
        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)
              if btn.name == "Téléphone" then
                    TriggerServerEvent('astral_menu:buy', 75, "phone", "Téléphone")
              elseif btn.name == "~r~Fermer le menu" then
                CloseMenu(true)     
              end
        end,
    },
    Menu = {
        ["~g~Interaction avec William !"] = {
            b = {
                {name = "Téléphone", ask = "~g~75$", askX = true},
                {name = "~r~Fermer le menu"},

            }
        },

    }
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        -- on check si le joueur est assez proche du ped
        for k,v in pairs(Config.Zones) do
            
            -- Pour tous les shop legaux
            for i = 1, #v.iFruit, 1 do
                local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.iFruit[i].x, v.iFruit[i].y, v.iFruit[i].z, true)
                if distance < 3.2 then
                    alert('Appuyez sur ~INPUT_CONTEXT~ pour parler à ~b~Marshall.')
                    if IsControlJustPressed(1,51) then  -- 51 = E
                        CreateMenu(ifruit)
                    end
                end
            end
        end
    end
end)

-- 

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		if IsPauseMenuActive() then
			ESX.UI.HUD.SetDisplay(0.0)
		elseif hasCinematic == true then
			ESX.UI.HUD.SetDisplay(0.0)
		end
	end
end)

Citizen.CreateThread(function()
    local hash = GetHashKey("s_m_y_cop_01")
    while not HasModelLoaded(hash) do
    RequestModel(hash)
    Wait(20)
    end
    ped = CreatePed("PED_TYPE_CIVFEMALE", "s_m_y_cop_01", 484.60, -1003.60, 24.73, 2.84, false, true)
    SetBlockingOfNonTemporaryEvents(ped, true)
    FreezeEntityPosition(ped, true)
end)

local police = {
    Base = { Header = {"commonmenu", "interaction_bgd"}, Color = {color_black}, HeaderColor = {255, 0, 22}, Blocked = true, Title = "Jack" },
    Data = { currentMenu = "~g~Interaction avec Jack !" },
    Events = {
        onSelected = function(self, _, btn, CMenu, menuData, currentButton, currentSlt, result)
              if btn.name == "Glock.17" then
                    TriggerServerEvent('astral_menu:buy', 1000, "combatpistol", "Glock.17")
              elseif btn.name == "~r~Fermer le menu" then
                CloseMenu(true)     
              end
        end,
    },
    Menu = {
        ["~g~Interaction avec Jack !"] = {
            b = {
                {name = "Glock.17", ask = "~g~$1000", askX = true},
                {name = "~r~Fermer le menu"},

            }
        },

    }
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        -- on check si le joueur est assez proche du ped
        for k,v in pairs(Config.Zones) do
            
            -- Pour tous les shop legaux
            for i = 1, #v.Police, 1 do
                local distance = GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), v.Police[i].x, v.Police[i].y, v.Police[i].z, true)
                if distance < 3.2 then
                    alert('Appuyez sur ~INPUT_CONTEXT~ pour parler à ~b~Jack.')
                    if IsControlJustPressed(1,51) then  -- 51 = E
                        CreateMenu(police)
                    end
                end
            end
        end
    end
end)