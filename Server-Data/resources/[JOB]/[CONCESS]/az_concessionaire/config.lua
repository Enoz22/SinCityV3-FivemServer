Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerColor                = { r = 120, g = 120, b = 240 }
Config.EnablePlayerManagement     = false -- enables the actual car dealer job. You'll need esx_addonaccount, esx_billing and esx_society
Config.EnableOwnedVehicles        = true
Config.EnableSocietyOwnedVehicles = true -- use with EnablePlayerManagement disabled, or else it wont have any effects
Config.ResellPercentage           = 50

Config.Locale                     = 'fr'

Config.LicenseEnable = false -- require people to own drivers license when buying vehicles? Only applies if EnablePlayerManagement is disabled. Requires esx_license

-- looks like this: 'LLL NNN'
-- The maximum plate length is 8 chars (including spaces & symbols), don't go past it!
Config.PlateLetters  = 3
Config.PlateNumbers  = 3
Config.PlateUseSpace = true

Config.Zones = {

	ShopEntering = {
		Pos   = vector3(-1242.24, -3393.15, 12.94),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = 1
	},

	ShopInside = {
		Pos     = vector3(-1276.73, -3389.84, 13.94),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 328.0,
		Type    = -1
	},

	ShopOutside = {
		Pos     = vector3(-1276.73, -3389.84, 13.94),
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Heading = 328.0,
		Type    = -1
	},

	BossActions = {
		Pos   = vector3(0.0, 0.0, 0.0),
		Size  = {x = 1.5, y = 1.5, z = 1.0},
		Type  = -1
	},

	GiveBackVehicle = {
		Pos   = vector3(-37.6, -1088.17, 25.42),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = (Config.EnablePlayerManagement and 1 or -1)
	},

	ResellVehicle = {
		Pos   = vector3(-0.0, -0.1, 0.0),
		Size  = {x = 3.0, y = 3.0, z = 1.0},
		Type  = 1
	}

}
