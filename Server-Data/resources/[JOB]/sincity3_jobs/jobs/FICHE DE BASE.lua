gouv = {

	BlipInfos = {
		Sprite = 304,
		Color = 50
	},

	PrivateName ="Gouvernement",
	
	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'baller6',
			Trailer = 'trailers',
			HasCaution = no
		}
	},

	Zones = {

		CloakRoom = {
			Pos = {x = -555.30, y = -185.85, z = 38.00},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 30, g = 144, b = 255},
			Marker = 23,
			Blip = true,
			Interim = false,
			Name = "Vestiaire",
			Type = 'cloakroom',
			Hint = _U('cloak_change')
		},

		Coffre = {
			Pos   = { x = 390.32,  y = 271.56,  z = 94.10 },
			Size  = { x = 3.0, y = 3.0, z = 1.0 },
			Color = { r = 30, g = 144, b = 255 },
			Marker  = 23,
			Blip = false,
			Interim = false,
			Name = "Coffre",
			Type = 'coffre',
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Coffre'
		},

		VehicleSpawner = {
			Pos = {x = -519.45, y = -260.93, z = 35.50},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 30, g = 144, b = 255},
			Marker = 23,
			Blip = false,
			Interim = false,
			Name = _U('spawn_veh'),
			Type = 'vehspawner',
			Spawner = 1,
			Hint = _U('spawn_veh_button'),
			Caution = 2000
		},

		VehicleSpawnPoint = {
			Pos = {x = -517.42, y = -264.59, z = 35.00},
			Size = {x = 5.0, y = 5.0, z = 1.0},
			Marker = -1,
			Blip = false,
			Interim = false,
			Name = _U('service_vh'),
			Type = 'vehspawnpt',
			Spawner = 1,
			Heading = 123.64
		},

		VehicleDeletePoint = {
			Pos = {x = -535.10, y = -271.92, z = 35.17},
			Size = {x = 5.0, y = 5.0, z = 1.0},
			Color = {r = 30, g = 144, b = 255},
			Marker = 23,
			Blip = false,
			Interim = false,
			Name = _U('return_vh'),
			Type = 'vehdelete',
			Hint = _U('return_vh_button'),
			Spawner = 1,
			Caution = 2000,
			GPS = 0,
			Teleport = 0
		}
	}

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
	   }
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
	   }
	}  
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