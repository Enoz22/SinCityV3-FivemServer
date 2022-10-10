Config = {}

Config.Locale = 'fr'

Config.Delays = {
	WeedProcessing = 1000 * 10,
	MethProcessing = 1000 * 10,
	CokeProcessing = 1000 * 10,
	lsdProcessing = 1000 * 10,
	OpiumProcessing = 1000 * 10,
	thionylchlorideProcessing = 1000 * 10,
}

Config.ChemicalsConvertionItems = {
	hydrochloric_acid = 0,
	sodium_hydroxide = 0,
	sulfuric_acid = 0,
	lsa = 0,
}

Config.ChemicalsLicenseEnabled = false --A activer si besoin, les joueurs auront besoin de cette license pour faire de la LSD.

Config.LicensePrices = {
	weed_processing = {label = _U('license_weed'), price = 15000}
}

Config.Licenses = {
	chemicalslisence = 10000,
}

Config.GiveBlack = true

Config.CircleZones = {
	--Weed
	WeedField = {coords = vector3(1558.88, 4501.42, 51.26), name = _U('blip_WeedFarm'), color = 25, sprite = 496, radius = 100.0},
	WeedProcessing = {coords = vector3(347.49, -1255.59, 32.7), name = _U('blip_weedprocessing'), color = 25, sprite = 496, radius = 7.0},
	
	--meth
	MethProcessing = {coords = vector3(1010.29, -3194.96, -38.99), name = _U('blip_methprocessing'), color = 25, sprite = 496, radius = 7.0},
	HydrochloricAcidFarm = {coords = vector3(2706.46, 3078.99, 43.7), name = _U('blip_HydrochloricAcidFarm'), color = 25, sprite = 496, radius = 7.0},
	SulfuricAcidFarm = {coords = vector3(-1152.76, -1978.16, 13.16), name = _U('blip_SulfuricAcidFarm'), color = 25, sprite = 496, radius = 5.0},
    SodiumHydroxideFarm = {coords = vector3(1660.16, 4981.57, 45.39), name = _U('blip_SodiumHydroxideFarm'), color = 25, sprite = 496, radius = 7.0},
	
	--Chemicals
	--ChemicalsField = {coords = vector3(817.46, -3192.84, 5.9), name = _U('blip_ChemicalsFarm'), color = 25, sprite = 496, radius = 0.0},
	--ChemicalsConvertionMenu = {coords = vector3(3718.8, 4533.45, 21.67), name = _U('blip_ChemicalsProcessing'), color = 25, sprite = 496, radius = 0.0},
	
	--Coke
	CokeField = {coords = vector3(5428, -5756, 33.57), name = _U('blip_CokeFarm'), color = 25, sprite = 496, radius = 20.0},
    CokeProcessing = {coords = vector3(1090.04, -3194.79, -38.99), name = _U('blip_Cokeprocessing'),color = 25, sprite = 496, radius = 20.0},

	--LSD
	--lsdProcessing = {coords = vector3(91.26, 3749.31, 40.77), name = _U('blip_lsdprocessing'),color = 25, sprite = 496, radius = 20.0},
	--thionylchlorideProcessing = {coords = vector3(1903.98, 4922.70, 48.16), name = _U('blip_lsdprocessing'),color = 25, sprite = 496, radius = 20.0},
	
	--Opium
	OpiumField = {coords = vector3(1778.22, 6491.19, 65.4), name = _U('blip_Opiumfield'), color = 25, sprite = 496, radius = 20},
	OpiumProcessing = {coords = vector3(1037.52, -3205.35, -38.17), name = _U('blip_Opiumprocessing'), color = 25, sprite = 496, radius = 100.0},

	--DrugDealer
	--DrugDealer = {coords = vector3(-0.0, -0.0, 0.0), name = _U('blip_drugdealer'), color = 6, sprite = 378, radius = 25.0},
	
	--License
	--LicenseShop = {coords = vector3(0.0, 0.0, 0.0), name = _U('blip_lsdprocessing'),color = 25, sprite = 496, radius = 20.0},
}
