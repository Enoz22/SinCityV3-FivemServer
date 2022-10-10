Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 3
Config.MarkerSize                 = { x = 1.0, y = 2.0, z = 1.0 }
Config.MarkerColor                = { r = 239, g = 224, b = 0 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = false -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = true
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.saladoStations = {

  salado = {

    Blip = {
      Pos     = {},
      Sprite  = -1,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
	  
    },

	  AuthorizedVehicles = {
		  { name = 'tornado',    label = 'Tornado' },
		  { name = 'buccaneer',  label = 'Buccaneer' },
		  { name = 'peyote',     label = 'Peyote' },
		  { name = 'speedo',     label = 'Cammionette' },
	  },

    Cloakrooms = {
      { x = 16.35, y = -1413.12, z = 29.35 }, -- fait
    },

    Armories = {
      { x = 20.76, y = -1413.81, z = 29.37 }, -- fait
    },

    Vehicles = {
      {
        Spawner    = { x = 116.46, y = -1996.95, z = 18.30 }, -- fait
        SpawnPoint = { x = 117.30, y = -1994.40, z = 18.38 }, -- fait
        Heading    = 253.92, -- fait
      }
    },

    VehicleDeleters = {
      { x = 117.30, y = -1994.40, z = 18.38 }, -- fait
    -- { x = -1152.642, y = -1564.809, z = 4.182 }, -- fait
    },

    BossActions = {
      { x = 18.39, y = -1413.53, z = 29.36 } -- fait
    },

  },

}