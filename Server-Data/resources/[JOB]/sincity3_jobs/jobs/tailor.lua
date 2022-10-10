tailor = {

	BlipInfos = {
		Sprite = 366,
		Color = 4
	},
	
	PrivateName = "Couturier",

	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'youga2',
			Trailer = 'none',
			HasCaution = true
		}
	},

	Zones = {

		CloakRoom = {
			Pos = {x = 706.73, y = -960.90, z = 29.50},
			Size = {x = 1.0, y = 1.0, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "Vestiaire",
			Type = 'cloakroom',
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Vestiaire',
			GPS = {x = 740.80, y = -970.06, z = 1.46}
		},
--[[
		Coffre = {
			Pos   = { x = 0.0,  y = 0.0,  z = 0.0 },
			Size  = { x = 1.0, y = 1.0, z = 0.2 },
			Color = { r = 255, g = 255, b = 255 },
			Marker  = 1,
			Blip = false,
			Interim = false,
			Name = "Coffre",
			Type = 'coffre',
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Coffre'
		},
]]
		Chanvre = {
			Pos = {x = 2234.52,  y = 5576.36,  z = 53.04},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'Récolte de chanvre',
			Type = 'work',
			Item = {
				{
					name = 'Chanvre',
					db_name = 'chanvre',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 10000
				}
			},
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour récolter du chanvre',
			GPS = {x = 715.95, y = -959.63, z = 29.39}
		},

		Tissu = {
			Pos = {x = 715.52,  y = -961.6, z = 29.50},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = false,
			Interim = true,
			Name = 'Fabrication de tissus',
			Type = 'work',
			Item = {
				{
					name = 'Tissu',
					db_name = 'tissu',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'chanvre',
					requires_name = 'Chanvre',
					drop = 10000
				}
			},
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour fabriquer du tissu',
			GPS = {x = 712.92, y = -970.58, z = 29.39}
		},

		Voile = {
			Pos = {x = 712.88,  y = -970.84, z = 29.50},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = false,
			Interim = true,
			Name = 'Fabrication de voiles',
			Type = 'work',
			Item = {
				{
					name = 'Voile',
					db_name = 'voile',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'tissu',
					requires_name = 'Tissu',
					drop = 10000
				}
			},
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour tisser des voiles',
			GPS = {x = 429.59, y = -807.34, z = 28.49}
		},
--[[
		VehicleSpawner = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 1.0, y = 1.0, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = false,
			Interim = true,
			Name = 'spawn_veh',
			Type = 'vehspawner',
			Spawner = 1,
			Hint = 'spawn_veh_button',
			Caution = 2000,
			GPS = {x = 1978.92, y = 5171.70, z = 46.63}
		},

		VehicleSpawnPoint = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 1.0, y = 1.0, z = 0.2},
			Marker = -1,
			Blip = false,
			Interim = true,
			Name = 'service_vh',
			Type = 'vehspawnpt',
			Spawner = 1,
			Heading = 270.1,
			GPS = 0
		},

		VehicleDeletePoint = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 1.0, y = 1.0, z = 0.2},
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
		Delivery = {
			Pos = {x = -700.00, y = -2225.00, z = 5.00},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'vente de voiles',
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = "delivery",
					time = 1000,
					remove = 1,
					max = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 9,
					requires = 'voile',
					requires_name = 'Voiles',
					drop = 10000
				}
			},
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour vendre des voiles',
			GPS = {x = 1978.92, y = 5171.70, z = 46.63}
		},
	},   	
}


--[[		TabacBlond = {
			Pos = {x = -162.90, y = 6241.46, z = 30.09},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 't_champblond',
			Type = 'work',
			Item = {
				{
					name = 't_tabacblond',
					db_name = 'tabacblond',
					time = 2000,
					max = 20,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 5000
				}
			},
			Hint = 't_tabacpickup'
		},
		SechageBlond = {
			Pos = { x = 1241.28, y = 1866.7, z = 77.99 },
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 't_sechoire',
			Type = 'work',
			Item = {
				{
					name = 't_tabacblondsec',
					db_name = 'tabacblondsec',
					time = 2000,
					max = 20,
					add = 1,
					remove = 1,
					requires = 'tabacblond',
					requires_name = 't_tabacblond',
					drop = 5000
				}
			},
			Hint = 't_sechoirepickup'
		},
	
        
       		CigaretteWork2 = {
			Pos = {x = -103.97, y = 6208.79, z = 30.02},
			Size = {x = 1.0, y = 1.0, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = false,
			Interim = true,
			Name = 't_malboro',
			Type = 'work',
			Item = {
				{
					name = "Malboro",
					db_name = 'malbora',
					time = 5000,
					max = 100,
					add = 1,
					remove = 6,
					requires = 'tabacblondsec',
					requires_name = 't_tabacblondsec',
					drop = 10000
				}
			},
			Hint = 't_prodmalboro'
		}, 
]]		