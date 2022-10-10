Config              = {}
Config.MarkerType   = 1
Config.DrawDistance = 100.0
Config.ZoneSize     = {x = 8.0, y = 8.0, z = 3.0}
-- Config.MarkerColor  = {r = 100, g = 204, b = 100}
Config.ShowBlips   = true  --markers visible on the map? (false to hide the markers on the map)

Config.RequiredCopsEau  = 0

Config.TimeToFarm    = 4 * 1000
Config.TimeToSell    = 5 * 850

Config.Locale = 'fr'

Config.Zones = {
	EauField =			{x = -752.26,	y = 4437.39,	z = 15.71,	name = _U('coke_field'),		sprite = 0,	color = 5},
	EauDealer =		{x = -1169.4,	y = -896.81,		z = 13.92,	name = _U('coke_dealer'),		sprite = 500,	color = 0},

 Blip = {
	Coords  = vector3(-752.26, 4437.39, 15.71),
	Sprite  = 1,
	Display = 4,
	Scale   = 1.0,
	Color   = 3
 },

 Blip2 = {
	Coords  = vector3(-1169.4, -896.81, 13.92),
	Sprite  = 1,
	Display = 4,
	Scale   = 1.0,
	Color   = 3
 },

}


---------------------------------
--- Copyright by ikNox#6088 ---
---------------------------------
