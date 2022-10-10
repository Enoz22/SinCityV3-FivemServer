Poolbar = {

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
			Pos   = { x = 456.08,  y = -271.44,  z = 70.30 },
			Size  = { x = 1.5, y = 1.5, z = 0.2 },
			Color = { r = 255, g = 255, b = 255 },
			Marker  = 1,
			Blip = true,
			Interim = false,
			Name = "Vestiaire",
			Type = 'cloakroom',
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Vestiaire'
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

		Frigo = {
			Pos   = { x = 459.52,  y = -267.0,  z = 70.30 },
			Size  = { x = 1.5, y = 1.5, z = 0.2 },
			Color = { r = 255, g = 255, b = 255 },
			Marker  = 1,
			Blip = false,
			Interim = false,
			Name = "Frigo",
			Type = 'frigo',
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le frigo"
		},

        Mixologie = {
			Pos   = {  x = 469.52,  y = -267.0,  z = 70.30 },
			Size  = { x = 1.5, y = 1.5, z = 0.20 },
			Color = { r = 255, g = 255, b = 255 },
			Marker  = 1,
			Blip = false,
			Interim = false,
			Name = "mixologie",
			Type = 'mixologie',
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour faire un cocktail"
		},
		
		NoAlcool = {
			Pos   = {  x = 449.52,  y = -267.0,  z = 70.30 },
			Size  = { x = 1.5, y = 1.5, z = 0.2 },
			Color = { r = 18, g = 110, b = 0 },
			Type  = "shop",
			Blip = false,
			Marker = 1,
			Interim = false,
			Name = "frigo",
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour sortir du stock des bouteilles",
			Items = {
				{ name = 'soda',        label = _U('soda'),     price = 4 },
				{ name = 'jusfruit',    label = _U('jusfruit'), price = 3 },
				{ name = 'icetea',      label = _U('icetea'),   price = 4 },
				{ name = 'energy',      label = _U('energy'),   price = 7 },
				{ name = 'drpepper',    label = _U('drpepper'), price = 2 },
				{ name = 'limonade',    label = _U('limonade'), price = 1 },
				{ name = 'bolchips',    label = _U('bolchips'), price = 5 },
				{ name = 'saucisson',   label = _U('saucisson'), price = 25 },
				{ name = 'ice',         label = _U('ice'),      price = 1 }
			}
		},

		VehicleSpawner = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 2.5, y = 2.5, z = 0.2},
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
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = -1,
			Blip = false,
			Interim = false,
			Name = _U('service_vh'),
			Type = 'vehspawnpt',
			Spawner = 1,
			Heading = 264.40
		},

		VehicleDeletePoint = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = false,
			Interim = false,
			Name = _U('return_vh'),
			Type = 'vehdelete',
			Hint = _U('return_vh_button'),
			Spawner = 1,
			Caution = 2000,
			GPS = 0,
			Teleport = 0
		},

		Reglisse = {
			Pos = {x = 2135.92, y = 5148.20, z = 50.10},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "reglisse",
			Type = 'harvest',
			Item = {
				{
					name = "reglisse",
					db_name = 'reglisse',
					time = 5000,
					max = 100,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour récolter du réglisse"
		},

		Distillation = {
			Pos = {x = -311.48,  y = 6201.64, z = 30.60},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "Distillation",
			Type = 'work',
			Item = {
				{
					name = "Caisse de Pastis ",
					db_name = 'caispastis',
					time = 5000,
					max = 20,
					add = 1,
					remove = 8,
					requires = "reglisse",
					requires_name = 'reglisse',
					drop = 10000,
					remove2 = 1,
					requires2 = "caisalcool",
					requires2_name = _U('brass_alcool')
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour Distiller de lu pastis"
		},
		
		VentesPastis = {
			Pos = {x = -700.00, y = -2225.00, z = 5.00},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "Dépot de pastis",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = "delivery",
					time = 3000,
					remove = 20,
					max = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 200,
					requires = 'Caisse de pastis',
					requires_name = "caispastis",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre vos caisses de pastis"
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
			['torso_1'] = 62,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 14,
			['pants_1'] = 4,    ['pants_2'] = 0,
			['shoes_1'] = 34,   ['shoes_2'] = 0,
			['chain_1'] = 118,  ['chain_2'] = 0
		},
		female = {
			['tshirt_1'] = 3,   ['tshirt_2'] = 0,
			['torso_1'] = 22,   ['torso_2'] = 2,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 4,
			['pants_1'] = 20,   ['pants_2'] = 2,
			['shoes_1'] = 18,   ['shoes_2'] = 2,
			['chain_1'] = 0,    ['chain_2'] = 0
		},
	  },
	  dancer_outfit_3 = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 15,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 15,
			['pants_1'] = 4,    ['pants_2'] = 0,
			['shoes_1'] = 34,   ['shoes_2'] = 0,
			['chain_1'] = 118,  ['chain_2'] = 0
		},
		female = {
			['tshirt_1'] = 3,   ['tshirt_2'] = 0,
			['torso_1'] = 22,   ['torso_2'] = 1,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 15,
			['pants_1'] = 19,   ['pants_2'] = 1,
			['shoes_1'] = 19,   ['shoes_2'] = 3,
			['chain_1'] = 0,    ['chain_2'] = 0
		},
	  },
	  dancer_outfit_4 = {
		male = {
			['tshirt_1'] = 15,  ['tshirt_2'] = 0,
			['torso_1'] = 15,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 15,
			['pants_1'] = 61,   ['pants_2'] = 5,
			['shoes_1'] = 34,   ['shoes_2'] = 0,
			['chain_1'] = 118,  ['chain_2'] = 0
		},
		female = {
			['tshirt_1'] = 3,   ['tshirt_2'] = 0,
			['torso_1'] = 82,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 15,
			['pants_1'] = 63,   ['pants_2'] = 11,
			['shoes_1'] = 41,   ['shoes_2'] = 11,
			['chain_1'] = 0,    ['chain_2'] = 0
		}
	  }
	}

}

