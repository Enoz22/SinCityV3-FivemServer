vigne = {

	BlipInfos = {
		Sprite = 85,
		Color = 50
	},
	
	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'rumpo5',
			Trailer = '',
			HasCaution = true
		}
	},

	Zones = {

		CloakRoom = {
			Pos = {x = -1912.372, y = 2072.8010, z = 139.40},
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
]]
		Raisin = {
			Pos = {x = -1854.32,  y = 2245.0,  z = 83.00},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Récolte de raisin",
			Type = 'harvest',
			Item = {
				{
					name = "Raisins",
					db_name = 'raisin',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour recolter des raisins"
		},

		Jusraisin = {
			Pos = {x = 815.68,  y = 2177.76,  z = 51.30},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Production de Jus",
			Type = 'work',
			Item = {
				{
					name = "Jus de raisin",
					db_name = 'jusraisin',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'raisin',
					requires_name = "Raisin",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour faire du Jus de raisin"
		},
		
		Vin = {
			Pos = {x = -53.116, y = 1903.248, z = 194.40},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "Production de Vin",
			Type = 'work',
			Item = {
				{
					name = "Vin",
					db_name = 'vin',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'raisin',
					requires_name = "Raisin",
					drop = 10000
				},
				{
					name = "Grand Millesime",
					db_name = 'grandcru',
					time = 1000,
					max = 50,
					add = 1,
					drop = 20
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour fabriquer du Vin"
		},
		
		Deliveryvine = {
			Pos = {x = -725.00, y = -2225.00, z = 4.80},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "Dépot de Vin",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = "delivery",
					time = 1000,
					remove = 1,
					max = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 5,
					requires = 'vin',
					requires_name = "Vin",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre la bouteille de Vin"
		},
		
		Deliveryjus = {
			Pos = {x = -700.00, y = -2225.00, z = 4.80},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Dépot de Jus de raisin",
			Type = 'delivery',
			Spawner = 2,
			Item = {
				{
					name = "delivery",
					time = 1000,
					remove = 1,
					max = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 5,
					requires = 'jusraisin',
					requires_name = "Jus de raisin",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre du jus de raisin"
		},
	}, 	
}
