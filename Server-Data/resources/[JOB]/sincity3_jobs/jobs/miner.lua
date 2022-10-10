miner = {

	BlipInfos = {
		Sprite = 85,
		Color = 27
	},
	
	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'rubble',
			Trailer = 'none',
			HasCaution = true
		}

	},

	Zones = {

		CloakRoom = {
			Pos = {x = 2706.36,  y = 2778.52,  z = 37.08},
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
--[[
		Coffre = {
			Pos   = { x = 0.0,  y = 0.0,  z = 0.0 },
			Size  = {x = 1.5, y = 1.5, z = 0.2},
			Color = { r = 255, g = 255, b = 255 },
			Marker  = 1,
			Blip = false,
			Interim = false,
			Name = "Coffre",
			Type = 'coffre',
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Coffre'
		},
]]
		Mine = {
			Pos = {x = 2945.88,  y = 2773.24,  z = 38.20},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'Mine',
			Type = 'harvest',
			Item = {
				{
					name = 'Minerai de fer',
					db_name = 'mineraifer',
					time = 1000,
					max = 50,
					add = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 10000
				}
				--[[
				{
					name = 'Minerai de cuivre',
					db_name = 'mineraicuivre',
					max = 50,
					add = 1,
					remove = 0,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 50
				},
				{
					name = 'Diamant brut',
					db_name = 'diamantbrut',
					max = 50,
					add = 1,
					remove = 0,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 1
				}	
				]]
			},
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour récolter du minerai',
			GPS = {x = 289.24, y = 2862.90, z = 42.64}
		},

		StoneWash = {
			Pos = {x = 289.24,  y = 2861.6, z = 42.70},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'Riviere',
			Type = 'work',
			Item = {
				{
					name = 'Minerai de fer pur',
					db_name = 'mineraiferpur',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'mineraifer',
					requires_name = 'Minerai de fer',
					drop = 10000
				}
			},
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour laver la minerai de fer',
			GPS = {x = 1109.14, y = -2007.87, z = 30.01}
		},

		Foundry = {
			Pos = {x = 1109.14, y = -2007.87, z = 29.90},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'Fonderie',
			Type = 'work',
			Item = {
				{
					name = 'Barre de fer',
					db_name = 'barrefer',
					max = 50,
					add = 1,
					drop = 9000,
					time = 1000,
					remove = 1,
					requires = 'mineraiferpur',
					requires_name = 'Minerai de fer pur'
				}
			},
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour fondre du fer',
			GPS = {x = -169.48, y = -2659.16, z = 5.00}
		},
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
			Hint = 'spawn_veh_button',
			Caution = 2000,
			GPS = {x = 2962.40, y = 2746.20, z = 42.39}
		},

		VehicleSpawnPoint = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = -1,
			Blip = false,
			Interim = true,
			Name = 'service_vh',
			Type = 'vehspawnpt',
			Spawner = 1,
			Heading = 214.68,
			GPS = 0
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
		IronDelivery = {
			Pos = {x = -700.00, y = -2225.00, z = 4.80},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'Vente de metaux',
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = "delivery",
					time = 1000,
					remove = 1,
					max = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 8,
					requires = 'barrefer',
					requires_name = 'Barre de fer',
					drop = 10000
				}
			},
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour du vendre du fer',
			GPS = {x = -700.00, y = -2225.00, z = 4.80}
		},
	},	
--[[
		
		CopperDelivery = {
			Pos = {x = -169.481, y = -2659.16, z = 5.00103},
			Color = {r = 204, g = 204, b = 0},
			Size = {x = 5.0, y = 5.0, z = 3.0},
			Marker = 1,
			Blip = true,
			Name = _U('m_sell_copper'),
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 3000,
					remove = 1,
					max = 56, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 15,
					requires = 'copper',
					requires_name = _U('m_copper'),
					drop = 10000
				}
			},
			Hint = _U('m_deliver_copper'),
			GPS = {x = -148.78, y = -1040.38, z = 26.27}
		},
		
		GoldDelivery = {
			Pos = {x = 261.48, y = 207.35, z = 109.28},
			Color = {r = 204, g = 204, b = 0},
			Size = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 204, g = 204, b = 0},
			Marker = 1,
			Blip = true,
			Name = _U('m_sell_gold'),
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 3000,
					remove = 1,
					max = 21, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 3000,
					requires = 'gold',
					requires_name = _U('m_gold'),
					drop = 10000
				}
			},
			Hint = _U('m_deliver_gold'),
			GPS = {x = -621.04, y = -228.53, z = 37.05}
		},

		DiamondDelivery = {
			Pos = {x = -621.04, y = -228.53, z = 37.05},
			Color = {r = 204, g = 204, b = 0},
			Size = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 204, g = 204, b = 0},
			Marker = 1,
			Blip = true,
			Name = _U('m_sell_diamond'),
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 3000,
					remove = 1,
					max = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 15000,
					requires = 'diamond',
					requires_name = _U('m_diamond'),
					drop = 10000
				}
			},
			Hint = _U('m_deliver_diamond'),
			GPS = {x = 2962.40, y = 2746.20, z = 42.39}
		},
		
		GravelDelivery = {
			Pos = {x = 265.48, y = 207.35, z = 109.28},
			Color = {r = 204, g = 204, b = 0},
			Size = {x = 5.0, y = 5.0, z = 3.0},
			Color = {r = 204, g = 204, b = 0},
			Marker = 1,
			Blip = true,
			Name = "Dépot de graviers",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = _U('delivery'),
					time = 3000,
					remove = 1,
					max = 21, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 3000,
					requires = 'gravel',
					requires_name = "Gravier",
					drop = 10000
				}
			},
			Hint = _U('m_deliver_gold'),
			GPS = {x = -621.04, y = -228.53, z = 37.05}
		},
		
	},
	]]
}