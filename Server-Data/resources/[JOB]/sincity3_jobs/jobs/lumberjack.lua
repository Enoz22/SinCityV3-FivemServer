lumberjack = {

	BlipInfos = {
		Sprite = 85,
		Color = 27
	},

	PrivateName ="Bucheron",
	
	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'phantom',
			Trailer = 'trailers',
			HasCaution = true
		}

	},

	Zones = {

		CloakRoom = {
			Pos = {x = -553.12,  y = 5348.64,  z = 73.75},
			Size = {x = 1.5, y = 1.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Vestiaire",
			Type = 'cloakroom',
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Vestiaire'
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
			Interim = true,
			Name = "Vehicule",
			Type = 'vehspawner',
			Spawner = 1,
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Garage',
			Caution = 2000
		},

		VehicleSpawnPoint = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 1.0, y = 1.0, z = 0.2},
			Marker = -1,
			Blip = false,
			Interim = true,
			Name = 'service_vh',
			Type = 'vehspawnpt',
			Spawner = 1,
			Heading = 180.85
		},

		VehicleDeletePoint = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = false,
			Interim = true,
			Name = 'return_vh',
			Type = 'vehdelete',
			Hint = 'return_vh_button',
			Spawner = 1,
			Caution = 2000,
			GPS = 0,
			Teleport = 0
		},
]]
		Wood = {
			Pos = {x = -531.2,  y = 5375.8, z = 69.50},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'Récolte de Bois',
			Type = 'work',
			Item = {
				{
					name = 'Bois',
					db_name = 'bois',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 10000
				}
			},
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour prendre du bois'
		},

		CuttedWood = {
			Pos = {x = -586.3, y = 5320.15,  z = 69.20},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'Papier',
			Type = 'work',
			Item = {
				{
					name = 'Papier',
					db_name = 'papier',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'bois',
					requires_name = 'Bois',
					drop = 10000
				}
			},
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour faire du papier'
		},

		Planks = {
			Pos = {x = -585.96,  y = 5343.56,  z = 69.2},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'Feuille',
			Interim = true,
			Type = 'work',
			Item = {
				{
					name = 'Papier à rouler',
					db_name = 'rolpaper',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'papier',
					requires_name = 'Papier',
					drop = 10000
				}
			},
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour faire des feuilles à rouler'
		},

		Delivery = {
			Pos = {x = -700.00, y = -2225.00, z = 5.00},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'livraison de papier',
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = 'delivery',
					time = 1000,
					remove = 1,
					max = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 7,
					requires = 'rolpaper',
					requires_name = 'Papier a rouler',
					drop = 10000
				}
			},
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour vendre du papier à rouler'
		},
--[[		
		Delivery2 = {
			Pos = {x = -700.00, y = -2225.00, z = 5.00},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'delivery_point',
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = 'delivery',
					time = 1000,
					remove = 1,
					max = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 100,
					requires = 'paper',
					requires_name = "Papiers",
					drop = 10000
				}
			},
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour vendre du papier'
		},
]]
	},
}