farmcayo = {

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

		CloakRoom = {
			Pos = {x = 5075.0,  y = -4600.52,  z = 1.88},
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
			Name = _U('spawn_veh'),
			Type = 'vehspawner',
			Spawner = 1,
			Hint = _U('spawn_veh_button'),
			Caution = 2000
		},

		VehicleSpawnPoint = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 1.5, y = 1.5, z = 0.2},
			Marker = -1,
			Blip = false,
			Interim = true,
			Name = _U('service_vh'),
			Type = 'vehspawnpt',
			Spawner = 1,
			Heading = 351.40
		},

		VehicleDeletePoint = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = false,
			Interim = true,
			Name = _U('return_vh'),
			Type = 'vehdelete',
			Hint = _U('return_vh_button'),
			Spawner = 1,
			Caution = 2000,
			GPS = 0,
			Teleport = 0
		},
]]		
		NoixdeCayo = {
			Pos = {x = 5338.84,  y = -5322.4,  z = 36.55},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Récolte de noix de Cayo",
			Type = 'harvest',
			Item = {
				{
					name = "noixdecayo",
					db_name = 'noixdecayo',
					time = 5000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour Récolter des noix de Cayo"
		},
		
		Pistaches = {
			Pos = {x = 5315.04,  y = -5289.36,  z = 33.40},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Récolte de pistaches",
			Type = 'harvest',
			Item = {
				{
					name = "pistaches",
					db_name = 'pistaches',
					time = 5000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour Récolter des Pistaches"
		},
		
		Menthe = {
			Pos = {x = 5377.0,  y = -5265.96,  z = 33.30},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Récolte de menthe",
			Type = 'harvest',
			Item = {
				{
					name = "menthe",
					db_name = 'menthe',
					time = 5000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour Récolter de la menthe"
		},
		
		Papaye = {
			Pos = {x = 5205.36,  y = -5182.56,  z = 11.60},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Récolte de Papaye",
			Type = 'harvest',
			Item = {
				{
					name = "papaye",
					db_name = 'papaye',
					time = 5000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour Récolter de la papaye"
		},
--[[	
		HerbesMedicinales = {
			Pos = {x = 5207.96,  y = -5211.64,  z = 15.00},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Récolte d'herbes médicinales",
			Type = 'harvest',
			Item = {
				{
					name = "herbes médicinales",
					db_name = 'herbs',
					time = 5000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour recolter des herbes médicinales"
		},	
 ]]       
		Ble = {
			Pos = {x = 5359.32,  y = -5188.64,  z = 29.05},
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
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour Récolter du blé"
		},	

		Sugar = {
			Pos = {x = 5387.56,  y = -5217.44,  z = 32.04},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Récolte de betterave",
			Type = 'harvest',
			Item = {
				{
					name = "Betterave",
					db_name = 'betterave',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour Récolter de la betterave"
		},	

		Sugarmiller = {
			Pos = {x = 5125.08,  y = -4611.60,  z = 1.85},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Name = "Production de sucre",
			Interim = true,
			Type = 'work',
			Item = {
				{
					name = "Dose de sucre",
					db_name = 'dosesucre',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'betterave',
					requires_name = "Betterave",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour Faire du sucre"
		},

		Fabricationdefarine = {
			Pos = {x = 5092.2,  y = -4682.16,  z = 1.38},
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
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour Faire de la farine"
		},

		Boulangerie = {
			Pos = {x = 4515.56,  y = -4548.92,  z = 3.15},
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
		
		Deliverymint = {
			Pos = {x = 4443.92,  y = -4452.04,  z = 3.33},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Dépot de menthe",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = "delivery",
					time = 1000,
					remove = 1,
					max = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 5,
					requires = 'menthe',
					requires_name = "Menthe",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre la menthe"
		},

		DeliverynoixdeCayo = {
			Pos = {x = 4452.16,  y = -4468.8,  z = 3.32},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Dépot de noix de Cayo",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = "delivery",
					time = 1000,
					remove = 1,
					max = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 5,
					requires = 'noixdecayo',
					requires_name = "noixdecayo",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre vos noix de Cayo"
		},
		
		DeliveryPistaches = {
			Pos = {x = 4437.44,  y = -4476.6,  z = 3.32},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Dépot de Pistaches",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = "delivery",
					time = 1000,
					remove = 1,
					max = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 5,
					requires = 'pistaches',
					requires_name = "pistaches",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre vos Pistaches"
		},
		
		DeliveryPapaye = {
			Pos = {x = 4431.56,  y = -4453.0,  z = 6.24},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Dépot de papaye",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = "delivery",
					time = 1000,
					remove = 1,
					max = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 5,
					requires = 'papaye',
					requires_name = "papaye",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre vos papayes"
		},
	},
}	
--[[	
			Deliverysugarcanne = {
			Pos = {x = -750.00, y = -2224.00, z = 5.00},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Name = "Dépot de sucre",
			Type = 'delivery',
			Interim = false,
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 3000,
					remove = 20,
					max = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 200,
					requires = 'caissugar',
					requires_name = "Caisse de sucre",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre la canne à sucre"
		},
		
		Deliveryherbs = {
			Pos = {x = -766.00, y = -2224.00, z = 5.00},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Dépot d'herbes medicinales",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 3000,
					remove = 20,
					max = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 130,
					requires = 'herbs',
					requires_name = "Herbe médicinale",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre d'herbes médicinales"
		},
		
		Deliverybread = {
			Pos = {x = -677.00, y = -217.00, z = 5.00},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Dépot de pain",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 3000,
					remove = 1,
					max = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 400,
					requires = 'caisbread',
					requires_name = "Caisse de pain",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre votre caisse de pain"
		},
		
		Deliveryketchup = {
			Pos = {x = -649.00, y = -2242.00, z = 5.00},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "Dépot de Ketchup",
			Type = 'delivery',
			Interim = false,
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 3000,
					remove = 1,
					max = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 380,
					requires = 'caisketchup',
					requires_name = "Caisse de Ketchup",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre votre caisse de Ketchup"
		},
]]