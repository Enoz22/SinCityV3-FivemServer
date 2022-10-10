fisherman = {

	BlipInfos = {
		Sprite = 68,
		Color = 38
	},

	PrivateName = "Pecheur",
	
	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'benson',
			Trailer = 'none',
			HasCaution = true
		},

		Boat = {
			Spawner = 2,
			Hash = 'tug',
			Trailer = 'none',
			HasCaution = false
		}

	},

	Zones = {

		CloakRoom = {
			Pos   = {x = 1332.84,  y = 4326.27,  z = 37.00},
			Size  = {x = 1.5, y = 1.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker= 1,
			Blip  = true,
			Interim = true,
			Name = "Vestiaire",
			Type = 'cloakroom',
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Vestiaire',
			GPS = {x = 880.74, y = -1663.96, z = 29.37}
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

		BoatSpawner = {
			Pos   = {x = 0.0, y = 0.0, z = 0.0},
			Size  = {x = 1.5, y = 1.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker= 1,
			Blip  = false,
			Interim = true,
			Name  = 'fm_spawnboat_title',
			Type  = 'vehspawner',
			Spawner = 2,
			Hint  = 'fm_spawnboat',
			Caution = 0,
			GPS = 0
		},

		BoatSpawnPoint = {
			Pos   = {x = 0.0, y = 0.0, z = 0.0},
			Size  = {x = 1.5, y = 1.5, z = 0.2},
			Marker= -1,
			Blip  = false,
			Interim = true,
			Name  = 'fm_boat_title',
			Type  = 'vehspawnpt',
			Spawner = 2,
			GPS = 0,
			Heading = 270.1
		},

		BoatDeletePoint = {
			Pos   = {x = 0.0, y = 0.0, z = 0.0},
			Size  = {x = 10.0, y = 10.0, z = 1.0},
			Color = {r = 255, g = 255, b = 255},
			Marker= 1,
			Blip  = false,
			Interim = true,
			Name  = 'fm_boat_return_title',
			Type  = 'vehdelete',
			Hint  = 'fm_boat_return_button',
			Spawner = 2,
			Caution = 0,
			GPS = {x = -1012.64, y = -1354.62, z = 5.54},
			Teleport = {x = 3867.44, y = 4463.62, z = 1.72}
		},

		VehicleSpawner = {
			Pos   = {x = 0.0, y = 0.0, z = 0.0},
			Size  = {x = 1.5, y = 1.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker= 1,
			Blip  = false,
			Interim = true,
			Name  = 'spawn_veh',
			Type  = 'vehspawner',
			Spawner = 1,
			Hint  = 'spawn_veh_button',
			Caution = 2000,
			GPS = {x = 3867.44, y = 4463.62, z = 1.72}
		},

		VehicleSpawnPoint = {
			Pos   = {x = 0.0, y = 0.0, z = 0.0},
			Size  = {x = 3.0, y = 3.0, z = 1.0},
			Marker= -1,
			Blip  = false,
			Interim = true,
			Name  = 'service_vh',
			Type  = 'vehspawnpt',
			Spawner = 1,
			GPS = 0,
			Heading = 86.84
		},

		VehicleDeletePoint = {
			Pos   = {x = 0.0, y = 0.0, z = 0.0},
			Size  = {x = 5.0, y = 5.0, z = 1.0},
			Color = {r = 255, g = 255, b = 255},
			Marker= 1,
			Blip  = false,
			Interim = true,
			Name  = 'return_vh',
			Type  = 'vehdelete',
			Hint  = 'return_vh_button',
			Spawner = 1,
			Caution = 2000,
			GPS = 0,
			Teleport = 0
		},
]]
		FishingSpot = {
			Pos   = {x = -21.08,  y = 3977.24,  z = 29.89},
			Color = {r = 255, g = 255, b = 255},
			Size  = {x = 110.0, y = 110.0, z = 10.0},
			Marker= 1,
			Blip  = true,
			Interim = true,
			Name  = 'Zone de peche',
			Type  = 'harvest',
			Hint  = 'Appuyez sur ~INPUT_CONTEXT~ pour pêcher',
			GPS   = {x = 466.02, y = -577.02, z = 29.02},
			Item = {
				{
					name   = 'Poisson',
					db_name= 'poisson',
					time   = 1000,
					max    = 50,
					add    = 1,
					remove = 0,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop   = 10000
				},
				{
					name   = "Crabe",
					db_name= 'crabe',
					max    = 50,
					add    = 1,
					remove = 0,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop   = 100
				},
				{
					name   = "Saumon",
					db_name= 'saumon',
					max    = 50,
					add    = 1,
					remove = 0,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop   = 20
				},
				{
					name   = "Crevette",
					db_name= 'crevette',
					max    = 50,
					add    = 1,
					remove = 0,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop   = 200
				}
			},
		},
		
		MouleSpot = {
			Pos   = {x = 14.16,  y = 4195.92,  z = 29.89},
			Color = {r = 255, g = 255, b = 255},
			Size  = {x = 110.0, y = 110.0, z = 10.0},
			Marker= 1,
			Blip  = true,
			Interim = false,
			Name  = "Zone de pêche aux moules",
			Type  = 'work',
			Hint  = 'fm_fish_button',
			GPS   = {x = 3859.43, y = 4448.83, z = 0.39},
			Item = {
				{
					name   = "Huître",
					db_name= 'huitre',
					time   = 10000,
					max    = 50,
					add    = 1,
					remove = 0,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop   = 10000
				},
				{
					name   = "Perle",
					db_name= 'perle',
					max    = 50,
					add    = 1,
					remove = 0,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop   = 50
				},
			},
		},	

		PoissonRefinement = {
			Pos = {x = 1363.84,  y = 4364.4,  z = 43.32},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'Laver',
			Type = 'work',
			Item = {
				{
					name = 'Poisson comestible',
					db_name = 'poissonpropre',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'poisson',
					requires_name = 'Poisson',
					drop   = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour laver le poisson"
			--GPS = {x = 265.75, y = -3013.39, z = 4.73}
		},

		--[[PoissonRefinement2 = {
			Pos = {x = 1334.02,  y = 4378.31,  z = 44.38},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'Laver',
			Type = 'work',
			Item = {
				{
					name = 'poissoncoupe',
					db_name = 'poissoncoupe',
					time = 5000,
					max = 50,
					add = 10,
					remove = 10,
					requires = 'poissonlave',
					requires_name = 'poissonlave',
					drop   = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour couper le poisson"
			--GPS = {x = 265.75, y = -3013.39, z = 4.73}
		},]]

		Deliveryfish = {
			Pos   = {x = -700.00, y = -2225.00, z = 4.80},
			Color = {r = 255, g = 255, b = 255},
			Size  = {x = 2.5, y = 2.5, z = 0.2},
			Marker= 1,
			Blip  = true,
			Interim = true,
			Name  = 'dépôt de poisson',
			Type  = 'delivery',
			Spawner = 2,
			Hint  = "Appuyez sur ~INPUT_CONTEXT~ pour vendre le poisson",
			GPS   = {x = 3867.44, y = 4463.62, z = 1.72},
			Item = {
				{
				name   = "delivery",
				time = 1000,
				remove = 1,
				max    = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
				price  = 10,
				requires = 'poissonpropre',
				requires_name = 'Poisson comestible',
				drop   = 10000
				}
			},
		},
		
		Deliveryperle = {
			Pos   = {x = -710.00, y = -2225.00, z = 4.80},
			Color = {r = 255, g = 255, b = 255},
			Size  = {x = 2.5, y = 2.5, z = 0.2},
			Marker= 1,
			Blip  = true,
			Interim = false,
			Name  = "Dépot de perle",
			Type  = 'delivery',
			Spawner = 2,
			Hint  = "Appuyez sur ~INPUT_CONTEXT~ pour vendre des perles",
			GPS   = {x = 3867.44, y = 4463.62, z = 1.72},
			Item = {
				{
				name   = "delivery",
				time = 1000,
				remove = 1,
				max    = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
				price  = 10,
				requires = 'perle',
				requires_name = "Perle",
				drop   = 10000
				}
			},
		},
	},
}