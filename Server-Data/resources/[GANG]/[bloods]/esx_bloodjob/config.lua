Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 3
Config.MarkerSize                 = { x = 1.0, y = 2.0, z = 1.0 }
Config.MarkerColor                = { r = 255, g = 0, b = 0 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = true
Config.EnableLicenses             = true
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.bloodStations = {

  blood = {

    AuthorizedWeapons = {
      --{ name = 'WEAPON_MICROSMG',     price = 200000 },
      --{ name = 'WEAPON_COMBATPISTOL',     price = 100000 },
      --{ name = 'WEAPON_ASSAULTSMG',       price = 300000 },
      --{ name = 'WEAPON_ASSAULTRIFLE',     price = 350000 },
    },

	  AuthorizedVehicles = {
		  { name = 'baller5',    label = 'Baller' },
		  { name = 'rs7',    label = 'Discret' },
		  { name = 'nightshark',  label = 'Nightshark' },		  
		  { name = 'rumpo3',     label = 'Cammionette' },
		  { name = 'savage',     label = 'Helicoptère' },
	  },

    Cloakrooms = {
      { x = -1568.83, y = -405.24, z = 48.26 }, -- fait
    },

    Armories = {
      { x = -1556.9, y = -374.98, z = 48.05 }, -- fait
    },

    Vehicles = {
      {
        Spawner    = { x = -1567.03, y = -394.99, z = 41.98 }, -- fait
        SpawnPoint = { x = -1567.4, y = -388.85, z = 40.98 }, -- fait
        Heading    = 214.133666, -- fait
      }
    },

    VehicleDeleters = {
      { x = -1567.4, y = -388.85, z = 41.98 }, -- fait
      --{ x = -1152.642, y = -1564.809, z = 4.182 }, -- fait
    },

    BossActions = {
      { x = -1561.43, y = -380.9, z = 48.05 } -- fait
    },

  },

}