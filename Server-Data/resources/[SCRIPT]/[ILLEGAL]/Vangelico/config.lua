Config = {}

Config.AirVent = {-635.94, -213.95, 53.54} -- First step
Config.AirVentDist = 15 -- Distance to show the ['air_vent'] text
Config.GasTime = 5 -- Time before removing the gas, in minutes
Config.RobTime = 3 -- How many minutes the thief has to rob the jewels before the robbery gets cancelled
Config.MinPolice = 0 -- Min amount of Cops online to trigger the robbery
Config.PoliceJobName = 'police'
Config.RewardMoney = true -- Give money?
Config.Account = 'black_money'
Config.Money = 1000 -- Money per stand
Config.RewardItem = true -- Reward item?
Config.Cooldown = 7200 -- 2 hour
Config.WeaponsWL = true -- Needs specific weapon to smash the glass?
Config.Weapons = { -- If player is using one of this weapons it will be able to smash the stands
	-1074790547, -- assault rifle
	-2067956739, -- crowbar
	-1786099057 -- bat
}
Config.ShootZone = {
	{-622.24,  y = -230.76,  z = 38.04}
}
Config.Items = {
	{item = 'bijou', amount = 2},
	{item = 'goldwatch', amount = 1}
}
Config.Lang = {
	['blip'] = 'Vangelico Jewelry',
	['air_vent'] = 'Inspecter',
	['plant_gas'] = 'Appuyer sur ~r~[E]~w~ pour fixer la bombe',
	['started'] = 'Braquage lancer',
	['police'] = 'L\'alarme de la bijouterie sonne la police est avertie',
	['break'] = 'Appuyer sur  ~r~[E]~w~ pour brisser le vitre',
	['needs_weapon'] = 'Il vous faut une arme spécial pour brisser les vitres',
	['stole'] = 'Vous avez volé ',
	
}
