tabac = {

	BlipInfos = {
		Sprite = 85,
		Color = 50
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

		-- CloakRoom = {
		-- 	Pos = {x = 2348.19,  y = 3122.04,  z = 48.21},
		--     Size = {x = 1.0, y = 1.0, z = 0.2},
		--     Color = {r = 255, g = 255, b = 255},
		-- 	Marker = 1,
		-- 	Blip = true,
		-- 	Interim = false,
		-- 	Name = "Vestiaire",
		-- 	Type = 'cloakroom',
		-- 	Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Vestiaire'
		-- },

		-- Coffre = {
		-- 	Pos   = { x = 2355.90,  y = 3143.63,  z = 47.25 },
		-- 	Size = {x = 1.0, y = 1.0, z = 1.0},
		-- 	Color = {r = 17, g = 29, b = 210},
		-- 	Marker  = 27,
		-- 	Blip = true,
		-- 	Interim = false,
		-- 	Name = "Vestiaire",
		-- 	Type = 'cloakroom',
		-- 	Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Coffre'
		-- },
--[[
		VehicleSpawner = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 1.0, y = 1.0, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = false,
			Interim = true,
			Name = "Vehicule",
			Type = 'vehspawner',
			Spawner = 1,
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Garage',
			Caution = 2000
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
			Heading = 357.8
		},

		VehicleDeletePoint = 
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = false,
			Interim = true,
			Name = 'return_vh',
			Type = 'vehdelete',
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour ranger le véhicule",
			Spawner = 1,
			Caution = 2000,
			GPS = 0,
			Teleport = 0
		},
]]
		TabacBrun = {
			Pos = {x = 311.4,  y = 6631.16,  z = 28.00},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 17, g = 29, b = 210},
			Marker  = 27,
			Blip = true,
			Interim = true,
			Name = 'Recolte Tabac Brun',
			Type = 'work',
			Item = {
				{
					name = 'Feuilles de tabac brun',
					db_name = 'tabacbrun',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 9000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour récolter du tabac",
		},
        
		SechageBrun = {
			Pos = { x = 1243.28, y = 1866.7, z = 77.99 },
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'Sechage Tabac Brun',
			Type = 'work',
			Item = {
				{
					name = 'Feuilles de tabac brun séchées',
					db_name = 'tabacbrunsec',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'tabacbrun',
					requires_name = 'Feuilles de tabac brun',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour sécher les feuilles de tabac",
		},
	
		CigaretteWork = {
			Pos = {x = 2351.39,  y = 3128.42,  z = 47.5},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = 'Transformation Firewood',
			Type = 'work',
			Item = {
				{
					name = "Cigarette Firewood",
					db_name = 'cigarette',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'tabacbrunsec',
					requires_name = 'Feuilles de tabac brun séchées',
					remove2 = 1,
					requires2 = 'rolpaper',
					requires2_name = "Papier à rouler",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour rouler des cigarettes"
		},

		Delivery2 = {
			Pos = {x = -710.00, y = -2225.00, z = 5.00},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'Vente Tabac',
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = "delivery",
					time = 1000,
					remove = 1,
					max = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 7,
					requires = 'tabacbrunsec',
					requires_name = 'Feuilles de tabac brun séchées',
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre du tabac"
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
			Name = _U('t_champblond'),
			Type = 'work',
			Item = {
				{
					name = _U('t_tabacblond'),
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
			Hint = _U('t_tabacpickup')
		},
		SechageBlond = {
			Pos = { x = 1241.28, y = 1866.7, z = 77.99 },
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = _U('t_sechoire'),
			Type = 'work',
			Item = {
				{
					name = _U('t_tabacblondsec'),
					db_name = 'tabacblondsec',
					time = 2000,
					max = 20,
					add = 1,
					remove = 1,
					requires = 'tabacblond',
					requires_name = _U('t_tabacblond'),
					drop = 5000
				}
			},
			Hint = _U('t_sechoirepickup')
		},
	
        
       		CigaretteWork2 = {
			Pos = {x = -103.97, y = 6208.79, z = 30.02},
			Size = {x = 1.0, y = 1.0, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = false,
			Interim = true,
			Name = _U('t_malboro'),
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
					requires_name = _U('t_tabacblondsec'),
					drop = 10000
				}
			},
			Hint = _U('t_prodmalboro')
		}, 
				Delivery2 = {
			Pos = {x = -725.00, y = -2225.00, z = 5.00},
			Color = {r = 255, g = 255, b = 255},
			Size = {x = 2.5, y = 2.5, z = 0.2},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = 'Vente  Malbora',
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = 'delivery',
					time = 10000,
					remove = 1,
					max = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 14,
					requires = 'malbora',
					requires_name = 't_malbora',
					drop = 10000
				}
			},
			Hint = 's_deliver'
		},
]]		