Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 3
Config.MarkerSize                 = { x = 1.0, y = 2.0, z = 1.0 }
Config.MarkerColor                = { r = 44, g = 20, b = 25 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = true
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.aztecasStations = {

  aztecas = {

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
      { x = -31.34, y = -1394.37, z = 33.39 }, -- fait
    },

    Armories = {
      { x = -27.47, y = -1396.80, z = 24.56 }, -- fait
    },

    Vehicles = {
      {
        Spawner    = { x = -24.08, y = -1407.78, z = 29.50 }, -- fait
        SpawnPoint = { x = -24.14, y = -1410.91, z = 29.50 }, -- fait
        Heading    = 269.56845, -- fait
      }
    },

    VehicleDeleters = {
      { x = -24.14, y = -1410.91, z = 29.50 }, -- fait
      -- { x = -1152.642, y = -1564.809, z = 4.182 }, -- fait
    },

    BossActions = {
      { x = -31.39, y = -1397.52, z = 29.50 } -- fait
    },

  },

}