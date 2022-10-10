chemical = {

	BlipInfos = {
		Sprite = 304,
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
--[[
	Zones = {

		CloakRoom = {
			Pos = {x = 3526.8,  y = 3735.48,  z = 36.68},
			Size = {x = 1.5, y = 1.5, z = 0.2},
			Color = {r = 30, g = 144, b = 255},
			Marker = 3,
			Blip = true,
			Interim = true,
			Name = "Vestiaire",
			Type = 'cloakroom',
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Vestiaire'
		},

                Coffre = {
			Pos   = { x = 0.0,  y = 0.0,  z = 0.0 },
			Size  = { x = 1.5, y = 1.5, z = 0.2 },
			Color = { r = 30, g = 144, b = 255 },
			Marker  = 23,
			Blip = false,
			Interim = false,
			Name = "Coffre",
			Type = 'coffre',
			Hint = 'Appuyez sur ~INPUT_CONTEXT~ pour ouvrir le Coffre'
		},

		CollectRiviere = {
			Pos = {x = 2629.2,  y = 2869.4,  z = 43.8},
			Size = {x = 3.5, y = 3.5, z = 2.0},
			Color = {r = 136, g = 243, b = 216},
			Marker = 1,
			Blip = true,
			Interim = true,
			Name = "R�colte de soufre",
			Type = 'harvest',
			--Minigame = true,
			Item = {
				{
					name = "Soufre",
					db_name = 'soufre',
					time = 1000,
					max = 50,
					add = 1,
					requires = 'nothing',
					requires_name = 'Nothing',
					drop = 100
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour recolter du soufre"
		},

		Chemtraitement = {
			Pos = {x = 2740.0,  y = 1641.12,  z = 24.56},
			Size = {x = 3.5, y = 3.5, z = 2.0},
			Color = {r = 30, g = 144, b = 255},
			Marker = 23,
			Blip = true,
			Interim = false,
			Name = "Traitement du soufre",
			Type = 'work',
			Item = {
				{
					name = "Acide Sulfurique",
					db_name = 'acidsoufre',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'Soufre',
					requires_name = "soufre",
					drop = 100
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour traiter le soufre"
		},
		
		LabChimique = {
			Pos = {x = 3554.8,  y = 3671.68,  z = 33.88},
			Size = {x = 3.5, y = 3.5, z = 2.0},
			Color = {r = 30, g = 144, b = 255},
			Marker = 23,
			Blip = true,
			Interim = false,
			Name = "Laboratoire",
			Type = 'menu',
			Item = {
				{
					name = "Bijouserti",
					db_name = 'bijou2',
					time = 1000,
					max = 50,
					add = 1,
					remove = 1,
					requires = 'lingotor',
					requires_name = "Lingot d'or",
					remove2 = 1,
					requires2 = 'perle',
					requires2_name = "Perle",
					drop = 100
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour produire un bijou"
		},
		
		Deliverysoufre = {
			Pos = {x = -700.00, y = -2225.00, z = 5.00},
			Color = {r = 30, g = 144, b = 255},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 23,
			Blip = true,
			Interim = false,
			Name = "D�pot de soufre",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = "delivery",
					time = 1000,
					remove = 1,				
					max = 5, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 100,
					requires = 'soufre',
					requires_name = "Soufre",
					drop = 100
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre du soufre"
		},
		
		Deliveryacid = {
			Pos = {x = -725.00, y = -2225.00, z = 5.00},
			Color = {r = 30, g = 144, b = 255},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = 23,
			Blip = true,
			Interim = false,
			Name = "Dépot de l'acide",
			Type = 'delivery',
			Spawner = 1,
			Item = {
				{
					name = "delivery",
					time = 1000,
					remove = 1,
					max = 50, -- if not present, probably an error at itemQtty >= item.max in esx_jobs_sv.lua
					price = 100,
					requires = 'acidsoufre',
					requires_name = "Acide sulfurique",
					drop = 100
				}
			},
			Hint = "Appuyez sur ~INPUT_CONTEXT~ pour vendre l'acide sulfurique"
		},

		VehicleSpawner = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Color = {r = 30, g = 144, b = 255},
			Marker = 1,
			Blip = false,
			Interim = true,
			Name = _U('spawn_veh'),
			Type = 'vehspawner',
			Spawner = 1,
			Hint = _U('spawn_veh_button'),
			Caution = 2000
		},

		VehicleSpawnPoint = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 3.0, y = 3.0, z = 1.0},
			Marker = -1,
			Blip = false,
			Interim = true,
			Name = _U('service_vh'),
			Type = 'vehspawnpt',
			Spawner = 1,
			Heading = 264.40
		},

		VehicleDeletePoint = {
			Pos = {x = 0.0, y = 0.0, z = 0.0},
			Size = {x = 5.0, y = 5.0, z = 1.0},
			Color = {r = 30, g = 144, b = 255},
			Marker = 1,
			Blip = false,
			Interim = true,
			Name = _U('return_vh'),
			Type = 'vehdelete',
			Hint = _U('return_vh_button'),
			Spawner = 1,
			Caution = 2000,
			GPS = 0,
			Teleport = 0
		},
	},]]
}