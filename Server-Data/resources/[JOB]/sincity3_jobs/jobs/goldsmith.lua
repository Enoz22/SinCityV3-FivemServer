goldsmith = {

	BlipInfos = {
		Sprite = 85,
		Color = 46
	},

	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'rumpo5',
			Trailer = '',
			HasCaution = true
		}
	},

	Zones = {

		CloakRoom = {
			Pos = {x = 1078.56,  y = -1973.28,  z = 30.70},
			Size = {x = 1.0, y = 1.0, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "Vestiaire",
			Type = 'cloakroom',
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Vestiaire',
			GPS = {x = 1078.56,  y = -1973.28,  z = 30.70}
		},
--[[
		Coffre = {
			Pos   = { x = 0.0,  y = 0.0,  z = 0.0 },
			Size  = { x = 1.0, y = 1.0, z = 0.2 },
			Color = { r = 255, g = 255, b = 255 },
			Marker  = 1,
			Blip = false,
			Interim = false,
			Name = "Coffre",
			Type = 'coffre',
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Coffre'
		},

		VehicleSpawner = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 1.0, y = 1.0, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = false,
			Interim = false,
			Name = "Vehicule",
			Type = 'vehspawner',
			Spawner = 1,
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Garage',
			Caution = 2000
		},

		VehicleSpawnPoint = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 5.0, y = 5.0, z = 1.0},
			Marker = -1,
			Blip = false,
			Interim = false,
			Name = 'service_vh',
			Type = 'vehspawnpt',
			Spawner = 1,
			Heading = 264.40
		},

		VehicleDeletePoint = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 1.0, y = 1.0, z = 0.2},
			Color = {r = 30, g = 144, b = 255},
			Marker = 23,
			Blip = false,
			Interim = false,
			Name = 'return_vh',
			Type = 'vehdelete',
			Hint = 'return_vh_button',
			Spawner = 1,
			Caution = 2000,
			GPS = 0,
			Teleport = 0
		},
--]]
		CollectRiviere = {
			Pos = {x = -183.08,  y = 3040.6,  z = 18.30},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "Récolte de pépite",
			Type = 'harvest',
			Minigame = false,
			Item = {
				{
					name = "Pépite d'or",
					db_name = 'pepiteor',
					time = 2000,
					max = 50,
					add = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 10000
				},
				{
					name = "Pierre précieuse",
					db_name = 'pierrepp',
					time = 2000,
					max = 50,
					add = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 2000
				}
			},
		        Hint = "Appuyez sur ~INPUT_CONTEXT~ pour recolter des pepites",
				GPS = {x = -183.08,  y = 3040.6,  z = 18.50}
		},

		Fonderie = {
			Pos = {x = 1108.76,  y = -2007.16,  z = 30.10},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "Fonderie",
			Type = 'work',
			Item = {
				{
					name = "Florin d'or",
					db_name = 'florindor',
					time = 2000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'pepiteor',
					requires_name = "Pepite d'or",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour fondre de l'or",
			GPS = {x = 1108.76,  y = -2007.16,  z = 30.10}
		},
		
		Joaillerie = {
			Pos = {x = -619.84,  y = -228.68,  z = 37.20},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "Joaillerie",
			Type = 'work',
			Item = {
				{
					name = "Bijou",
					db_name = 'bijou',
					time = 5000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'florindor',
					requires_name = "Florin d'or",
					remove2 = 1,
					requires2 = 'barrefer',
					requires2_name = "Barre de fer",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour produire un bijou",
			GPS = {x = -619.84,  y = -228.68,  z = 37.20}
		},
		
		Deliveryor = {
			Pos = {x = -700.00, y = -2225.00, z = 4.80},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "Dépôt de florin d'or",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = "delivery",
					time = 1000,
					remove = 1,
					max = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 6,
					requires = 'florindor',
					requires_name = "Florin d'or",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre les lingots d'or",
			GPS = {x = -700.00, y = -2225.00, z = 4.80}
		},
		
		Deliverypp = {
			Pos = {x = -725.00, y = -2225.00, z = 4.80},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "Dépot de pierres précieuses",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = "delivery",
					time = 1000,
					remove = 1,
					max = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 10,
					requires = 'pierrepp',
					requires_name = "Pierre Precieuse",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre les pierres precieuses",
			GPS = {x = -725.00, y = -2225.00, z = 4.80}
		},
	},		
}
