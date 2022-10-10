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

Config.NameJob = "casinobar"
Config.NameEntreprise = "society_casinobar"
Config.NameStock = "casinobar Stock"
Config.NameBlip = "casinobar"
Config.Plate = "CASINOBA" -- Mettre 8 caractères !!!!

Config.AuthorizedVehicles = {
	Shared = {
		{ model = 'speedo', label = 'Speedo' },
		{ model = 'rumpo3', label = 'Rumpo' },
		{ model = 'komoda', label = 'Komoda' }

	},
}

Config.Zones = {

	Recolte = {
		Pos   = {x = 1228.20, y = -3230.31, z = 5.03},
		Size  = {x = 2.5, y = 2.5, z = 0.2},
		Color = {r = 255, g = 255, b = 255},
		NomItem = "reglisse",
		Name  = "Récupération de reglisse",
		Message = "Appuyez sur ~INPUT_CONTEXT~ pour récuperer du ~y~reglisse~s~",
		MessageAction = "Vous êtes en train de récuperer du ~y~reglisse~s~",
		MessageTuPeuxPu = "Vous ne pouvez pas récuperer de ~y~reglisses~s~ supplémentaires",
		TimerItem = 1000,
		MaxInventoryItem = 50,
		NumberItem = 1,
		Type  = 1
	},
	Traitement = {
		Pos   = {x = 189.56, y = 2788.25, z = 44.60},
		Size  = {x = 2.5, y = 2.5, z = 0.2},
		Color = {r = 255, g = 255, b = 255},
		NomItem = "boutpastis",
		Name  = "Récupération de ~y~bouteilles de pastis~s~",
		Message = "Appuyez sur ~INPUT_CONTEXT~ pour récuperer des ~y~bouteilles de pastis~s~",
		MessageAction = "Vous êtes en train de récuperer des ~y~bouteilles de pastis~s~",
		MessageTuPeuxPu = "Vous ne pouvez pas récuperer de ~y~bouteilles de pastis~s~ supplémentaires",
		TimerItem = 1000,
		MaxInventoryItem = 50,
		NumberItem = 1,
		NumberDelItem = 1,
		Type  = 1
	},
	Vente = {
		Pos   = {x = -700.00, y = -2225.00, z = 4.80},
		Size  = {x = 2.5, y = 2.5, z = 0.2},
		Color = {r = 255, g = 255, b = 255},
		Name  = "Vente de caisse de pastis",
		Message = "Appuyez sur ~INPUT_CONTEXT~ pour vendre les ~y~bouteilles de pastis~s~",
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
		Pos   = {x = 968.65, y = 67.07, z = 111.55},
		Size  = {x = 1.5, y = 1.5, z = 0.2},
		Color = {r = 255, g = 255, b = 255},
		Type  = 1
	},
	]]
	StockMenu = {
		Pos   = {x = 959.26, y = 71.99, z = 111.55},
		Size  = {x = 1.5, y = 1.5, z = 0.2},
		Color = {r = 255, g = 255, b = 255},
		Type  = 1
	},
	
	Vehicles = {
		Type = -1,
		{
			Spawner    = { x = 935.28, y = -7.22, z = 78.76},
			SpawnPoint = { x = 934.28, y = -1.45, z = 78.76},
			Heading    = 151.28,
		}
	},
	
	CloakRoom = {
		Pos   = { x = 964.75, y = 69.39, z = 111.55},
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
			['torso_1'] = 408,   ['torso_2'] = 3,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 37,
			['pants_1'] = 20,   ['pants_2'] = 0,
			['shoes_1'] = 9,   ['shoes_2'] = 0,
			['chain_1'] = 0,  ['chain_2'] = 0
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
Config.NomItemToUse = 'boutpastis'
Config.NomItemGive = 'pastis'
Config.NombreItemGive = 10 ]]