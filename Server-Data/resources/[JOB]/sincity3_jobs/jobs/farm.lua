farm = {

	BlipInfos = {
		Sprite = 85,
		Color = 27
	},
	
	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'rumpo2',
			Trailer = '',
			HasCaution = true
		}
	},

	Zones = {

		Cloakroom = {
			Pos   = { x = 2592.51,  y = 4668.66,  z = 33.08 },
			Size  = { x = 1.5, y = 1.5, z = 0.2 },
			Color = { r = 255, g = 255, b = 255 },
			Marker  = 1,
			Blip = true,
			Interim = true,
			Name = "Vestiaire",
			Type = 'cloakroom',
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Vestiaire'
		},
--[[
	        Coffre = {
			Pos   = { x = 0.0,  y = 0.0,  z = 0.0 },
			Size  = { x = 1.5, y = 1.5, z = 0.2 },
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
			Size = {x = 1.5, y = 1.5, z = 0.2},
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
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = -1,
			Blip = false,
			Interim = true,
			Name = 'service_vh',
			Type = 'vehspawnpt',
			Spawner = 1,
			Heading = 66.40
		},

		VehicleDeletePoint = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 5.0, y = 5.0, z = 1.0},
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
--]]
		Ble = {
			Pos = {x = 2622.06, y = 4618.80, z = 33.45},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Récolte de blé",
			Type = 'harvest',
			Item = {
				{
					name = "Blé",
					db_name = 'ble',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour recolter du blé"
		},

		PatateFarm = {
			Pos = {x = 2223.6,  y = 5062.2,  z = 46.24},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Récolte de Patate",
			Type = 'harvest',
			Item = {
				{
					name = "patate",
					db_name = 'patate',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour recolter des patates"
		},
		
		Tomato = {
			Pos = {x = 1928.35, y = 5011.63, z = 43.00},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Récolte de tomate",
			Type = 'harvest',
			Item = {
				{
					name = "Tomate",
					db_name = 'tomate',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour recolter de la tomate"
		},
		
		Salad = {
			Pos = {x = 2938.25, y = 4691.32, z = 50.15},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Récolte de salade",
			Type = 'harvest',
			Item = {
				{
					name = "Salade",
					db_name = 'salade',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour recolter de la salade"
		},

		Tomatomiller = {
			Pos = {x = 827.63, y = 2191.27, z = 51.35},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Name = "Production de Ketchup",
			Interim = false,
			Type = 'work',
			Item = {
				{
					name = "Dose de Ketchup",
					db_name = 'doseketchup',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'tomate',
					requires_name = "Tomate",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour faire du ketchup"
		},
		
		Wheatmiller = {
			Pos = {x = 806.36, y = 2181.55, z = 51.35},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Production de Farine",
			Type = 'work',
			Item = {
				{
					name = "Farine",
					db_name = 'farine',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'ble',
					requires_name = "Blé",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour faire de la farine"
		},

		Baker = {
			Pos = {x = -311.48,  y = 6201.64, z = 30.60},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Production de Pain",
			Type = 'work',
			Item = {
				{
					name = "Pain",
					db_name = 'pain',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = "farine",
					requires_name = 'Farine',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour faire du pain"
		},

		Deliverypotato = {
			Pos = {x = -700.00, y = -2225.00, z = 5.00},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.20},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Dépot de patate",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = "delivery",
					time = 1000,
					remove = 1,
					max = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 1,
					requires = 'patate',
					requires_name = "Patate",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre vos patates"
		},
--[[		
		Deliverysalad = {
			Pos = {x = -710.00, y = -2224.00, z = 5.00},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Dépot de salade",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = "delivery",
					time = 1000,
					remove = 1,
					max = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 5,
					requires = 'salade',
					requires_name = "Salade",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre vos salades"
		},
		
		Deliverytomate = {
			Pos = {x = -720.00, y = -2225.00, z = 5.00},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Dépot de tomate",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = "delivery",
					time = 1000,
					remove = 1,
					max = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 5,
					requires = 'tomate',
					requires_name = "Tomate",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre vos tomates"
		},
]]		
	},
}

