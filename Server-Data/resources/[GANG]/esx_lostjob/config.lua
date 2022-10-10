Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.2 }
Config.MarkerColor                = { r = 255, g = 255, b = 255 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = true
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.lostStations = {

  lost = {

    Blip = {
      Pos     = {},
      Sprite  = -1,
      Display = 4,
      Scale   = 0.7,
      Colour  = 29,
    },

    AuthorizedWeapons = {
     -- { name = 'WEAPON_COMBATPISTOL',     price = 4000 },
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
		  { name = 'BF400',    label = 'MotoCross' },
		  { name = 'bati',  label = 'Moto de Course' },
		  { name = 'chimera',     label = 'Moto 3 Roue' },
		  { name = 'speedo',     label = 'Cammionette' },
	  },

    Cloakrooms = {
      { x = 105.44,  y = 3599.76,  z = 39.72 }, -- fait
    },

    Armories = {
      { x = 98.72,  y = 3596.4,  z = 39.72 }, -- fait
    },

    Vehicles = {
      {
        Spawner    = { x = 105.6,  y = 3607.88,  z = 39.28 }, -- fait
        SpawnPoint = { x = 107.72,  y = 3609.64,  z = 39.28 }, -- fait
        Heading    = 193.40, -- fait
      }
    },

    VehicleDeleters = {
      { x = 116.52,  y = 3608.36,  z = 39.28 }, -- fait
      -- { x = -1152.642, y = -1564.809, z = 4.182 }, -- fait
    },

    BossActions = {
      { x = 101.72,  y = 3614.72,  z = 39.92 } -- fait
    },

  },

}