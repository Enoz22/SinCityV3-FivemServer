Config = {}

Config.HasFuelEvent 		= true		-- set to false if you do not have an event in your fueling script, that adds fuel.
Config.ImpoundFees 			= 500		-- set impound fees to get vehicle from impound
Config.PayImpoundWithCash 	= false		-- set to false, to pay with bank money.

Config.Garages = {

	[1] = {
		label = "1",
		pos = {212.86,-797.53,30.87},
		heading = 338.93,
		-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	[2] = {
		label = "2",
		pos = {365.83,291.86,103.41},
		heading = 155.61,
		-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	-- [3] = {
	-- 	label = "3",
	-- 	pos = {-1640.44,-907.17,8.69},
	-- 	heading = 138.44,
	--   blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
    --     [4] = {
	-- 	label = "4",
	-- 	pos = {-58.32,336.12,111.51},
	-- 	heading = 138.44,
	--  blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- }, 
	-- [5] = {
	-- 	label = "5",
	-- 	pos = {-3024.13,103.67,11.62},
	-- 	heading = 36.29,
	-- 	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [6] = {
	-- 	label = "6",
	-- 	pos = {-929.99,-166.52,41.88},
	-- 	heading = 293.46,
	-- 	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [7] = {
	-- 	label = "7",
	-- 	pos = {-1892.62,2004.27,141.78},
	-- 	heading = 283.86,
	-- 	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	[8] = {
		label = "3",
		pos = {2004.68,3072.36,47.05},
		heading = 277.10,
		-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	[9] = {
		label = "4",
		pos = {1737.98,3718.69,34.05},
		heading = 18.52,
		-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	-- [10] = {
	-- 	label = "10",
	-- 	pos = {1692.13,4782.43,41.92},
	-- 	heading = 86.17,
	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	[11] = {
		label = "11",
		pos = {121.79,6617.11,31.84},
		heading = 224.34,
		-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	[12] = {
		label = "12",
		pos = {1402.01,1118.47,114.84},
		heading = 83.09,
		-- blip = {enable = false, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	-- [13] = {
	-- 	label = "13",
	-- 	pos = {-1071.8, 4935.72, 212.25},
	-- 	heading = 146.00,
	-- 	-- blip = {enable = false, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	[14] = {
		label = "14",
		pos = {1373.66, -1523.92, 56.91},
		heading = 146.00,
		-- blip = {enable = false, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	-- [15] = {
	-- 	label = "15",
	-- 	pos = {-1189.94, -1486.96, 4.38},
	-- 	heading = 214.41,
	-- 	-- blip = {enable = false, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [16] = {
	-- 	label = "16",
	-- 	pos = {242.42, -1699.46, 29.12},
	-- 	heading = 224.22,
	-- 	 blip = {enable = false, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	[17] = {
		label = "17",
		pos = {-112.41, -1603.55, 31.6},
		heading = 318.43,
		-- blip = {enable = false, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	-- [18] = {
	-- 	label = "18",
	-- 	pos = {327.86, -204.04, 54.08},
	-- 	heading = 162.28,
	-- 	-- blip = {enable = false, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [19] = {
	-- 	label = "19",
	-- 	pos = {-969.24, -1470.42, 5.01},
	-- 	heading = 162.28,
	-- blip = {enable = false, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	[20] = {
		label = "20",
		pos = {117.76, -1950.45, 20.75},
		heading = 323.5,
		-- blip = {enable = false, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	[21] = {
		label = "21",
		pos = {307.76, -2021.58, 20.45},
		heading = 48.73,
		-- blip = {enable = false, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	-- [22] = {
	-- 	label = "22",
	-- 	pos = {426.74, -1520.47, 29.28},
	-- 	heading = 224.22,
	-- 	 blip = {enable = false, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	[23] = {
		label = "23",
		pos = {-2660.46, 1307.44, 147.12},
		heading = 266.24,
		-- blip = {enable = false, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	-- [24] = {
	-- 	label = "24",
	-- 	pos = {971.27, -140.27, 74.36},
	-- 	heading = 62.11,
	-- 	-- blip = {enable = false, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [25] = {
	-- 	label = "25",
	-- 	pos = {2374.23, 2581.31, 46.67},
	-- 	heading = 262.13,
	-- blip = {enable = false, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [26] = {
	-- 	label = "26",
	-- 	pos = {2918.57, 4378.08, 50.41},
	-- 	heading = 262.13,
	-- 	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [27] = {
	-- 	label = "27",
	-- 	pos = {-1093.86, 4946.73, 218.35},
	-- 	heading = 250.86,
	-- 	-- blip = {enable = false, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [28] = {
	-- 	label = "28",
	-- 	pos = {-126.6, 1004.92, 235.72},
	-- 	heading = 250.86,
	-- blip = {enable = false, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [29] = {
	-- 	label = "29",
	-- 	pos = {92.07,-208.10,54.49},
	-- 	heading = 332.29,
	-- 	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [30] = {
	-- 	label = "30",
	-- 	pos = {-308.56,-931.84,31.08},
	-- 	heading = 176.25,
	-- 	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [31] = {
	-- 	label = "31",
	-- 	pos = {-1188.56,-686.8,25.92},
	-- 	heading = 176.25,
	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	[32] = {
		label = "32",
		pos = {-1445.04,-680.8,26.4},
		heading = 135.05,
		-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	-- [33] = {
	-- 	label = "33",
	-- 	pos = {-1398.2,63.92,53.4},
	-- 	heading = 359.96,
	-- 	 blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	[34] = {
		label = "5",
		pos = {-381.0,292.44,84.84},
		heading = 150.44,
		-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	-- [35] = {
	-- 	label = "35",
	-- 	pos = {-489.44,-253.0,35.68},
	-- 	heading = 109.56,
	-- 	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	[36] = {
		label = "6",
		pos = {144.32,-1313.76,28.96},
		heading = 236.28,
		-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	-- [37] = {
	-- 	label = "37",
	-- 	pos = {-726.52,-2031.28,8.88},
	-- 	heading = 232.28,
	-- 	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [38] = {
	-- 	label = "38",
	-- 	pos = {896.04,-62.08,78.76},
	-- 	heading = 333.00,
	-- 	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [39] = {
	-- 	label = "39",
	-- 	pos = {2367.22,3124.66,48.39},
	-- 	heading = 356.28,
	-- 	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [40] = {
	-- 	label = "40",
	-- 	pos = {1365.89,4384.35,44.32},
	-- 	heading = 279.00,
	-- 	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [41] = {
	-- 	label = "41",
	-- 	pos = {-761.8,5538.48,33.48},
	-- 	heading = 279.00,
	-- 	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	[42] = {
		label = "7",
		pos = {-339.43,6145.42,31.48},
		heading = 221.79,
		-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	[43] = {
		label = "8",
		pos = {4500.39,-4544.77,4.03},
		heading = 22.27,
		-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	-- [44] = {
	-- 	label = "44",
	-- 	pos = {1865.28,2584.08,45.68},
	-- 	heading = 358.80,
	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [45] = {
	-- 	label = "45",
	-- 	pos = {387.12,-1658.72,27.32},
	-- 	heading = 52.20,
	-- 	 blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [46] = {
	-- 	label = "46",
	-- 	pos = {1060.88,-1975.28,31.0},
	-- 	heading = 333.20,
	-- 	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [47] = {
	-- 	label = "47",
	-- 	pos = {-182.2,-1963.48,27.64},
	-- 	heading = 18.90,
	-- 	 blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [48] = {
	-- 	label = "48",
	-- 	pos = {-1697.32,43.64,65.08},
	-- 	heading = 203.32,
	-- 	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [49] = {
	-- 	label = "49",
	-- 	pos = {-412.62,1208.09,325.84},
	-- 	heading = 155.84,
	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [50] = {
	-- 	label = "50",
	-- 	pos = {1153.86,-475.49,66.41},
	-- 	heading = 129.21,
	-- 	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	-- [51] = {
	-- 	label = "impound",	-- dont touch the label!
	-- 	pos = {410.02,-1638.29,29.29},
	-- 	heading = 5.94,
	-- 	blip = {enable = true, sprite = 527, display = 4, scale = 0.4, color = 7, name = "Fourriere 1"},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 0, b = 0, a = 100}},
	-- },
	-- [52] = {
	-- 	label = "impound",	-- dont touch the label!
	-- 	pos = {1277.19,3627.9,33.04},
	-- 	heading = 14.36,
	-- 	blip = {enable = true, sprite = 527, display = 4, scale = 0.4, color = 7, name = "Fourriere 2"},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 0, b = 0, a = 100}},
	-- },
	-- [53] = {
	-- 	label = "police",	-- dont touch the label!
	-- 	pos = {-1068.96,-853.88,4.87},
	-- 	heading = 22.52,
	-- 	blip = {enable = true, sprite = 527, display = 4, scale = 0.4, color = 38, name = "Fourriere Saisie 1"},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 0, g = 0, b = 255, a = 100}},
	-- },
	-- [54] = {
	-- 	label = "police",	-- dont touch the label!
	-- 	pos = {433.69,-1014.52,28.78},
	-- 	heading = 352.84,
	-- 	blip = {enable = true, sprite = 527, display = 4, scale = 0.4, color = 38, name = "Fourriere Saisie 2"},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 0, g = 0, b = 255, a = 100}},
	-- },
	-- [55] = {
	-- 	label = "51",
	-- 	pos = {-433.29,-344.77,24.22},
	-- 	heading = 102.042,
	-- 	 blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 0, b = 0, a = 100}},
	-- },
	-- [56] = {
	-- 	label = "52",
	-- 	pos = {-1298.80,260.40,63.28},
	-- 	heading = 96.84,
	-- 	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },

	[58] = {
		label = "54",
		pos = {-618.39,-922.19,23.17},
		heading = 357.69,
		-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	-- [59] = {
	-- 	label = "55",
	-- 	pos = {-1658.77,-225.03,54.99},
	-- 	heading = 165.06,
	-- 	-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	[60] = {
		label = "56",
		pos = {431.55,6466.73,28.77},
		heading = 222.60,
		-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	[61] = {
		label = "57",
		pos = {761.76,-969.64,25.64},
		heading = 222.60,
		-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	[62] = {
		label = "58",
		pos = {5140.88,-4627.24,2.48},
		heading = 75.52,
		-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	[63] = {
		label = "59",
		pos = {2685.96,2765.64,37.88},
		heading = 207.08,
		-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	[64] = {
		label = "60",
		pos = {-308,6283.23,31.49},
		heading = 132.98,
		-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	[65] = {
		label = "61",
		pos = {-110.42,3608.5,40.27},
		heading = 9.85,
		--blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage61"},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	-- [66] = {
	-- 	label = "66",
	-- 	pos = {1414.77,-1504.38,60.08},
	-- 	heading = 160.7,
	-- 	--blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage62"},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
	[67] = {
		label = "63",
		pos = {1208.52,2712.36,38.00},
		heading = 181.11,
		-- blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage "},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	
}

-- ## JOB GARAGES ## --

Config.JobGarages = {
	[1] = {
		job = "police",
		pos = {-1052.17,-847.02,4.55},
		heading = 216.75,
		vehicles = {'code3cvpi','code3bmw','code310charg','code314charg','code314tahoe','code316fpiu','code316impala','code318charg','code318tahoe'},
		extra = {enable = true, pos = 463.31,-1019.32,28.1, h = 267.74},
		blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 3, name = "Garage Police"},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	[2] = {
		job = "ambulance",
		pos = {-491.39,-336.75,34.37},
		heading = 166.92,
		vehicles = {'20ramambo','ems'},
		extra = {enable = true, pos = 463.31,-1019.32,28.1, h = 267.74},
		blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 4, name = "Garage EMS"},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	[3] = {
		job = "taxi",
		pos = {907.93,-176.18,74.15},
		heading = 238.57,
		vehicles = {'taxi','glendale'},
		extra = {enable = true, pos = 463.31,-1019.32,28.1, h = 267.74},
		blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 5, name = "Garage Taxi"},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	[4] = {
		job = "sheriff",
		pos = {-455.06,6001.92,31.34},
		heading = 96.01,
		vehicles = {'sheriff','sheriff2','sheriffalamo','sheriffcq4','sherifffug','sheriffinsurgent','sheriffoss','sheriffroamer','sheriffscoutnew','sheriffstalker','sheriffthrust','polspeedo','scorcher'},
		extra = {enable = true, pos = 463.31,-1019.32,28.1, h = 267.74},
		blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 4, name = "Garage Shériff"},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	[5] = {
		job = "goldsmith",
		pos = {1060.88,-1975.28,31.0},
		heading = 333.20,
		extra = {enable = true, pos = 463.31,-1019.32,28.1, h = 267.74},
		blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 4, name = "Garage orfèvre"},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},

	[6] = {
		job = "tailorp",
		pos = {-805.68,-1305.04,5.00},
		heading = 262.56,
		extra = {enable = true, pos = 463.31,-1019.32,28.1, h = 267.74},
		blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 4, name = "Garage couturier"},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},

	[7] = {
		job = "farmp",
		pos = {2538.84,4666.68,33.96},
		heading = 88.56,
		extra = {enable = true, pos = 463.31,-1019.32,28.1, h = 267.74},
		blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 4, name = "Garage fermier"},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},

	[8] = {
		job = "fishermanp",
		pos = {1365.89,4384.35,44.32},
		heading = 279.00,
		extra = {enable = true, pos = 463.31,-1019.32,28.1, h = 267.74},
		blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 4, name = "Garage pêche"},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},
	
	[9] = {
		job = "fuelerp",
		pos = {2918.57, 4378.08, 50.41},
		heading = 262.13,
		extra = {enable = true, pos = 463.31,-1019.32,28.1, h = 267.74},
		blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 4, name = "Garage raffinerie"},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},

	[10] = {
		job = "vignep",
		pos = {-1892.62,2004.27,141.78},
		heading = 283.86,
		extra = {enable = true, pos = 463.31,-1019.32,28.1, h = 267.74},
		blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 4, name = "Garage vigne"},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},	

	[11] = {
		job = "brasseriep",
		pos = {-1298.80,260.40,63.28},
		heading = 96.84,
		extra = {enable = true, pos = 463.31,-1019.32,28.1, h = 267.74},
		blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 4, name = "Garage brasseur"},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},

	[12] = {
		job = "fire",
		pos = {-1697.32,43.64,65.08},
		heading = 203.32,
		extra = {enable = true, pos = 463.31,-1019.32,28.1, h = 267.74},
		blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 4, name = "Garage pompier"},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},

	[13] = {
		job = "unicorn",
		pos = {144.32,-1313.76,28.96},
		heading = 236.28,
		extra = {enable = true, pos = 463.31,-1019.32,28.1, h = 267.74},
		blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 4, name = "Garage unicorn"},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},

	[14] = {
		job = "mineurp",
		pos = {-1658.77,-225.03,54.99},
		heading = 165.06,	
		extra = {enable = true, pos = 463.31,-1019.32,28.1, h = 267.74},
		blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 4, name = "Garage mineur"},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},

	[15] = {
		job = "tabacp",
		pos = {2367.22,3124.66,48.39},
		heading = 356.28,
		extra = {enable = true, pos = 463.31,-1019.32,28.1, h = 267.74},
		blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 4, name = "Garage tabac"},
		marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	},

	-- [16] = {
	-- 	job = "gouv",
	-- 	pos = {-489.44,-253.0,35.68},
	-- 	heading = 238.57,
	-- 	extra = {enable = true, pos = 463.31,-1019.32,28.1, h = 267.74},
	-- 	blip = {enable = true, sprite = 357, display = 4, scale = 0.4, color = 4, name = "Garage gouvernement"},
	-- 	marker = {enable = true, drawDist = 10.0, type = 36, scale = {x = 0.4, y = 0.4, z = 0.4}, color = {r = 255, g = 255, b = 255, a = 100}},
	-- },
}


-- ## PRIVATE GARAGES ## --

Config.EnablePrivateGarages 	= true		-- REQUIRES K4MB1 Garage shells | set this to false to disable private garages
Config.PayGarageWithCash 		= false		-- Set to false to use bank money instead
Config.OwnedGarageBlip 			= true		-- Blip for owned garage (source player)
Config.PlayerGarageBlip 		= false		-- Blip to view other players' owned garages
Config.PurchasableGarageBlip 	= false		-- Blip to show garages forsale

-- Blip Settings for ALL private garages:
--Config.PvtGarageBlip = {
--	enable = true,
--	sprite = 357,
--	display = 4,
--	scale = 0.4,
--	color = 3
--} 

-- Marker settings for ALL private garages:
Config.PvtGarageMarker = {
	enable = true,
	drawDist = 10.0,
	type = 36,
	scale = {x = 0.4, y = 0.4, z = 0.4},
	color = {r = 255, g = 255, b = 255, a = 100}
}

-- Defined shell props // do not touch this if you dont know what u are doing
Config.GarageShells = {
	['garage_small'] = `shell_garages`, 
	['garage_medium'] = `shell_garagem`, 
	['garage_large'] = `shell_garagel`, 
}

-- Garage coords around the map. Feel free to add as many as you wish :)
Config.PrivateGarages = {
	[1] = { pos = {-811.01,806.07,202.18}, h = 19.92, prop = 'garage_large', price = 10000 },
	[2] = { pos = {-851.28,788.69,191.73}, h = 188.51, prop = 'garage_medium', price = 10000 },
	[3] = { pos = {-904.57,781.17,186.32}, h = 189.47, prop = 'garage_large', price = 20000 },
	[4] = { pos = {-956.73,802.04,177.72}, h = 1.8, prop = 'garage_large', price = 20000 },
	[5] = { pos = {-1002.26,784.79,171.46}, h = 112.48, prop = 'garage_large', price = 20000 },
	[6] = { pos = {-964.82,763.23,175.43}, h = 227.8, prop = 'garage_small', price = 5000 }
}

-- Offset spots relative to the spawned shell. Do not mess with this, if you don't know what u are doing. Read more about offsets here: https://runtime.fivem.net/doc/natives/?_0x1899F328B0E12848
Config.Offsets = {
	['garage_small'] = {
		entrance = {0.0, -5.0, 0.0-0.975},
		heading = 1.39,
		veh = {
			[1] = {pos = {2.0, 0.0, 0.0}, heading = 181.59},
			[2] = {pos = {-2.0, 0.0, 0.0}, heading = 181.59},
		},
	},
	['garage_medium'] = {
		entrance = {0.0, -7.0, 0.0-0.975},
		heading = 0.47,
		veh = {
			[1] = {pos = {-4.97, -3.24, 0.0}, heading = 0.86},
			[2] = {pos = {0.0, -3.24, 0.0}, heading = 0.86},
			[3] = {pos = {4.97, -3.24, 0.0}, heading = 0.86},
			[4] = {pos = {-4.97, 3.24, 0.0}, heading = 180.0},
			[5] = {pos = {0.0, 3.24, 0.0}, heading = 180.0},
			[6] = {pos = {4.97, 3.24, 0.0}, heading = 180.0},
		},
	},
	['garage_large'] = {
		entrance = {0.0, -16.31, 0.0-0.975},
		heading = 0.45,
		veh = {
			[1] = {pos = {4.77, -10.0, 0.0}, heading = 91.0},
			[2] = {pos = {4.77, -5.5, 0.0}, heading = 91.0},
			[3] = {pos = {4.77, -1.0, 0.0}, heading = 91.0},
			[4] = {pos = {4.77, 3.5, 0.0}, heading = 91.0},
			[5] = {pos = {4.77, 8.0, 0.0}, heading = 91.0},
			[6] = {pos = {-4.77, -10.0, 0.0}, heading = 272.26},
			[7] = {pos = {-4.77, -5.5, 0.0}, heading = 272.26},
			[8] = {pos = {-4.77, -1.0, 0.0}, heading = 272.26},
			[9] = {pos = {-4.77, 3.5, 0.0}, heading = 272.26},
			[10] = {pos = {-4.77, 8.0, 0.0}, heading = 272.26},
		},
	},
}

-- Predefined spawn spots for garages. Do not touch this, unless you know what u are messing with. 
Config.GarageSpawns = {
	[1] = { pos = {620.0,1000.0,-100.0}, inUse = false },
	[2] = { pos = {700.0,1000.0,-100.0}, inUse = false },
	[3] = { pos = {760.0,1000.0,-100.0}, inUse = false },
	[4] = { pos = {820.0,1000.0,-100.0}, inUse = false },
	[5] = { pos = {880.0,1000.0,-100.0}, inUse = false },
	[6] = { pos = {940.0,1000.0,-100.0}, inUse = false },
	[7] = { pos = {1000.0,1000.0,-100.0}, inUse = false },
	[8] = { pos = {1060.0,1000.0,-100.0}, inUse = false },
	[9] = { pos = {1120.0,1000.0,-100.0}, inUse = false },
	[10] = { pos = {1180.0,1000.0,-100.0}, inUse = false },
	[11] = { pos = {1240.0,1000.0,-100.0}, inUse = false },
	[12] = { pos = {1300.0,1000.0,-100.0}, inUse = false },
	[13] = { pos = {1360.0,1000.0,-100.0}, inUse = false },
	[14] = { pos = {1420.0,1000.0,-100.0}, inUse = false },
	[15] = { pos = {1480.0,1000.0,-100.0}, inUse = false },
	[16] = { pos = {1540.0,1000.0,-100.0}, inUse = false },
	[17] = { pos = {1600.0,1000.0,-100.0}, inUse = false },
	[18] = { pos = {1660.0,1000.0,-100.0}, inUse = false },
	[19] = { pos = {1720.0,1000.0,-100.0}, inUse = false },
	[20] = { pos = {1780.0,1000.0,-100.0}, inUse = false },
	[21] = { pos = {1840.0,1000.0,-100.0}, inUse = false },
	[22] = { pos = {1900.0,1000.0,-100.0}, inUse = false },
	[23] = { pos = {1960.0,1000.0,-100.0}, inUse = false },
	[24] = { pos = {2020.0,1000.0,-100.0}, inUse = false },
	[25] = { pos = {2080.0,1000.0,-100.0}, inUse = false },
	[26] = { pos = {2140.0,1000.0,-100.0}, inUse = false },
	[27] = { pos = {2200.0,1000.0,-100.0}, inUse = false },
	[28] = { pos = {2260.0,1000.0,-100.0}, inUse = false },
	[29] = { pos = {2320.0,1000.0,-100.0}, inUse = false },
	[30] = { pos = {2380.0,1000.0,-100.0}, inUse = false },
	[31] = { pos = {620.0,1150.0,-100.0}, inUse = false },
	[32] = { pos = {700.0,1150.0,-100.0}, inUse = false },
	[33] = { pos = {760.0,1150.0,-100.0}, inUse = false },
	[34] = { pos = {820.0,1150.0,-100.0}, inUse = false },
	[35] = { pos = {880.0,1150.0,-100.0}, inUse = false },
	[36] = { pos = {940.0,1150.0,-100.0}, inUse = false },
	[37] = { pos = {1000.0,1150.0,-100.0}, inUse = false },
	[38] = { pos = {1060.0,1150.0,-100.0}, inUse = false },
	[39] = { pos = {1120.0,1150.0,-100.0}, inUse = false },
	[40] = { pos = {1180.0,1150.0,-100.0}, inUse = false },
	[41] = { pos = {1240.0,1150.0,-100.0}, inUse = false },
	[42] = { pos = {1300.0,1150.0,-100.0}, inUse = false },
	[43] = { pos = {1360.0,1150.0,-100.0}, inUse = false },
	[44] = { pos = {1420.0,1150.0,-100.0}, inUse = false },
	[45] = { pos = {1480.0,1150.0,-100.0}, inUse = false },
	[46] = { pos = {1540.0,1150.0,-100.0}, inUse = false },
	[47] = { pos = {1600.0,1150.0,-100.0}, inUse = false },
	[48] = { pos = {1660.0,1150.0,-100.0}, inUse = false },
	[49] = { pos = {1720.0,1150.0,-100.0}, inUse = false },
	[50] = { pos = {1780.0,1150.0,-100.0}, inUse = false },
	[51] = { pos = {1840.0,1150.0,-100.0}, inUse = false },
	[52] = { pos = {1900.0,1150.0,-100.0}, inUse = false },
	[53] = { pos = {1960.0,1150.0,-100.0}, inUse = false },
	[54] = { pos = {2020.0,1150.0,-100.0}, inUse = false },
	[55] = { pos = {2080.0,1150.0,-100.0}, inUse = false },
	[56] = { pos = {2140.0,1150.0,-100.0}, inUse = false },
	[57] = { pos = {2200.0,1150.0,-100.0}, inUse = false },
	[58] = { pos = {2260.0,1150.0,-100.0}, inUse = false },
	[59] = { pos = {2320.0,1150.0,-100.0}, inUse = false },
	[60] = { pos = {2380.0,1150.0,-100.0}, inUse = false },
}