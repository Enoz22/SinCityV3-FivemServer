Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 =  2
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = true
Config.EnableLicenses             = true -- only turn this on if you are using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.FbiStations = {

	FBI = {

	    		-- https://wiki.fivem.net/wiki/Weapons
		AuthorizedWeapons = {
			{ name = 'WEAPON_NIGHTSTICK',       price = 200 },
			{ name = 'WEAPON_COMBATPISTOL',     price = 300 },
			{ name = 'WEAPON_ASSAULTSMG',       price = 1250 },
			{ name = 'WEAPON_ASSAULTRIFLE',     price = 1500 },
			{ name = 'WEAPON_PUMPSHOTGUN',      price = 600 },
			{ name = 'WEAPON_STUNGUN',          price = 500 },
			{ name = 'WEAPON_FLASHLIGHT',       price = 80 },
			{ name = 'WEAPON_FIREEXTINGUISHER', price = 120 },
			{ name = 'WEAPON_FLAREGUN',         price = 60 },
			{ name = 'WEAPON_STICKYBOMB',       price = 250 },
			{ name = 'GADGET_PARACHUTE',        price = 300 },
		},
 
		Cloakrooms = {
			{ x = 2522.23, y = -329.68, z = 94.09 },
		},

		Armories = {
			{ x = 2508.64, y = -333.72, z = 101.89 },
		},

		Vehicles = {
			{
				Spawner    = { x = 2539.75, y = -416.10, z = 92.99 },
				SpawnPoint = { x = 2548.57, y = -416.74, z = 92.99 },
				Heading    = 90.0,
			}
		},

		Helicopters = {
			{
				Spawner    = { x = 2514.86, y = -336.98, z = 118.02 },
				SpawnPoint = { x = 2510.52, y = -341.95, z = 118.18 },
				Heading    = 0.0,
			}
		},

		VehicleDeleters = {
			{ x = 2548.57, y = -416.74, z = 92.99 },
		},

		BossActions = {
			{ x = 2500.17, y = -402.25, z = 99.11 },
		},

	},

}

-- https://wiki.fivem.net/wiki/Vehicles
Config.AuthorizedVehicles = {
	Shared = {
		{
			model = 'fbi',
			label = 'Voiture Banalisé'
		},
		{
			model = 'fbi2',
			label = '4x4 Banalisé'
		},
	},

	recruit = {
		{
			model = 'fbi',
			label = 'Voiture Banalisé'
		},
	},

	officer = {
		{
			model = 'fbi',
			label = 'Voiture Banalisé'
		},
		{
			model = 'fbi2',
			label = '4x4 Banalisé'
		},
	},

	sergeant = {
		{
			model = 'fbi',
			label = 'Voiture FBI'
		},
		{
			model = 'fbi2',
			label = '4x4 FBI'
		},
	},

	lieutenant = {
		{
			model = 'fbi',
			label = 'Voiture Banalisé'
		},
		{
			model = 'fbi2',
			label = '4x4 Banalisé'
		},
		{
			model = 'riot',
			label = 'Fourgon Blindé'
		},
	},

	boss = {
        {
			model = 'fbi',
			label = 'Voiture Banalisé'
		},
		{
			model = 'fbi2',
			label = '4x4 Banalisé'
		},
		{
			model = 'riot',
			label = 'Fourgon Blindé'
		},
	},
}



-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
	cadet_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 26,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 11,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 20,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 125,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 160,  ['tshirt_2'] = 0,
			['torso_1'] = 43,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 3,
			['pants_1'] = 30,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},
	fbi_wear = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 26,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 11,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 20,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 125,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 160,  ['tshirt_2'] = 0,
			['torso_1'] = 43,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 3,
			['pants_1'] = 30,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},
	sergeant_wear = {
		male = {
			['tshirt_1'] = 130,  ['tshirt_2'] = 0,
			['torso_1'] = 50,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 4,
			['pants_1'] = 31,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 160,  ['tshirt_2'] = 0,
			['torso_1'] = 43,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 3,
			['pants_1'] = 30,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},
	lieutenant_wear = {
		male = {
			['tshirt_1'] = 130,  ['tshirt_2'] = 0,
			['torso_1'] = 50,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 4,
			['pants_1'] = 31,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 160,  ['tshirt_2'] = 0,
			['torso_1'] = 43,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 3,
			['pants_1'] = 30,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},
	commandant_wear = {
		male = {
			['tshirt_1'] = 130,  ['tshirt_2'] = 0,
			['torso_1'] = 50,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 4,
			['pants_1'] = 31,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 125,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 160,  ['tshirt_2'] = 0,
			['torso_1'] = 43,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 3,
			['pants_1'] = 30,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 125,    ['chain_2'] = 0,
			['ears_1'] = -1,     ['ears_2'] = 0
		}
	},

	bullet_wear = {
		male = {
			['bproof_1'] = 16,  ['bproof_2'] = 2
		},
		female = {
			['bproof_1'] = 18,  ['bproof_2'] = 2
		}
	}

}