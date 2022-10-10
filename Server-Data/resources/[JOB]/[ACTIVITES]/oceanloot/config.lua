Config = {}
Config.pressMessage = "Appuyez sur [E] pour récuperer l'objet"
Config.sonarOnMessage = "Sonar On"
Config.sonarOffMessage = "Sonar Off"
Config.treasureAmount = 5; -- Choose how many treasures there will be.
Config.objectsPerArea = 100; -- There are 29 areas, so 100 * 29 = 2500 - 2900 objects
Config.drawlight = 50.0; -- if player distance is smaller than this value, object will be "highlighted"
Config.allowCommand = true -- if true then players can use command to use scubagear

Config.UsingLoader = false -- LOADER

--[[
	
	__README__

	If you are using ESX, rembember to add item "trashprobe" to your database.
	If you are not using ESX you can edit stuff at server_editable.lua to make this script work for example on vrp.

	To make this script work you need to add at least 1 item on both Config.itempool.treasure[1] and Config.itempool.trash[1].
	Otherwise there will be errors.
	______________
	Itempool tiers

		[1] 50.21% chance,
		[2] 24.94% chance,
		[3] 17.01% chance,
		[4] 7.33% chance,
		[5] 0.51% chance

	Itempool types

		weapon
		money
		item
	
	Examples

	--	{	name = "dollar",		label = "Dollar",			type = "money",		min = 50,	max = 1000	},
	--	{	name = "weapon_bottle",	label = "Broken Bottle",	type = "weapon",	min = 1,	max = 1		},
	--	{	name = "bread",			label = "Bread",			type = "item",		min = 5,	max = 20	},
	__________________________________________________________________________________________________________

]]
Config.itempool = {
	treasure = {
		[1] = {
			{	name = "stone",	label = "Pierre",	type = "item",	min = 1,	max = 2	},
			{	name = "iron",	label = "Fer",	type = "item",	min = 1,	max = 2	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		},
		[2] = {
			{	name = "perle",	label = "Perle",	type = "item",	min = 1,	max = 20	},
			{	name = "wood",	label = "Bois",	type = "item",	min = 1,	max = 15	},
			{	name = "crab",	label = "Crabe",	type = "item",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		},
		[3] = {
			{	name = "dollar",	label = "Dollar",	type = "money",	min = 1,	max = 150	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		},	
		[4] = {
			{	name = "bijou",	label = "Bijoux",	type = "item",	min = 1,	max = 5	},
			{	name = "weapon_bottle",	label = "Bouteille Cassée",	type = "weapon",	min = 1,	max = 1	},
			{	name = "whisky",	label = "Whisky",	type = "item",	min = 1,	max = 3	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},		
		},
		[5] = {
			{	name = "goldwatch",	label = "Montre en Or",	type = "item",	min = 1,	max = 3	},
			{	name = "methbrick",	label = "Fiole de Meth",	type = "item",	min = 1,	max = 1	},
			{	name = "caisalcool",	label = "Casse Alcool Sec",	type = "item",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},		
		}
	},

	trash = {
		[1] = {
			{	name = "stone",	label = "Pierre",	type = "item",	min = 1,	max = 2	},
			{	name = "iron",	label = "Fer",	type = "item",	min = 1,	max = 2	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		},
		[2] = {
			{	name = "perle",	label = "Perle",	type = "item",	min = 1,	max = 20	},
			{	name = "wood",	label = "Bois",	type = "item",	min = 1,	max = 15	},
			{	name = "crab",	label = "Crabe",	type = "item",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		},
		[3] = {
			{	name = "dollar",	label = "Dollar",	type = "money",	min = 1,	max = 150	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		},	
		[4] = {
			{	name = "bijou",	label = "Bijoux",	type = "item",	min = 1,	max = 5	},
			{	name = "weapon_bottle",	label = "Bouteille Cassée",	type = "weapon",	min = 1,	max = 1	},
			{	name = "whisky",	label = "Whisky",	type = "item",	min = 1,	max = 3	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},		
		},
		[5] = {
			{	name = "goldwatch",	label = "Montre en Or",	type = "item",	min = 1,	max = 3	},
			{	name = "methbrick",	label = "Fiole de Meth",	type = "item",	min = 1,	max = 1	},
			{	name = "caisalcool",	label = "Casse Alcool Sec",	type = "item",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},
		--	{	name = "",	label = "",	type = "",	min = 1,	max = 1	},		
		}
	}
}