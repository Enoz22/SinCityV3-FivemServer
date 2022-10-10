reporter = {

	BlipInfos = {
		Sprite = 135,
		Color = 1
	},

	PrivateName = "Journaliste",
	
	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'rumpo',
			Trailer = 'none',
			HasCaution = true
		}

	},

	Zones = {

		CloakRoom = {
			Pos = {x = -584.12,  y = -934.72,  z = 1.8},
			Size = {x = 1.5, y = 1.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Vestiaire",
			Type = 'cloakroom',
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Vestiaire',
			GPS = {x = 884.86, y = -2176.51, z = 29.51}
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
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Coffre'
		},

		VehicleSpawner = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "Vehicule",
			Type = 'vehspawner',
			Spawner = 1,
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Garage',
			Caution = 2000
		},

		VehicleSpawnPoint = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = -1,
			Blip = false,
			Interim = false,
			Name = 'service_vh',
			Type = 'vehspawnpt',
			Spawner = 1,
			Heading = 9.68
		},

		VehicleDeletePoint = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = false,
			Interim = false,
			Name = 'return_vh',
			Type = 'vehdelete',
			Hint = 'return_vh_button',
			Spawner = 1,
			Caution = 2000,
			GPS = 0,
			Teleport = {x = -139.09, y = -620.74, z = 167.82}
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