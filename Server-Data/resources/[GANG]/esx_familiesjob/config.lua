Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 41
Config.MarkerSize                 = { x = 1.0, y = 2.0, z = 1.0 }
Config.MarkerColor                = { r = 155, g = 124, b = 57 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = true
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.familiesStations = {

  families = {

    Blip = {
      Pos     = {},
      Sprite  = -1,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      --{ name = 'WEAPON_COMBATPISTOL',     price = 4000 },
      --{ name = 'WEAPON_ASSAULTSMG',       price = 15000 },
      --{ name = 'WEAPON_ASSAULTRIFLE',     price = 25000 },
      -- { name = 'WEAPON_PUMPSHOTGUN',      price = 9000 },
      -- { name = 'WEAPON_STUNGUN',          price = 250 },
      --{ name = 'WEAPON_FLASHLIGHT',       price = 50 },
      --{ name = 'WEAPON_FIREEXTINGUISHER', price = 50 },
      -- { name = 'WEAPON_FLAREGUN',         price = 3000 },
      --{ name = 'GADGET_PARACHUTE',        price = 2000 },
      -- { name = 'WEAPON_SNIPERRIFLE',      price = 50000 },
      -- { name = 'WEAPON_FIREWORK',         price = 5000 },
      -- { name = 'WEAPON_BZGAS',            price = 8000 },
      -- { name = 'WEAPON_SMOKEGRENADE',     price = 8000 },
      --{ name = 'WEAPON_APPISTOL',         price = 12000 },
      --{ name = 'WEAPON_CARBINERIFLE',     price = 25000 },
      -- { name = 'WEAPON_HEAVYSNIPER',      price = 100000 },
      --{ name = 'WEAPON_FLARE',            price = 8000 },
      --{ name = 'WEAPON_SWITCHBLADE',      price = 500 },
	  --{ name = 'WEAPON_REVOLVER',         price = 6000 },
	  --{ name = 'WEAPON_POOLCUE',          price = 100 },
	  -- { name = 'WEAPON_GUSENBERG',        price = 17500 },
	  
    },

	  AuthorizedVehicles = {
		  { name = 'tornado',    label = 'Tornado' },
		  { name = 'buccaneer',  label = 'Buccaneer' },
		  { name = 'peyote',     label = 'Peyote' },
		  { name = 'speedo',     label = 'Cammionette' },
	},

    Cloakrooms = {
      { x = 359.72,  y = -2065.72,  z = 21.48}, -- fait
    },

    Armories = {
      { x = 342.16,  y = -2056.0,  z = 21.12 }, -- fait
    },

    Vehicles = {
      {
        Spawner    = { x = 317.28,  y = -2021.56,  z = 20.6 }, -- fait
        SpawnPoint = { x = 317.28,  y = -2021.56,  z = 20.6 }, -- fait
        Heading    = 49.28, -- fait
      }
    },

    VehicleDeleters = {
      { x = 327.92,  y = -2040.16,  z = 20.8 }, -- fait
    },

    BossActions = {
      { x = -135.04,  y = -1600.36,  z = 34.76 } -- fait
    },

  },

}