Config = {

--BLIPS FOR JOB CENTERS
BlipCenterSprite = 498,
BlipCenterColor = 3,
BlipCenterText = 'Pole Emploi',

MarkerSprite = 27,
MarkerColor = {17, 29, 210},
MarkerSize = 1.5,

LocationsJobCenters = { -- If you want you can setup locations to change jobs (Leave without entiries if you dont want locations) (ADDS 0.02 MS)
	{coords = vector3(238.48,-406.76,47.92), blip = true}
},

--Boss menu locations
BossMenuLocations = {

	-- {coords = vector3(448.53457641602,-973.14971923828,30.689594268799), job = "police", label = "POLICE"},
	{coords = vector3(-1113.37,-832.93,34.36), job = "police", label = "POLICE"},
	{coords = vector3(-196.13,-1340.22,34.9), job = "bennys", label = "bennys"},
	{coords = vector3(296.73,-936.93,52.81), job = "skybar", label = "SKYBAR"},
	{coords = vector3(908.21,-154.81,74.15), job = "taxi", label = "TAXI"},
	{coords = vector3(-1898.48,2068.39,141.02), job = "vignep", label = "VIGNE"},
	{coords = vector3(-449.21,6012.64,31.72), job = "sheriff", label = "SHERIFF"},
	{coords = vector3(192.35,-1650.46,29.82), job = "fire", label = "POMPIER"},
	{coords = vector3(334.88,-594.23,43.28), job = "ambulance", label = "AMBULANCE"},
	{coords = vector3(459.92,-265.91,71.24), job = "poolbar", label = "POOLBAR"},
	{coords = vector3(707.32,-967.00,30.41), job = "tailorp", label = "TEXTILE"},
	{coords = vector3(94.92,-1292.73,29.26), job = "unicorn", label = "UNICORN"},
	{coords = vector3(-575.03,-938.41,28.82), job = "reporterp", label = "WEAZEL NEW"},
	{coords = vector3(-1197.09,-891.93,14.00), job = "burger", label = "BURGERSHOT"},
	{coords = vector3(-1384.93,-592.32,30.32), job = "bahamas", label = "BAHAMAS"},
	{coords = vector3(-1053.88,-230.65,44.02), job = "lifeinvader", label = "LIFE INVADER'S"},
	{coords = vector3(-553.17,-188.96,38.22), job = "gouv", label = "GOUVERNEMENT"},
	{coords = vector3(-442.28,280.12,83.02), job = "split", label = "SPLIT"},
	--{coords = vector3(-381.31,263.27,86.42), job = "train", label = "SAKKA DINER'S"},
	--{coords = vector3(-173.66,302.02,100.92), job = "jap", label = "RESTO JAP"},
	{coords = vector3(416.59,6511.89,27.71), job = "brasseriep", label = "BRASSERIE"},
	{coords = vector3(1076.29,-1978.91,31.47), job = "goldsmithp", label = "FONDERIE"},
	{coords = vector3(2340.64,3126.55,48.21), job = "tabacp", label = "TABAC"},
	{coords = vector3(-558.55,5348.44,70.65), job = "lumberjackp", label = "BUCHERONS"},
	{coords = vector3(-303.51,6270.20,31.53), job = "blackwood", label = "BLACKWOOD"},
	{coords = vector3(1587.33,6457.81,26.01), job = "popsdinner", label = "POP'S DINNER'S"},
	{coords = vector3(2567.16,4652.02,34.08), job = "farmp", label = "FERMIER"},
	{coords = vector3(2889.68,4391.46,50.45), job = "fuelerp", label = "PETROLIER"},
	--{coords = vector3(3559.70,3674.61,28.12), job = "chemicalp", label = "HUMAN LAB'S"},
	{coords = vector3(2702.13,2775.52,37.88), job = "minerp", label = "MINEUR"},
	{coords = vector3(-125.03,-639.97,168.84), job = "immo", label = "IMMOBILIER"},
	{coords = vector3(1700.4130,3292.900,48.92), job = "aeroport", label = "SkyCenter"},
	{coords = vector3(808.82,-2159.19,29.62), job = "ammunation", label = "AMMUNATION"},
	{coords = vector3(1993.84,3045.26,50.51), job = "yellowjack", label = "YELLOWJACK"},
	{coords = vector3(953.16,78.79,111.25), job = "casinobar", label = "CASINOBAR"},
	{coords = vector3(5067.47,-4591.59,2.86), job = "farmcayo", label = "FARMCAYO"},
	{coords = vector3(4925.23,-5241.67,2.52), job = "gouvc", label = "GOUVERNEMENT CAYO"},
	{coords = vector3(1324.53,-1650.01,52.28), job = "tattoomara", label = "Tattoo East"},
	{coords = vector3(-296.49,6200.95,31.49), job = "tattooaod", label = "Tattoo Paleto"},
	{coords = vector3(-31.08,-1110.33,26.42), job = "cardealer", label = "PDM"}
},

--Boss menu users by grade name and their permissions
BossMenuUsers = {

	['boss'] = {canWithdraw = true, canDeposit = true, canHire = true, canRank = true, canFire = true, canBonus = true},
	['recruit'] = {canWithdraw = false, canDeposit = false, canHire = false, canRank = false, canFire = false, canBonus = false},

-- ammunation

	['boss'] = {canWithdraw = true, canDeposit = true, canHire = true, canRank = true, canFire = true, canBonus = true},
	['second'] = {canWithdraw = true, canDeposit = true, canHire = true, canRank = true, canFire = true, canBonus = true},
	['professionnel'] = {canWithdraw = false, canDeposit = true, canHire = false, canRank = false, canFire = false, canBonus = false},

-- casinobar
	
	['viceboss'] = {canWithdraw = true, canDeposit = true, canHire = true, canRank = true, canFire = true, canBonus = false}

},

DefaultJobsInJobCenter = { -- Jobs that can be added by going to the job center. For icons use https://fontawesome.com/
	
	{job = 'fueler', label = "Petrolier", icon = "fas fa-burn", description = "Vous recoltez du petrol et pouvez le vendre"},
	{job = 'fisherman', label = "Pecheur", icon = "fas fa-fish", description = "Pechez et faites vous du blé"},
	{job = 'farm', label = "Fermier", icon = "fas fa-cookie-bite", description = "Venez respirer l'air de la campagne"},
	{job = 'vigne', label = "Vigneron", icon = "fas fa-archway", description = "Recoltez et produisez du vin"},
	{job = 'tabac', label = "Tabagiste", icon = "fas fa-fish", description = "Recoltez et produisez du tabac"},
	{job = 'tailor', label = "Tailleur", icon = "fas fa-air-freshener", description = "Crée vos propres vêtements"},
	{job = 'brasserie', label = "Brasseur", icon = "fas fa-beer", description = "Faites de l'alcool et vendez-en"},
	--{job = 'slaughterer', label = "Abatteur", icon = "fas fa-bacon", description = "Faites du bon poulet pour les commerces"},
	{job = 'miner', label = "Mineur", icon = "fas fa-fish", description = "Venez vous faire de l'argent en recoltez des pierres precieuses"},
	--{job = 'farmcayo', label = "Fermier Cayo", icon = "fas fa-fish", description = "Venez recoltez des patates sur Cayo Perico"},
	--{job = 'chemical', label = "Chimiste", icon = "fas fa-fish", description = "Venez decouvrir les joies de la Chimie"},
	{job = 'lumberjack', label = "Bucheron", icon = "fas fa-apple-alt", description = "Recoltez du bois à la sueur de vos bras"}

},

Text = {

	['open_jobcenter_ui_hologram'] = '[~b~E~w~] Pôle emploi',
	['promoted'] = 'Vous avez etait promu',
	['promoted_other'] = 'Vous avez été promu dans un autre job!',
	['fired'] = 'Vous avez vir�e cette personne',
	['fired_other'] = 'Vous avez été vir�e',
	['hired'] = 'Vous avez ete recrutee',
	['bossmenu_hologram'] = '[~b~E~w~] Ouvrir Menu Boss',
	['action_success'] = 'Action reussi',
	['action_unsuccessful'] = 'Action non reussi',
	['cant_access_bossmenu'] = 'Vous n\'y avez pas acces',
	['insufficent_balance'] = 'Pas assez d\'argent',
	['bonus_given'] = 'Bonus donné!',
	['bonus_recieved'] = 'Vous avez recu un bonus +$'

}
	
}

-- Only change if you know what are you doing!
function SendTextMessage(msg)

		SetNotificationTextEntry('STRING')
		AddTextComponentString(msg)
		DrawNotification(0,1)

		--EXAMPLE USED IN VIDEO
		--exports['mythic_notify']:SendAlert('error', msg)

end
