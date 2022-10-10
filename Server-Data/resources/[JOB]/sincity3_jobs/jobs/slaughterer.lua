slaughterer = {

	BlipInfos = {
		Sprite = 85,
		Color = 27
	},

	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'benson',
			Trailer = 'none',
			HasCaution = true
		}
	},

	Zones = {

		CloakRoom = {
			Pos = {x = -56.88,  y = 6271.64,  z = 31.4},
			Size = {x = 1.5, y = 1.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Vestiaire",
			Type = 'cloakroom',
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Vestiaire"
		},

		Coffre = {
			Pos   = { x = 0.0,  y = 0.0,  z = 0.0 },
			Size  = { x = 1.5, y = 1.5, z = 0.2 },
			Color = { r = 255, g = 255, b = 255 },
			Marker  = 1,
			Blip = false,
			Interim = false,
			Name = "Coffre",
			Type = 'coffre',
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Coffre"
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
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Garage",
			Caution = 2000
		},

		VehicleSpawnPoint = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 1.5, y = 1.5, z = 0.2},
			Marker = -1,
			Blip = false,
			Interim = true,
			Name = "service_vh",
			Type = 'vehspawnpt',
			Spawner = 1,
			Heading = 17.36
		},

		VehicleDeletePoint = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = false,
			Interim = true,
			Name = "return_vh",
			Type = 'vehdelete',
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour ranger votre véhicule",
			Spawner = 1,
			Caution = 2000,
			GPS = 0,
			Teleport = 0
		},

		AliveChicken = {
			Pos = {x = -63.84,  y = 6240.68, z = 30.00},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Poullailler",
			Type = 'harvest',
			Item = {
				{
					name = "Poulet",
					db_name = 'poulet',
					time = 1000,
					max = 50,
					add = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour attraper un poulet"
		},

		SlaughterHouse = {
			Pos = {x = -84.28,  y = 6234.19, z = 30.00},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = false,
			Interim = true,
			Name = "Abattoirs",
			Type = 'work',
			Item = {
				{
					name = "Pouletabattu",
					db_name = 'pouletabattu',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'poulet',
					requires_name = 'Poulet',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour tuer l'animal"
		},

		Packaging = {
			Pos = {x = -101.97, y = 6208.79, z = 30.00},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = false,
			Interim = true,
			Name = "Empacktage",
			Type = 'work',
			Item = {
				{
					name = "Packpoulet",
					db_name = 'packpoulet',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'pouletabattu',
					requires_name = 'Pouletabattu',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour empackter le poulet"
		},

		Delivery = {
			Pos = {x = -700.00, y = -2225.00, z = 4.80},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "delivery_point",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = "delivery",
					time = 1000,
					remove = 10,
					max = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 100,
					requires = 'Packpoulet',
					requires_name = 'packpoulet',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre la barquette de poulet"
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