Config                            = {}
Config.DrawDistance               = 100.0
Config.MaxInService               = -1
Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.Locale                     = 'fr'
Config.MarkerSize 				  = {x = 1.5, y = 1.5, z = 0.2}
Config.MarkerColor 			      = {r = 255, g = 255, b = 255}
--Config.BlipSprite = 93 -- https://docs.fivem.net/docs/game-references/blips/


-- A modifié à partir d'ici !

Config.NameJob = "yellowjack"
Config.NameEntreprise = "society_yellowjack"
Config.NameStock = "Yellow Stock"
Config.NameBlip = "Yellow"
--[[Config.Plate = "YELLOW" -- Mettre 8 caractères !!!!

Config.AuthorizedVehicles = {
	Shared = {
		{ model = 'speedo', label = 'Speedo' }
	},
}
]]
Config.Zones = {

	Recolte = {
		Pos   = {x = 1722.44, y = 4711.82, z = 41.16},
		Size  = {x = 2.5, y = 2.5, z = 0.2},
		Color = {r = 255, g = 255, b = 255},
		NomItem = "houblon",
		Name  = "Récupération de houblon",
		Message = "Appuyez sur ~INPUT_CONTEXT~ pour récuperer du ~y~houblon~s~",
		MessageAction = "Vous êtes en train de récuperer du ~y~houblon~s~",
		MessageTuPeuxPu = "Vous ne pouvez pas récuperer de ~y~houblons~s~ supplémentaires",
		TimerItem = 1000,
		MaxInventoryItem = 50,
		NumberItem = 1,
		Type  = 1
	},
	Traitement = {
		Pos   = {x = 923.68, y = -1556.92, z = 29.78},
		Size  = {x = 2.5, y = 2.5, z = 0.2},
		Color = {r = 255, g = 255, b = 255},
		NomItem = "boutbiere",
		Name  = "Récupération de ~y~bouteilles de bières~s~",
		Message = "Appuyez sur ~INPUT_CONTEXT~ pour récuperer des ~y~bouteilles de bières~s~",
		MessageAction = "Vous êtes en train de récuperer des ~y~bouteilles de bières~s~",
		MessageTuPeuxPu = "Vous ne pouvez pas récuperer de ~y~bouteilles de bières~s~ supplémentaires",
		TimerItem = 1000,
		MaxInventoryItem = 50,
		NumberItem = 1,
		NumberDelItem = 1,
		Type  = 1
	},
	Vente = {
		Pos   = {x = -700.00, y = -2225.00, z = 4.8},
		Size  = {x = 2.5, y = 2.5, z = 0.2},
		Color = {r = 255, g = 255, b = 255},
		Name  = "Vente de caisse de bières",
		Message = "Appuyez sur ~INPUT_CONTEXT~ pour vendre les ~y~bouteilles de bières~s~",
		MessageTuPeuxPu = "Vous n'avez plus rien à vendre",
		PrixDuTruc = 6,
		TasGagne = "Vous avez gagné", -- Se forme avec le prix du truc : TasGagne + PrixDuTruc
		TimerItem = 1000,
		MinInventoryItem = 1,
		NumberDelItem = 1,
		Type  = 1
	},
	--[[
	ActionsMenu = {
		Pos   = {x = 1989.08, y = 3049.26, z = 50.50},
		Size  = {x = 1.5, y = 1.5, z = 0.2},
		Color = {r = 255, g = 255, b = 255},
		Type  = 1
	},
	]]
	StockMenu = {
		Pos   = {x = 1982.12, y = 3053.00, z = 46.21},
		Size  = {x = 1.5, y = 1.5, z = 0.2},
		Color = {r = 255, g = 255, b = 255},
		Type  = 1
	},
	--[[
	Vehicles = {
		Type = -1,
		{
			Spawner    = { x = 1999.24, y = 3037.47, z = 47.21},
			SpawnPoint = { x = 1994.31, y = 3034.75, z = 47.03},
			Heading    = 148.88,
		}
	},
	]]
	CloakRoom = {
		Pos   = { x = 2000.19, y = 3045.96, z = 46.21},
		Size  = {x = 1.5, y = 1.5, z = 0.2},
		Color = {r = 255, g = 255, b = 255},
		Type  = 1
	},
}

Config.Uniforms = {
	barman_outfit = {
		label = 'Barman',
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 40,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 40,
			['pants_1'] = 28,   ['pants_2'] = 2,
			['shoes_1'] = 38,   ['shoes_2'] = 4,
			['chain_1'] = 118,  ['chain_2'] = 0
		},
		female = {
			['tshirt_1'] = 3,   ['tshirt_2'] = 0,
			['torso_1'] = 8,    ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 5,
			['pants_1'] = 44,   ['pants_2'] = 4,
			['shoes_1'] = 0,    ['shoes_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 2
		}
	},
}
--[[
Config.ItemToUse = true
Config.NomItemToUse = 'boutbiere'
Config.NomItemGive = 'biere'
Config.NombreItemGive = 10 ]]