Config                            = {}

Config.DrawDistance               = 100.0

Config.Marker                     = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }

Config.ReviveReward               = 150  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = true -- enable anti-combat logging?
Config.LoadIpl                    = true -- disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'fr'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 5 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 5 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true

Config.RemoveWeaponsAfterRPDeath  = false
Config.RemoveCashAfterRPDeath     = false
Config.RemoveItemsAfterRPDeath    = false

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = true
Config.EarlyRespawnFineAmount     = 1500

Config.RespawnPoint = { coords = vector3(323.77, -585.06, 43.288), heading = 43.288 }

Config.Hospitals = {

	CentralLosSantos = {

--		Blip = {
--			coords = vector3(-454.92, -331.64, 34.36),
--			sprite = 61,
--			scale  = 0.5,
--			color  = 2
--		},

		AmbulanceActions = {
			vector3(0.0, 0.0, 0.0)
		},
		Cloakroom = {
			vector3(298.64, -599.17, 43.28)
		},

		Pharmacies = {
			vector3(310.10, -568.29, 43.28)
		},

		Vehicles = {
			{
				Spawner = vector3(332.57, -566.13, 28.8),
				InsideShop = vector3(321.19, -547.65, 28.32),
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(334.42, -572.7, 28.38), heading = 339.39, radius = 4.0 },
					{ coords = vector3(327.41, -569.96, 28.38), heading = 340.38, radius = 4.0 }
					--{ coords = vector3(-459.00, -348.48, 34.36), heading = 79.32, radius = 4.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(337.89, -586.8, 74.16),
				InsideShop = vector3(353.63, -589.03, 74.26),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					--{ coords = vector3(313.5, -1465.1, 46.5), heading = 142.7, radius = 10.0 },
					{ coords = vector3(353.63, -589.03, 74.26), heading = 34.03, radius = 4.0 }
				}
			}
		},

		--FastTravels = {
			-- {
			-- 	From = vector3(339.29, -583.79, 74.16),
			-- 	To = { coords = vector3(324.63, -558.15, 28.73), heading = 0.0 },
			-- 	Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			-- },

			--{
			--	From = vector3(275.3, -1361, 23.5),
			--	To = { coords = vector3(295.8, -1446.5, 28.9), heading = 0.0 },
			--	Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			--},
--
			--{
			--	From = vector3(247.3, -1371.5, 23.5),
			--	To = { coords = vector3(333.1, -1434.9, 45.5), heading = 138.6 },
			--	Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			--},
--
			--{
			--	From = vector3(335.5, -1432.0, 45.50),
			--	To = { coords = vector3(249.1, -1369.6, 23.5), heading = 0.0 },
			--	Marker = { type = 1, x = 2.0, y = 2.0, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false }
			--},
--
			--{
			--	From = vector3(234.5, -1373.7, 20.9),
			--	To = { coords = vector3(320.9, -1478.6, 28.8), heading = 0.0 },
			--	Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
			--},
			
--
			--{
			--	From = vector3(317.9, -1476.1, 28.9),
			--	To = { coords = vector3(238.6, -1368.4, 23.5), heading = 0.0 },
			--	Marker = { type = 1, x = 1.5, y = 1.5, z = 1.0, r = 102, g = 0, b = 102, a = 100, rotate = false }
			--}
		--},

		--FastTravelsPrompt = {
		--	{
		--		From = vector3(237.4, -1373.8, 26.0),
		--		To = { coords = vector3(251.9, -1363.3, 38.5), heading = 0.0 },
		--		Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
		--		Prompt = _U('fast_travel')
		--	},
--
		--	{
		--		From = vector3(256.5, -1357.7, 36.0),
		--		To = { coords = vector3(235.4, -1372.8, 26.3), heading = 0.0 },
		--		Marker = { type = 1, x = 1.5, y = 1.5, z = 0.5, r = 102, g = 0, b = 102, a = 100, rotate = false },
		--		Prompt = _U('fast_travel')
		--	}
		--}

	}
}

Config.AuthorizedVehicles = {

	ambulance = {
		{ model = '20ramambo', label = 'Ambulance', price = 1}
		
	},

	doctor = {
		{ model = '20ramambo', label = 'Ambulance', price = 1},
		{ model = 'ems', label = 'Dodge EMS', price = 1}
		
	},

	chief_doctor = {
		{ model = '20ramambo', label = 'Ambulance', price = 1},
		{ model = 'ems', label = 'Dodge EMS', price = 1}
	
	},

	boss = {
		{ model = '20ramambo', label = 'Ambulance', price = 1},
		{ model = 'ems', label = 'Dodge EMS', price = 1}
		
	}

}

Config.AuthorizedHelicopters = {

	ambulance = {},

	doctor = {},

	chief_doctor = {
		{ model = 'polmav', label = 'EMS Maverick', price = 1 }
	},

	boss = {
		{ model = 'polmav', label = 'EMS Maverick', price = 1 }
	}

}
Config.Uniforms = {
	tenu_ambulancier = {
		male = {
			['tshirt_1'] = 155,  ['tshirt_2'] = 0,
			['torso_1'] = 255,   ['torso_2'] = 0,
			['decals_1'] = 58,   ['decals_2'] = 0,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['arms'] = 74,
			['pants_1'] = 22,   ['pants_2'] = 0,
			['shoes_1'] = 2,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 128,    ['chain_2'] = 0,
			['mask_1'] = 0,  	['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 189,  ['tshirt_2'] = 0,
			['torso_1'] = 258,   ['torso_2'] = 0,
			['decals_1'] = 66,   ['decals_2'] = 0,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['arms'] = 98,
			['pants_1'] = 52,   ['pants_2'] = 2,
			['shoes_1'] = 49,   ['shoes_2'] = 0,
			['glasses_1'] = -1,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 96,    ['chain_2'] = 0,
			['mask_1'] = 0,  	['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	tenu_urgentiste = {
		male = {
			['tshirt_1'] = 155,  ['tshirt_2'] = 0,
			['torso_1'] = 255,   ['torso_2'] = 0,
			['decals_1'] = 58,   ['decals_2'] = 0,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['arms'] = 74,
			['pants_1'] = 22,   ['pants_2'] = 0,
			['shoes_1'] = 2,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 128,    ['chain_2'] = 0,
			['mask_1'] = 0,  	['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 189,  ['tshirt_2'] = 0,
			['torso_1'] = 258,   ['torso_2'] = 0,
			['decals_1'] = 66,   ['decals_2'] = 0,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['arms'] = 98,
			['pants_1'] = 52,   ['pants_2'] = 2,
			['shoes_1'] = 49,   ['shoes_2'] = 0,
			['glasses_1'] = -1,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 96,    ['chain_2'] = 0,
			['mask_1'] = 0,  	['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	tenu_medecin = {
		male = {
			['tshirt_1'] = 351,  ['tshirt_2'] = 0,
			['torso_1'] = 12,   ['torso_2'] = 3,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['arms'] = 88,
			['pants_1'] = 22,   ['pants_2'] = 0,
			['shoes_1'] = 4,   ['shoes_2'] = 1,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 128,    ['chain_2'] = 0,
			['mask_1'] = 0,  	['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 189,  ['tshirt_2'] = 0,
			['torso_1'] = 367,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['arms'] = 101,
			['pants_1'] = 6,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['glasses_1'] = -1,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 96,    ['chain_2'] = 0,
			['mask_1'] = 0,  	['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	tenu_chirurgien = {
		male = {
			['tshirt_1'] = 351,  ['tshirt_2'] = 0,
			['torso_1'] = 12,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['arms'] = 88,
			['pants_1'] = 24,   ['pants_2'] = 5,
			['shoes_1'] = 8,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 128,    ['chain_2'] = 0,
			['mask_1'] = 0,  	['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 189,  ['tshirt_2'] = 0,
			['torso_1'] = 332,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['arms'] = 101,
			['pants_1'] = 23,   ['pants_2'] = 0,
			['shoes_1'] = 10,   ['shoes_2'] = 1,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 96,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	tenu_directeur = {
		male = {
			['tshirt_1'] = 351,  ['tshirt_2'] = 0,
			['torso_1'] = 12,   ['torso_2'] = 3,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['arms'] = 88,
			['pants_1'] = 24,   ['pants_2'] = 5,
			['shoes_1'] = 8,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 128,    ['chain_2'] = 0,
			['mask_1'] = 0,  	['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 189,  ['tshirt_2'] = 0,
			['torso_1'] = 221,   ['torso_2'] = 3,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['arms'] = 109,
			['pants_1'] = 133,   ['pants_2'] = 3,
			['shoes_1'] = 10,   ['shoes_2'] = 1,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 96,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
}

