Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = true -- turn this on if you want custom peds
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = false -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

Config.MaxInService               = 200
Config.Locale                     = 'fr'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(-439.12, 6020.90, 31.490),
			Sprite  = 58,
			Display = 4,
			Scale   = 1.0,
			Colour  = 46
		},

		Cloakrooms = {
			vector3(-453.95,6012.72,31.72)
		},

		Armories = {
			vector3(-436.44,5998.12,31.50)
		},
--[[
		Vehicles = {
			{
				Spawner = vector3(0.0, 0.0, 0.0),
				InsideShop = vector3(-363.0073, 6072.501, 30.4982),
				SpawnPoints = {
					--{ coords = vector3(-470.4976, 6033.468, 30.3405), heading = 220.0, radius = 6.0 },
					--{ coords = vector3(-473.2858, 6028.52, 30.3405), heading = 220.0, radius = 6.0 },
					--{ coords = vector3(-477.341, 6026.008, 30.3405), heading = 220.0, radius = 6.0 },
					{ coords = vector3(0.0, 0.0, 0.0), heading = 256.0, radius = 6.0 }
				}
			},

			{
				Spawner = vector3(0.0, 0.0, 0.0),
				InsideShop = vector3(-363.0073, 6072.501, 30.4982),
				SpawnPoints = {
					--{ coords = vector3(475.9, -1021.6, 28.0), heading = 276.1, radius = 6.0 },
					{ coords = vector3(0.0, 0.0, 0.0), heading = 302.5, radius = 6.0 }
				}
			}
		},
]]
		Helicopters = {
			{
				Spawner = vector3(-475.56, 5988.23, 31.34),
				InsideShop = vector3(-363.0073, 6072.501, 30.4982),
				SpawnPoints = {
					{ coords = vector3(0.0, 0.0, 0.0), heading = 92.6, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(0.0, 0.0, 0.0)
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
		--{ model = 'policeb', label = 'Moto', price = 450 }
	},

	recruit = {
		--{ model = 'police', label = 'Cruiser', price = 650 }
	},

	officer = {
		--{ model = 'police', label = 'Cruiser', price = 650 },
		--{ model = 'police2', label = 'Buffalo', price = 950 },
		--{ model = 'police3', label = 'Interceptor', price = 1150 }
	},

	sergeant = {
		--{ model = 'police', label = 'Cruiser', price = 650 },
		--{ model = 'police2', label = 'Buffalo', price = 950 },
		--{ model = 'police3', label = 'Interceptor', price = 1150 }
	},

	intendent = {
		--{ model = 'police', label = 'Cruiser', price = 650 },
		--{ model = 'police2', label = 'Buffalo', price = 950 },
		--{ model = 'police3', label = 'Interceptor', price = 1150 }	
	},

	lieutenant = {
		--{ model = 'police', label = 'Cruiser', price = 650 },
		--{ model = 'police2', label = 'Buffalo', price = 950 },
		--{ model = 'police3', label = 'Interceptor', price = 1150 }
	},

	chef = {
		--{ model = 'police', label = 'Cruiser', price = 650 },
		--{ model = 'police2', label = 'Buffalo', price = 950 },
		--{ model = 'police3', label = 'Interceptor', price = 1150 }
	},

	boss = {
		--{ model = 'police', label = 'Cruiser', price = 650 },
		--{ model = 'police2', label = 'Buffalo', price = 950 },
		--{ model = 'police3', label = 'Interceptor', price = 1150 }
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


Config.AuthorizedVehicles = {
	Shared = {
		--{ model = 'pranger', label = 'Sheriff SUV 1 BLANC', price = 1 },
		--{ model = 'sheriff', label = 'Sheriff Victoria', price = 1 },
		--{ model = 'sheriff2', label = 'Sheriff SUV 2 Noir', price = 1 },
		--{ model = 'policeb', label = 'Sheriff moto', price = 1 },
		--{ model = 'fbi', label = 'Banaliser FBI', price = 1 },
		--{ model = 'fbi2', label = 'Banaliser FBI 2 SUV', price = 1 },
		--{ model = 'riot2', label = 'Véhicule anti émeute', price = 1 }
	},

	recruit = {

	},

	officer = {
		--{ model = 'pranger', label = 'Sheriff SUV 1 BLANC', price = 1 },
		--{ model = 'sheriff', label = 'Sheriff Victoria', price = 1 },
		--{ model = 'sheriff2', label = 'Sheriff SUV 2 Noir', price = 1 },
		--{ model = 'policeb', label = 'Sheriff moto', price = 1 },
		--{ model = 'fbi', label = 'Banaliser FBI', price = 1 },
		--{ model = 'fbi2', label = 'Banaliser FBI 2 SUV', price = 1 },
		--{ model = 'riot2', label = 'Véhicule anti émeute', price = 1 }
	},

	sergeant = {
		--{ model = 'pranger', label = 'Sheriff SUV 1 BLANC', price = 1 },
		--{ model = 'sheriff', label = 'Sheriff Victoria', price = 1 },
		--{ model = 'sheriff2', label = 'Sheriff SUV 2 Noir', price = 1 },
		--{ model = 'policeb', label = 'Sheriff moto', price = 1 },
		--{ model = 'fbi', label = 'Banaliser FBI', price = 1 },
		--{ model = 'fbi2', label = 'Banaliser FBI 2 SUV', price = 1 },
		--{ model = 'riot2', label = 'Véhicule anti émeute', price = 1 }
	},

	intendent = {

	},

	lieutenant = {
		--{ model = 'pranger', label = 'Sheriff SUV 1 BLANC', price = 1 },
		--{ model = 'sheriff', label = 'Sheriff Victoria', price = 1 },
		--{ model = 'sheriff2', label = 'Sheriff SUV 2 Noir', price = 1 },
		--{ model = 'policeb', label = 'Sheriff moto', price = 1 },
		--{ model = 'fbi', label = 'Banaliser FBI', price = 1 },
		--{ model = 'fbi2', label = 'Banaliser FBI 2 SUV', price = 1 },
		--{ model = 'riot2', label = 'Véhicule anti émeute', price = 1 }
	},

	chef = {
		--{ model = 'pranger', label = 'Sheriff SUV 1 BLANC', price = 1 },
		--{ model = 'sheriff', label = 'Sheriff Victoria', price = 1 },
		--{ model = 'sheriff2', label = 'Sheriff SUV 2 Noir', price = 1 },
		--{ model = 'policeb', label = 'Sheriff moto', price = 1 },
		--{ model = 'fbi', label = 'Banaliser FBI', price = 1 },
		--{ model = 'fbi2', label = 'Banaliser FBI 2 SUV', price = 1 },
		--{ model = 'riot2', label = 'Véhicule anti émeute', price = 1 }
	},

	boss = {
		--{ model = 'sheriffvan', label = 'Sheriff Van', price = 50000 },
		--{ model = 'pranger', label = 'Sheriff SUV 1 BLANC', price = 1 },
		--{ model = 'sheriff', label = 'Sheriff Victoria', price = 1 },
		--{ model = 'sheriff2', label = 'Sheriff SUV 2 Noir', price = 1 },
		--{ model = 'policeb', label = 'Sheriff moto', price = 1 },
		--{ model = 'fbi', label = 'Banaliser FBI', price = 1 },
		--{ model = 'fbi2', label = 'Banaliser FBI 2 SUV', price = 1 },
		--{ model = 'riot2', label = 'Véhicule anti émeute', price = 1 }

	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
    tenu_recrue = {
		male = {
			['tshirt_1'] = 46,  ['tshirt_2'] = 0,
			['torso_1'] = 99,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 30,
			['pants_1'] = 49,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 1,    ['chain_2'] = 0,
			['mask_1'] = 0,  	['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 32,  ['tshirt_2'] = 0,
			['torso_1'] = 85,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['arms'] = 31,
			['pants_1'] = 51,   ['pants_2'] = 0,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	tenu_stage = {
		male = {
			['tshirt_1'] = 46,  ['tshirt_2'] = 0,
			['torso_1'] = 99,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['arms'] = 30,
			['pants_1'] = 49,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 1,    ['chain_2'] = 0,
			['mask_1'] = 0,  	['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 32,  ['tshirt_2'] = 0,
			['torso_1'] = 85,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['arms'] = 31,
			['pants_1'] = 51,   ['pants_2'] = 0,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},	
	tenu_mary = {
		male = {
			male = {
			['tshirt_1'] = 46,  ['tshirt_2'] = 0,
			['torso_1'] = 99,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['arms'] = 30,
			['pants_1'] = 49,   ['pants_2'] = 0,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 1,    ['chain_2'] = 0,
			['mask_1'] = 0,  	['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 32,  ['tshirt_2'] = 0,
			['torso_1'] = 85,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['arms'] = 31,
			['pants_1'] = 51,   ['pants_2'] = 0,
			['shoes_1'] = 52,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	tenu_heli = {
		male = {
			['tshirt_1'] = 40,  ['tshirt_2'] = 0,
			['torso_1'] = 99,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['arms'] = 0,
			['pants_1'] = 123,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 51,  ['tshirt_2'] = 0,
			['torso_1'] = 85,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 0,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['pants_1'] = 148,   ['pants_2'] = 5,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = -1,  	['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		}
	},
	tenu_fib = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 205,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 82,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['pants_1'] = 25,   ['pants_2'] = 2,
			['shoes_1'] = 54,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 8,  ['tshirt_2'] = 0,
			['torso_1'] = 202,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 88,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['pants_1'] = 41,   ['pants_2'] = 0,
			['shoes_1'] = 55,   ['shoes_2'] = 0,
			['glasses_1'] = -1,  ['glasses_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},
	tenu_swatgr = {
		male = {
			['tshirt_1'] = 134,  ['tshirt_2'] = 5,
			['torso_1'] = 144,   ['torso_2'] = 3,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 179,
			['pants_1'] = 87,   ['pants_2'] = 7,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['shoes_1'] = 24,   ['shoes_2'] = 0,
			['glasses_1'] = 0,  ['glasses_2'] = 0,
			['helmet_1'] = 115,  ['helmet_2'] = 1,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = 0,  ['mask_2'] = 0,
			['bproof_1'] = 0,  ['bproof_2'] = 0,
			['ears_1'] = 0,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 162,  ['tshirt_2'] = 5,
			['torso_1'] = 136,   ['torso_2'] = 3,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 215,
			['bags_1'] = 0,    ['bags_2']  = 0,
			['pants_1'] = 90,   ['pants_2'] = 7,
			['shoes_1'] = 24,   ['shoes_2'] = 0,
			['helmet_1'] = 114,  ['helmet_2'] = 1,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['mask_1'] = -1,  ['mask_2'] = 0,
			['bproof_1'] = -1,  ['bproof_2'] = 0,
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
}