Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = false
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = true -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = true
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.FireStations = {

  LSFD = {
    Blip = {
      Pos = { x = 1200.44, y = -1464.1, z = 34.88 },
      Sprite  = 436,
      Display = 4,
      Scale   = 0.8,
      Colour  = 1,
    },

    AuthorizedWeapons = {
      {name = 'WEAPON_FLASHLIGHT',       price = 80},
      {name = 'WEAPON_FIREEXTINGUISHER', price = 120},
	    {name = 'WEAPON_FLARE',            price = 60 },
      {name = 'WEAPON_FLAREGUN',         price = 60},
    },

    AuthorizedVehicles = {
    { name = 'ambulance', label = 'Ambulance' },
	  { name = 'firetruk', label = 'Camion' },
    },

    Cloakrooms = {
      { x = 1216.18, y = -1474.66, z = 34.07 }
    },

    Armories = {
      { x = 1168.61, y = -1480.67, z = 34.07 },
    },

    Vehicles = {
      {
        Spawner    = { x = 1207.83, y = -1496.55, z = 33.84 },
        SpawnPoint = { x = 1200.87, y = -1494.76, z = 33.69 },
        Heading    = 359.58
      }
    },

    Helicopters = {
      {
        Spawner    = {x = 1219.58, y = -1509.74, z = 33.84},
        SpawnPoint = {x = 1218.40, y = -1519.99, z = 33.70},
        Heading    = 70.19
      }
    },

    VehicleDeleters = {
      { x = 1196.72, y = -1480.27, z = 33.85 },
    },

    BossActions = {
      { x = 1168.07, y = -1467.30, z = 34.07 },
    }
  }
}