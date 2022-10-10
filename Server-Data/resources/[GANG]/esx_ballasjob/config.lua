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

Config.ballasStations = {

  ballas = {

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
      { x = 102.8,  y = -1962.52,  z = 20.84}, -- fait
    },

    Armories = {
      { x = 113.2,  y = -1960.04,  z = 20.9 }, -- fait
    },

    Vehicles = {
      {
        Spawner    = { x = 91.2,  y = -1965.0,  z = 20.76 }, -- fait
        SpawnPoint = { x = 91.2,  y = -1965.0,  z = 20.76 }, -- fait
        Heading    = 318.20, -- fait
      }
    },

    VehicleDeleters = {
      { x = 87.04,  y = -1969.92,  z = 20.76 }, -- fait
    },

    BossActions = {
      { x = 106.92,  y = -1974.24,  z = 20.96 } -- fait
    },

  },

}