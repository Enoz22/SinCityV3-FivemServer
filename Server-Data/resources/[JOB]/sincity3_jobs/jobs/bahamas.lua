Bahamas = {

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
			Pos   = {  x = -1367.36,  y = -613.84,  z = 29.32 },
			Size  = { x = 1.5, y = 1.5, z = 0.2 },
			Color = { r = 255, g = 255, b = 255 },
			Marker  = 1,
			Blip = true,
			Interim = false,
			Name = "Vestiaire",
			Type = 'cloakroom',
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Vestiaire'
		},
--[[
        Mixologie = {
			Pos   = {  x = -1391.12,  y = -607.76,  z = 29.50 },
			Size  = { x = 1.5, y = 1.5, z = 0.2 },
			Color = { r = 255, g = 255, b = 255 },
			Marker  = 1,
			Blip = true,
			Interim = false,
			Name = "mixologie",
			Type = 'mixologie',
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour faire un cocktail"
		},
		
		NoAlcool = {
			Pos   = {  x = -1350.12,  y = -607.76,  z = 29.50 },
			Size  = { x = 1.5, y = 1.5, z = 0.2 },
			Color = { r = 255, g = 255, b = 255 },
			Type  = "shop",
			Blip = true,
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
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = false,
			Interim = false,
			Name = 'spawn_veh',
			Type = 'vehspawner',
			Spawner = 1,
			Hint = 'spawn_veh_button',
			Caution = 2000
		},

		VehicleSpawnPoint = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 3.0, y = 3.0, z = 1.0},
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
			Size = {x = 5.0, y = 5.0, z = 1.0},
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
			Teleport = 0
		},
--]]
		Pommedeterres = {
			Pos = {x = 2135.92, y = 5148.20, z = 50.10},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "Pomme de terre",
			Type = 'harvest',
			Item = {
				{
					name = "Pomme de terre",
					db_name = 'pommedeterre',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 10000,
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour récolter des pommes de terre"
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
					name = "Bouteille de vodka",
					db_name = 'boutvodka',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = "pommedeterre",
					requires_name = 'Pomme de terre',
					drop = 10000,
					remove2 = 1,
					requires2 = "boutalcool",
					requires2_name = "Bouteille d'alcool pure",
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour Distiller de la Vokda"
		},
		
		Ventesvodka = {
			Pos = {x = -700.00, y = -2225.00, z = 5.00},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "Dépot de vodka",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = 'delivery',
					time = 3000,
					remove = 1,
					max = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 10,
					requires = 'Bouteille de vodka',
					requires_name = "boutvodka",
					drop = 10000,
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre vos caisses de vodka"
		},
	},
}

