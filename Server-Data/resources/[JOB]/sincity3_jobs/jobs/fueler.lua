fueler = {

	BlipInfos = {
		Sprite = 436,
		Color = 5
	},
	
	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'phantom',
			Trailer = 'tanker',
			HasCaution = true
		}

	},

	Zones = {

		CloakRoom = {
			Pos = {x = 2915.12,  y = 4368.42,  z = 49.50},
			Size  = { x = 1.5, y = 1.5, z = 0.2 },
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Vestiaire",
			Type = 'cloakroom',
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Vestiaire',
			GPS = {x = 554.59, y = -2314.43, z = 4.86}
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
			Caution = 2000,
			GPS = {x = 602.25, y = 2926.62, z = 39.68}
		},

		VehicleSpawnPoint = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 1.5, y = 1.5, z = 0.2},
			Marker = -1,
			Blip = false,
			Interim = true,
			Name = 'service_vh',
			Type = 'vehspawnpt',
			Spawner = 1,
			GPS = 0,
			Heading = 0
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
		OilFarm = {
			Pos = {x = 602.96,  y = 2859.12,  z = 39.0},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'Pétrole',
			Type = 'work',
			Item = {
				{
					name = 'Petrole',
					db_name = 'petrole',
					time = 1000,
					max = 50,
					add = 1,
					remove = 0,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop   = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour produire du pétrole",
			GPS = {x = 2736.94, y = 1417.99, z = 1.48}
		},

		OilRefinement = {
			Pos = {x = 2736.94, y = 1417.99, z = 23.45},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'Naphta',
			Type = 'work',
			Item = {
				{
					name = 'Naphta',
					db_name = 'naphta',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'petrole',
					requires_name = 'Petrole',
					drop   = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour fabriquer du naphta",
			GPS = {x = 265.75, y = -3013.39, z = 4.73}
		},

		OilMix = {
			Pos = {x = 265.75, y = -3013.39, z = 4.73},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'Plastique',
			Type = 'work',
			Item = {
				{
					name = 'Plastique',
					db_name = 'plastique',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'naphta',
					requires_name = 'Naphta',
					drop   = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour fabriquer du plastique",
			GPS = {x = 491.40, y = -2163.37, z = 4.91}
		},

		

		Delivery = {
			Pos = {x = -700.00, y = -2225.00, z = 4.80},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'Livraison de plastique',
			Type = "delivery",
			Spawner = 1,
			Item = {
				{
					name = 'delivery',
					time = 1000,
					remove = 1,
					max = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 8,
					requires = 'plastique',
					requires_name = 'Plastique',
					drop   = 10000
				}
			},

			Hint = '"Appuyez sur ~INPUT_CONTEXT~ pour vendre votre plastique'
			--GPS = {x = 609.58, y = 2856.74, z = 39.49}
		},
	},

	Uniforms = {
	barman_outfit = {
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
	   },
	 },
	 dancer_outfit_1 = {
	   male = {
		   ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
		   ['torso_1'] = 15,   ['torso_2'] = 0,
		   ['decals_1'] = 0,   ['decals_2'] = 0,
		   ['arms'] = 40,
		   ['pants_1'] = 61,   ['pants_2'] = 9,
		   ['shoes_1'] = 16,   ['shoes_2'] = 9,
		   ['chain_1'] = 118,  ['chain_2'] = 0
	   },
	   female = {
		   ['tshirt_1'] = 3,   ['tshirt_2'] = 0,
		   ['torso_1'] = 22,   ['torso_2'] = 0,
		   ['decals_1'] = 0,   ['decals_2'] = 0,
		   ['arms'] = 4,
		   ['pants_1'] = 22,   ['pants_2'] = 0,
		   ['shoes_1'] = 18,   ['shoes_2'] = 0,
		   ['chain_1'] = 61,   ['chain_2'] = 1
	   },
	},  
	dancer_outfit_2 = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 15,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 40,
			['pants_1'] = 61,   ['pants_2'] = 9,
			['shoes_1'] = 16,   ['shoes_2'] = 9,
			['chain_1'] = 118,  ['chain_2'] = 0
		},
		female = {
			['tshirt_1'] = 3,   ['tshirt_2'] = 0,
			['torso_1'] = 22,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 4,
			['pants_1'] = 22,   ['pants_2'] = 0,
			['shoes_1'] = 18,   ['shoes_2'] = 0,
			['chain_1'] = 61,   ['chain_2'] = 1
		}
	  }
	}	
}