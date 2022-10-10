Avocat1 = {

	BlipInfos = {
		Sprite = 304,
		Color = 50
	},

	PrivateName = "Avocat1",
	
	Vehicles = {

		Truck = {
			Spawner = 1,
			Hash = 'rumpo2',
			Trailer = '',
			HasCaution = true
		}
	},

	Zones = {

		CloakRoom = {
			Pos = {x = -1286.33, y = -561.48, z = 31.71},
			Size = {x = 1.5, y = 1.5, z = 0.2},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "Vestiaire",
			Type = 'cloakroom',
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Vestiaire'
		},
--[[
	    Coffre = {
			Pos   = { x = -1281.24,  y = -566.52,  z = 31.72 },
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
			Heading = 229.05
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
	
		Redactdocument = {
			Pos = {x = 2736.94, y = 1417.99, z = 23.48},
			Size = {x = 20.0, y = 20.0, z = 1.0},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "Bureau Avocat",
			Type = 'work',
			Item = {
				{
					name = "Document juridique",
					db_name = 'avocatdoc',
					time = 15000,
					max = 24,
					add = 1,
					remove = 10,
					requires = 'paper',
					requires_name = 'Papiers',
					drop   = 10000
				}
			},
			Hint = 'f_drillbutton',
			GPS = {x = 2736.94, y = 1417.99, z = 23.48}
		},

		Docsigned = {
			Pos = {x = 2736.94, y = 1417.99, z = 23.48},
			Size = {x = 10.0, y = 10.0, z = 1.0},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "Departement de police",
			Type = 'work',
			Item = {
				{
					name = "Document juridique signé",
					db_name = 'avocatdoc2',
					time = 5000,
					max = 24,
					add = 1,
					remove = 1,
					requires = 'avocatdoc',
					requires_name = "Document juridique",
					drop   = 10000
				}
			},
			Hint = 'f_refine_fuel_button',
			GPS = {x = 265.75, y = -3013.39, z = 4.73}
		},

		JuridicPost = {
			Pos = {x = 491.40, y = -2163.37, z = 4.91},
			Size = {x = 10.0, y = 10.0, z = 1.0},
			Color = {r = 255, g = 255, b = 255},
			Marker = 1,
			Blip = true,
			Interim = false,
			Name = "Bureau juridique",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = 'delivery',
					time = 2000,
					remove = 1,
					max = 100, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 120,
					requires = 'avocatdoc2',
					requires_name = "Document juridique signé",
					drop = 10000
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour déposer un document signé",
			GPS = {x = 491.40, y = -2163.37, z = 4.91}
		},
		]]
	},
}
