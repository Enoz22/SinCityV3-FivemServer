brasserie = {

	BlipInfos = {
		Sprite = 85,
		Color = 27
	},
	
	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'baller2',
			Trailer = 'trailers',
			HasCaution = no
		}

	},

	Zones = {

		Cloakroom = {
			Pos   = {x = 417.16,  y = 6520.61,  z = 26.73},
			Size  = { x = 1.5, y = 1.5, z = 0.2 },
			Color = { r = 255, g = 255, b = 255 },
			Marker  = 1,
			Blip = true,
			Interim = true,
			Name = "Vestiaire",
			Type = 'cloakroom',
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Vestiaire'
		},

		-- Coffre = {
		-- 	Pos   = { x = 408.26,  y = 6497.43,  z = 26.70 },
		-- 	Size  = { x = 1.5, y = 1.5, z = 0.2 },
		-- 	Color = { r = 255, g = 255, b = 255 },
		-- 	Marker  = 1,
		-- 	Blip = false,
		-- 	Interim = false,
		-- 	Name = "Coffre",
		-- 	Type = 'coffre',
		-- 	Hint = "Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Coffre"
		-- },
--[[
		VehicleSpawner = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = false,
			Interim = true,
			Name = 'spawn_veh',
			Type = 'vehspawner',
			Spawner = 1,
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour prendre un véhicule",
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
			Heading = 130.1
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
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour ranger un véhicule",
			Spawner = 1,
			Caution = 2000,
			GPS = 0,
			Teleport = 0
		},
--]]
		Betterave = {
			Pos = {x = 277.02,  y = 6603.02,  z = 29.00},
			Size = {x = 2.5, y = 2.5, z = 0.4},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'Récolte de betterave',
			Type = 'harvest',
			Item = {
				{
					name = 'betterave',
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
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour récolter des betteraves"
		},

		Fermentation = {
			Pos = {x = 824.28,  y = -1056.96,  z = 27.00},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'Fermentation',
			Type = 'work',
			Item = {
				{
					name = 'Alcool fermenté',
					db_name = 'hectolitre',
					time = 1000,
					max = 100,
					add = 1,
					remove = 1,
					requires = 'betterave',
					requires_name = 'betterave',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour fermenter les betteraves"
		},

		Distillerie = {
			Pos = { x = 922.16,  y = -1560.48,  z = 29.80 },
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = 'Distillerie',
			Type = 'work',
			Item = {
				{
					name = "Bouteille d'alcool pure",
					db_name = 'boutalcool',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'hectolitre',
					requires_name = 'Alcool fermenté',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour distiller en alcool pur"
		},

		Delivery = {
			Pos = {x = -700.00, y = -2225.00, z = 5.00},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Dépot d'alcool fermenté",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = "delivery",
					time = 1000,
					remove = 1,
					max = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 6,
					requires = 'hectolitre',
					requires_name = 'Alcool fermenté',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre de alcool fermenté"
		},
		
		DeliveryAlcoolPure = {
			Pos = {x = -725.00, y = -2225.00, z = 5.00},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "Dépot d'alcool pure",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = "delivery",
					time = 1000,
					remove = 1,
					max = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 9,
					requires = "boutalcool",
					requires_name = "Bouteille d'alcool pure",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre de l'alcool"
		},
	},
}