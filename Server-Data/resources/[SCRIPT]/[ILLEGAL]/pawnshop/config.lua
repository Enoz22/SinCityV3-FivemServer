Config = {}

-- Change menu alignment
Config.MenuAlign = "top-left"

-- Change items that can be sold at the pawnshop, the number behind = is the price
Config.PawnshopItems = {
	white_phone = 2500,
	bijou = 1000,
	goldwatch = 2000,
	florindor = 18,
	pepiteor = 9,
	skin_5 = 100,
	trophy_coyote = 500,
}

Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.

Config.PawnshopLocation =  {x = 1011.13, y = -2873.66, z = 38.16}

-- Pawnshop blip
--Config.PawnshopBlipText = "Pawnshop"
--Config.PawnshopBlipColor = 5
--Config.PawnshopBlipSprite = 272

-- Opening hours
Config.EnableOpeningHours = true -- Enable opening hours? If disabled you can always open the pawnshop.
Config.OpenHour = 18 -- From what hour should the pawnshop be open?
Config.CloseHour = 1 -- From what hour should the pawnshop be closed?