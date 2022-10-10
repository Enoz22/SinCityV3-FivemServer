Config                            = {}

Config.DrawDistance               = 20.0

Config.Marker                     = {type = 22, x = 0.5, y = 0.5, z = 0.5, r = 255, g = 0, b = 0, a = 100, false, rotate = true, false, true, true, true, true}

Config.ReviveReward               = 400
Config.AntiCombatLog              = true -- Enable anti-combat logging? (Removes Items when a player logs back after intentionally logging out while dead.)

Config.Locale                     = 'fr'

Config.EarlyRespawnTimer          = 10000 * 5  -- time til respawn is available
Config.BleedoutTimer              = 10000 * 5 -- time til the player bleeds out

Config.EnablePlayerManagement     = true -- Enable society managing (If you are using esx_society).

Config.RemoveWeaponsAfterRPDeath  = false
Config.RemoveCashAfterRPDeath     = false
Config.RemoveItemsAfterRPDeath    = false

--Laissez le joueur payer pour réapparaître tôt, seulement s'il peut se le permettre.
Config.EarlyRespawnFine           = false
Config.EarlyRespawnFineAmount     = 1500

Config.RespawnPoint = {coords = vector3(323.43, -584.91, 43.28), heading = 75.54}

Config.Hospitals = {
	CentralLosSantos = {
		AmbulanceActions = {
			vector3(298.90, -598.48, 43.28)
		},
		-- Boss = {
		-- 	vector3(334.56, -593.70, 43.28)
		-- },
		Pharmacies = {
			vector3(310.0, -568.6, 43.28)
		},
		Vehicles = {
			vector3(333.26, -564.42, 28.8)
		},
		Helicopters = {
			vector3(340.49, -581.32, 74.16)
		},
        Deleter = {
            vector3(351.7, -587.99, 74.16),
			vector3(326.56, -571.96, 28.8)
        },
	}
}

Cloak = {
	clothes = {
        specials = {
            [0] = {
                label = "Tenue Civil",
                minimum_grade = 0,
                variations = {male = {}, female = {}},
                onEquip = function()
                    ESX.TriggerServerCallback('esx_skin:getPlayerSkin', function(skin) TriggerEvent('skinchanger:loadSkin', skin) end)
                    SetPedArmour(PlayerPedId(), 0)
                end
            },
            [1] = {
                minimum_grade = 3,
                label = "Tenue de Directeur",
                variations = {
                male = {
                    tshirt_1 = 155,  tshirt_2 = 0,
                    torso_1 = 255,   torso_2 = 0,
                    decals_1 = 58,   decals_2 = 0,
                    arms = 74,
                    pants_1 = 22,   pants_2 = 0,
                    shoes_1 = 2,   shoes_2 = 0,
                    helmet_1 = -1,  helmet_2 = 0,
                    chain_1 = 128,    chain_2 = 2,
                    ears_1 = 0,     ears_2 = 0
                },
                female = {
                    tshirt_1 = 189,  tshirt_2 = 0,
                    torso_1 = 258,   torso_2 = 0,
                    decals_1 = 66,   decals_2 = 0,
                    arms = 98,
                    pants_1 = 52,   pants_2 = 2,
                    shoes_1 = 49,   shoes_2 = 0,
                    helmet_1 = -1,  helmet_2 = 0,
                    chain_1 = 96,    chain_2 = 0,
                    ears_1 = 0,     ears_2 = 0
                }
            },
            onEquip = function()  
            end
            }
        },
        grades = {
            -- @label = Le nom affiché de la tenue de grade
            -- @male = Les composants skinchanger pour les hommes
            -- @female = Les composants skinchanger pour les femmes
            [0] = {
                label = "Tenue d'Ambulancier",
                minimum_grade = 0,
                variations = {
                male = {
                        tshirt_1 = 155,  tshirt_2 = 0,
                        torso_1 = 255,   torso_2 = 0,
                        decals_1 = 58,   decals_2 = 0,
                        arms = 74,
                        pants_1 = 22,   pants_2 = 0,
                        shoes_1 = 2,   shoes_2 = 0,
                        helmet_1 = -1,  helmet_2 = 0,
                        chain_1 = 128,    chain_2 = 2,
                        ears_1 = 0,     ears_2 = 0
                    },
                    female = {
                        tshirt_1 = 189,  tshirt_2 = 0,
                        torso_1 = 258,   torso_2 = 0,
                        decals_1 = 66,   decals_2 = 0,
                        arms = 98,
                        pants_1 = 52,   pants_2 = 2,
                        shoes_1 = 49,   shoes_2 = 0,
                        helmet_1 = -1,  helmet_2 = 0,
                        chain_1 = 96,    chain_2 = 0,
                        ears_1 = 0,     ears_2 = 0
                    }
            },
            onEquip = function()
            end
        },
            [1] = {
                minimum_grade = 0,
                label = "Tenue Médecin",
                variations = {
                    male = {
                        tshirt_1 = 351,  tshirt_2 = 0,
                        torso_1 = 12,   torso_2 = 3,
                        decals_1 = 0,   decals_2 = 0,
                        arms = 88,
                        pants_1 = 22,   pants_2 = 0,
                        shoes_1 = 4,   shoes_2 = 1,
                        helmet_1 = -1,  helmet_2 = 0,
                        chain_1 = 128,    chain_2 = 2,
                        ears_1 = 0,     ears_2 = 0
                    },
                    female = {
                        tshirt_1 = 189,  tshirt_2 = 0,
                        torso_1 = 367,   torso_2 = 0,
                        decals_1 = 0,   decals_2 = 0,
                        arms = 101,
                        pants_1 = 6,   pants_2 = 0,
                        shoes_1 = 27,   shoes_2 = 0,
                        helmet_1 = -1,  helmet_2 = 0,
                        chain_1 = 96,    chain_2 = 0,
                        ears_1 = 0,     ears_2 = 0
                    }
            },
            onEquip = function()
                
            end
        },
    }
    },
    vehicles = {
        car = {
            {category = "↓ ~b~Véhicules Normaux ~s~↓"},
            {model = "ambulance", label = "Petite Ambulance", minimum_grade = 0},
            {model = "20ramambo", label = "Ford Ambulance", minimum_grade = 0},
            {category = "↓ ~b~Véhicules spéciaux ~s~↓"},
            {model = "ems", label = "Véhicule Simple", minimum_grade = 0}

        },
    },
    helico = {
        car = {
            {model = "polmav", label = "Helicoptère", minimum_grade = 1}
        },
    }
}