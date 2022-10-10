Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 23
Config.MarkerSize                 = { x = 3, y = 3, z = 1 }
Config.MarkerColor                = { r = 30, g = 144, b = 255 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableCardManagement       = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = false -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale = 'fr'

-- Vehicles list: https://wiki.gtanet.work/index.php?title=Vehicle_Models
config	= {}
config.vehicle1 = 'police2'
config.vehicle2 = 'police3'

-- Ped model list: https://forums.gta5-mods.com/topic/7789/npc-or-peds-data-list-base-gtav
config.ped1 = 's_f_y_cop_01' -- model of security personel
config.ped2 = 's_m_y_cop_01' -- model of security personel

-- Set weapons: https://forum.fivem.net/t/list-of-weapon-spawn-names-after-hours/90750
config.weapon1 = 'WEAPON_MICROSMG'
config.weapon2 = 'WEAPON_CARBINERIFLE'


-- Set config.usejob = true if you want to use a job
config.usejob = true  -- restrict to a job?
config.jobname = 'police' -- which job to use the menu?


Config.WhitelistedCops = {
	'police'
}
-- Config account police
Config.Account = {
	blackMoney = "police_black_money",
	society = "society_police",
	weapon = "society_police_weapons",
}

Config.PoliceStations = {

	LSPD = {

		-- Blip = {
		-- 	Coords  = vector3(-1105.16, -835.08, 19.0),
		-- 	Sprite  = 58,
		-- 	Display = 4,
		-- 	Scale   = 1.0,
		-- 	Colour  = -1
		-- },

		Cloakrooms = {
			vector3(-1098.08,-832.56,14.28),
		},

		Armories = {
			vector3(-1106.01, -825.59, 14.28),
		},

		Card = {
			vector3(-1097.32, -840.08, 18.0),
			vector3(-1097.12, -818.36, 18.04),
		},
--[[
		Vehicles = {
			{
				Spawner = vector3(-0.0, -0.0, 0.0),
				InsideShop = vector3(435.41, -1020.92, 28.7), heading = 90.0,
				SpawnPoints = {
					--{ coords = vector3(-1120.88, -850.56, 13.44), heading = 125.76, radius = 6.0 },
					--{ coords = vector3(-1122.92, -848.0, 13.44), heading = 125.76, radius = 6.0 },
					--{ coords = vector3(-1125.32, -844.48, 13.44), heading = 125.76, radius = 6.0 },
					{ coords = vector3(-0.0, -0.0, 0.0), heading = 125.76, radius = 6.0 }
				}
			}
		},
]]
		Helicopters = {
			{
				Spawner = vector3(-1094.8, -844.0, 37.72),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{ coords = vector3(-1096.28, -832.48, 37.72), heading = 307.2, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(-0.0, -0.0, 0.0),
		}

	}

}

Config.AuthorizedWeapons = {
	recruit = {
		-- { weapon = 'WEAPON_APPISTOL', components = { 0, 0, 120, 4000, nil }, price = 1 },
		-- { weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		-- { weapon = 'WEAPON_STUNGUN', price = 1500 },
		-- { weapon = 'WEAPON_FLASHBANG', price = 1500 },
		-- { weapon = 'WEAPON_FLASHLIGHT', price = 80 }
	},

	officer = {
		-- { weapon = 'WEAPON_APPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 1 },
		-- { weapon = 'WEAPON_ADVANCEDRIFLE', components = { 0, 6000, 1000, 4000, 8000, nil }, price = 1 },
		-- { weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		-- { weapon = 'WEAPON_STUNGUN', price = 500 },
		-- { weapon = 'WEAPON_FLASHLIGHT', price = 0 }
	},

	sergeant = {
		-- { weapon = 'WEAPON_APPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 10000 },
		-- { weapon = 'WEAPON_ADVANCEDRIFLE', components = { 0, 6000, 1000, 4000, 8000, nil }, price = 50000 },
		-- { weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 70000 },
		-- { weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		-- { weapon = 'WEAPON_STUNGUN', price = 500 },
		-- { weapon = 'WEAPON_FLASHLIGHT', price = 0 }
	},

	intendent = {
		-- { weapon = 'WEAPON_APPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 10000 },
		-- { weapon = 'WEAPON_ADVANCEDRIFLE', components = { 0, 6000, 1000, 4000, 8000, nil }, price = 50000 },
		-- { weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 70000 },
		-- { weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		-- { weapon = 'WEAPON_STUNGUN', price = 500 },
		-- { weapon = 'WEAPON_FLASHLIGHT', price = 0 }
	},

	lieutenant = {
		-- { weapon = 'WEAPON_APPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 10000 },
		-- { weapon = 'WEAPON_ADVANCEDRIFLE', components = { 0, 6000, 1000, 4000, 8000, nil }, price = 50000 },
		-- { weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 70000 },
		-- { weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		-- { weapon = 'WEAPON_STUNGUN', price = 500 },
		-- { weapon = 'WEAPON_FLASHLIGHT', price = 0 }
	},

	chef = {
		-- { weapon = 'WEAPON_APPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 10000 },
		-- { weapon = 'WEAPON_ADVANCEDRIFLE', components = { 0, 6000, 1000, 4000, 8000, nil }, price = 50000 },
		-- { weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 70000 },
		-- { weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		-- { weapon = 'WEAPON_STUNGUN', price = 500 },
		-- { weapon = 'WEAPON_FLASHLIGHT', price = 0 }
	},

	boss = {
		-- { weapon = 'WEAPON_APPISTOL', components = { 0, 0, 1000, 4000, nil }, price = 10000 },
		-- { weapon = 'WEAPON_ADVANCEDRIFLE', components = { 0, 6000, 1000, 4000, 8000, nil }, price = 50000 },
		-- { weapon = 'WEAPON_PUMPSHOTGUN', components = { 2000, 6000, nil }, price = 70000 },
		-- { weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		-- { weapon = 'WEAPON_STUNGUN', price = 500 },
		-- { weapon = 'WEAPON_FLASHLIGHT', price = 0 }
	}
}

Config.AuthorizedVehicles = {
	Shared = {
		{ model = 'policeb', label = 'Moto', price = 450 }
	},

	recruit = {
		{ model = 'police', label = 'Cruiser', price = 650 }
	},

	officer = {
		{ model = 'police', label = 'Cruiser', price = 650 },
		{ model = 'police2', label = 'Buffalo', price = 950 },
		{ model = 'police3', label = 'Interceptor', price = 1150 }
	},

	sergeant = {
		{ model = 'police', label = 'Cruiser', price = 650 },
		{ model = 'police2', label = 'Buffalo', price = 950 },
		{ model = 'police3', label = 'Interceptor', price = 1150 }
	},

	intendent = {
		{ model = 'police', label = 'Cruiser', price = 650 },
		{ model = 'police2', label = 'Buffalo', price = 950 },
		{ model = 'police3', label = 'Interceptor', price = 1150 }	
	},

	lieutenant = {
		{ model = 'police', label = 'Cruiser', price = 650 },
		{ model = 'police2', label = 'Buffalo', price = 950 },
		{ model = 'police3', label = 'Interceptor', price = 1150 }
	},

	chef = {
		{ model = 'police', label = 'Cruiser', price = 650 },
		{ model = 'police2', label = 'Buffalo', price = 950 },
		{ model = 'police3', label = 'Interceptor', price = 1150 }
	},

	boss = {
		{ model = 'police', label = 'Cruiser', price = 650 },
		{ model = 'police2', label = 'Buffalo', price = 950 },
		{ model = 'police3', label = 'Interceptor', price = 1150 }
	}
}

Config.AuthorizedHelicopters = {
	-- recruit = {},

	-- officer = {},

	-- sergeant = {},

	-- intendent = {},

	-- lieutenant = {
	-- 	{ model = 'polmav', label = 'Police Maverick', livery = 0, price = 1 }
	-- },

	-- chef = {
	-- 	{ model = 'polmav', label = 'Police Maverick', livery = 0, price = 1 }
	-- },

	-- boss = {
	-- 	{ model = 'polmav', label = 'Police Maverick', livery = 0, price = 1 }
	-- }
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
	--[[recruit_wear = {
		male = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 1,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 1,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 52,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	officer_wear = {
		male = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 1,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 52,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 1,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 52,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	sergeant_wear = {
		male = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 1,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 52,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 1,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 52,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	intendent_wear = {
		male = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 1,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 52,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 1,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 52,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	lieutenant_wear = { -- currently the same as intendent_wear
	    male = {
		    ['tshirt_1'] = 38,  ['tshirt_2'] = 1,
		    ['torso_1'] = 55,   ['torso_2'] = 0,
		    ['decals_1'] = 0,   ['decals_2'] = 0,
		    ['arms'] = 41,
		    ['pants_1'] = 52,   ['pants_2'] = 1,
		    ['shoes_1'] = 25,   ['shoes_2'] = 0,
		    ['helmet_1'] = -1,  ['helmet_2'] = 0,
		    ['chain_1'] = 0,    ['chain_2'] = 0,
		    ['ears_1'] = 2,     ['ears_2'] = 0
	    },
	    female = {
		    ['tshirt_1'] = 38,  ['tshirt_2'] = 1,
		    ['torso_1'] = 55,   ['torso_2'] = 0,
		    ['decals_1'] = 0,   ['decals_2'] = 0,
		    ['arms'] = 41,
		    ['pants_1'] = 52,   ['pants_2'] = 1,
		    ['shoes_1'] = 25,   ['shoes_2'] = 0,
		    ['helmet_1'] = -1,  ['helmet_2'] = 0,
		    ['chain_1'] = 0,    ['chain_2'] = 0,
		    ['ears_1'] = 2,     ['ears_2'] = 0
    	}
	},
	chef_wear = {
		male = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 1,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 52,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 38,  ['tshirt_2'] = 1,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 52,   ['pants_2'] = 1,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	boss_wear = { -- currently the same as chef_wear
	    male = {
		    ['tshirt_1'] = 38,  ['tshirt_2'] = 1,
		    ['torso_1'] = 55,   ['torso_2'] = 0,
		    ['decals_1'] = 0,   ['decals_2'] = 0,
		    ['arms'] = 41,
		    ['pants_1'] = 52,   ['pants_2'] = 1,
		    ['shoes_1'] = 25,   ['shoes_2'] = 0,
		    ['helmet_1'] = -1,  ['helmet_2'] = 0,
		    ['chain_1'] = 0,    ['chain_2'] = 0,
		    ['ears_1'] = 2,     ['ears_2'] = 0
	    },
	     female = {
		    ['tshirt_1'] = 38,  ['tshirt_2'] = 1,
		    ['torso_1'] = 55,   ['torso_2'] = 0,
		    ['decals_1'] = 0,   ['decals_2'] = 0,
		    ['arms'] = 41,
		    ['pants_1'] = 52,   ['pants_2'] = 1,
		    ['shoes_1'] = 25,   ['shoes_2'] = 0,
		    ['helmet_1'] = -1,  ['helmet_2'] = 0,
		    ['chain_1'] = 0,    ['chain_2'] = 0,
		    ['ears_1'] = 2,     ['ears_2'] = 0
	    }
	},--]]

	tenu_recrue = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 205,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 4,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = 0,  	['mask_2'] = 0,
			['bproof_1'] = 24,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 202,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 14,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	tenu_stage = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 205,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 4,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = 0,  	['mask_2'] = 0,
			['bproof_1'] = 24,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 202,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 14,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	tenu_cadet = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 205,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 4,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = 0,  	['mask_2'] = 0,
			['bproof_1'] = 24,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 202,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 14,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},

	tenu_officier = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 195,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 11,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 24,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 202,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 14,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	tenu_officier2 = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 195,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 11,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 24,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 202,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 14,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	tenu_officier3 = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 195,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 11,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 24,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 202,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 14,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},

	tenu_sergent = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 195,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 11,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 24,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 202,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 14,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	tenu_sergent2 = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 195,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 11,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 24,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 202,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 14,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},

	tenu_lieutenant = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 195,   ['torso_2'] = 1,
			['decals_1'] = 15,   ['decals_2'] = 3,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 11,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 24,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 192,   ['torso_2'] = 1,
			['decals_1'] = 14,   ['decals_2'] = 0,
			['bags_1'] = 52,    ['bags_2']  = 1,
			['arms'] = 14,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 33,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	tenu_lieutenant2 = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 195,   ['torso_2'] = 1,
			['decals_1'] = 15,   ['decals_2'] = 3,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 11,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 24,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 192,   ['torso_2'] = 1,
			['decals_1'] = 14,   ['decals_2'] = 0,
			['bags_1'] = 52,    ['bags_2']  = 1,
			['arms'] = 14,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 33,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},

	tenu_capitaine = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 195,   ['torso_2'] = 1,
			['decals_1'] = 15,   ['decals_2'] = 2,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 11,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 24,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 192,   ['torso_2'] = 1,
			['decals_1'] = 14,   ['decals_2'] = 2,
			['arms'] = 14,
			['bags_1'] = 52,    ['bags_2']  = 1,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 33,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	tenu_capitaine2 = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 195,   ['torso_2'] = 1,
			['decals_1'] = 15,   ['decals_2'] = 2,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 11,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 24,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 192,   ['torso_2'] = 1,
			['decals_1'] = 14,   ['decals_2'] = 2,
			['arms'] = 14,
			['bags_1'] = 52,    ['bags_2']  = 1,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 33,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	tenu_capitaine3 = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 195,   ['torso_2'] = 1,
			['decals_1'] = 15,   ['decals_2'] = 2,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['arms'] = 11,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 24,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 192,   ['torso_2'] = 1,
			['decals_1'] = 14,   ['decals_2'] = 2,
			['arms'] = 14,
			['bags_1'] = 52,    ['bags_2']  = 1,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 33,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},

	tenu_commandant = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 195,   ['torso_2'] = 1,
			['decals_1'] = 44,   ['decals_2'] = 0,
			['bags_1'] = 52,    ['bags_2']  = 1,
			['arms'] = 11,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 24,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 192,   ['torso_2'] = 1,
			['decals_1'] = 14,   ['decals_2'] = 3,
			['arms'] = 14,
			['bags_1'] = 52,    ['bags_2']  = 1,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 33,    ['chain_2'] = 0,
			['mask_1'] = -1,  	['mask_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},

	tenu_assistant = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 195,   ['torso_2'] = 1,
			['decals_1'] = 44,   ['decals_2'] = 3,
			['bags_1'] = 52,    ['bags_2']  = 2,
			['arms'] = 11,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 24,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 192,   ['torso_2'] = 1,
			['decals_1'] = 52,   ['decals_2'] = 0,
			['arms'] = 14,
			['bags_1'] = 52,    ['bags_2']  = 2,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 33,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},

	tenu_chief = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 195,   ['torso_2'] = 1,
			['decals_1'] = 44,   ['decals_2'] = 1,
			['bags_1'] = 52,    ['bags_2']  = 3,
			['arms'] = 11,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 24,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 192,   ['torso_2'] = 1,
			['decals_1'] = 52,   ['decals_2'] = 1,
			['arms'] = 14,
			['bags_1'] = 52,    ['bags_2']  = 3,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 52,
			['glasses_1'] = -1,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 33,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},

	tenu_mary = {
		male = {
			['tshirt_1'] = 96,  ['tshirt_2'] = 0,
			['torso_1'] = 205,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 20,
			['pants_1'] = 32,   ['pants_2'] = 1,
			['shoes_1'] = 13,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = 0,  ['helmet_2'] = 0,
			['chain_1'] = 1,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 24,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 0,
			['torso_1'] = 202,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 21,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['pants_1'] = 31,   ['pants_2'] = 1,
			['shoes_1'] = 9,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 33,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 16,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},

	tenu_ceremonie = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 260,   ['torso_2'] = 0,
			['decals_1'] = 5,   ['decals_2'] = 0,
			['arms'] = 75,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 51,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 14,  ['tshirt_2'] = 0,
			['torso_1'] = 202,   ['torso_2'] = 0,
			['decals_1'] = 5,   ['decals_2'] = 0,
			['arms'] = 88,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['glasses_1'] = 5,  ['glasses_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},

	tenu_swatgr = {
		male = {
			['tshirt_1'] = 16,  ['tshirt_2'] = 0,
			['torso_1'] = 225,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 17,
			['pants_1'] = 87,   ['pants_2'] = 11,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['shoes_1'] = 24,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = 150,  ['helmet_2'] = 0,
			['chain_1'] = 1,    ['chain_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 26,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 33,  ['tshirt_2'] = 1,
			['torso_1'] = 230,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 14,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['pants_1'] = 30,   ['pants_2'] = 0,
			['shoes_1'] = 50,   ['shoes_2'] = 0,
			['helmet_1'] = 149,  ['helmet_2'] = 0,
			['chain_1'] = 81,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = -1,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},

	tenu_fib = {
		male = {
			['tshirt_1'] = 60,  ['tshirt_2'] = 0,
			['torso_1'] = 195,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 11,
			['pants_1'] = 130,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = 125,  ['helmet_2'] = 18,
			['chain_1'] = 8,    ['chain_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 192,   ['torso_2'] = 1,
			['decals_1'] = 14,   ['decals_2'] = 1,
			['arms'] = 14,
			['bags_1'] = 52,    ['bags_2']  = 0,
			['pants_1'] = 136,   ['pants_2'] = 0,
			['shoes_1'] = 50,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 33,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = -1,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	
	tenu_heli = {
		male = {
			['tshirt_1'] = 22,  ['tshirt_2'] = 1,
			['torso_1'] = 60,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 76,
			['pants_1'] = 35,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = 117,  ['helmet_2'] = 1,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 49,  ['tshirt_2'] = 0,
			['torso_1'] = 99,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 14,
			['pants_1'] = 38,   ['pants_2'] = 2,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['helmet_1'] = 19,  ['helmet_2'] = 0,
			['glasses_1'] = -1,  ['glasses_2'] = 0,
			['chain_1'] = 33,    ['chain_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 5,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},


	
	bullet_wear = {
		male = {
			['bproof_1'] = 10,  ['bproof_2'] = 0
		},
		female = {
			['bproof_1'] = 10,  ['bproof_2'] = 0
		}
	}


}

