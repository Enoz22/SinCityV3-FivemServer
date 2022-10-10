Config                            = {}
Config.DrawDistance               = 100.0
Config.MaxInService               = -1
Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.NPCSpawnDistance           = 500.0
Config.NPCNextToDistance          = 25.0
Config.platePrefix                = "AMMU"
Config.NPCJobEarnings             = { min = 40, max = 40 }
Config.Locale                     = 'fr'
Config.PrixClip					  = 40

--PRIX CONSTRUCTION ARMES

Config.Price = {

    weapon_nightstick 	= 500 ,
    weapon_stungun 		= 5000,
	weapon_snspistol	= 30000,
   -- weapon_pistol 	= 200,
    --weapon_pistol_mk2 = 400,
	weapon_combatpistol = 10000 , 
	--weapon_pistol50 	= 500,    
	weapon_doubleaction = 40000, 
    --weapon_musket 		= 1000 ,      
    --weapon_pumpshotgun 	= 750,   
    weapon_pumpshotgun_mk2 	= 75000,
    --weapon_bullpupshotgun 	= 1100,
    --weapon_carbinerifle 	= 12000,
    --weapon_carbinerifle_mk2 = 13000,
    --weapon_specialcarbine 	= 13500 ,
    --weapon_specialcarbine_mk2 	= 14000 ,
	--weapon_combatpdw 		= 20000 ,        
	weapon_smg 			= 100000 ,           
	--weapon_assaultsmg 	= 18000 ,       
	--weapon_assaultshotgun = 20000 ,     
    --weapon_sniperrifle 	= 35000 ,       
    --weapon_heavysniper 	= 45000 ,
    weapon_bat = 300 ,     
    --weapon_switchblade 	= 250 ,       
    weapon_flashlight 	= 250 ,
	--weapon_knife		= 250,
	weapon_fireextinguisher = 500,
	weapon_flare = 500,
	weapon_wrench = 1000,
	weapon_smokegrenade = 5000,
	menotte = 500,
	weapon_petrolcan = 500
}

Config.Zones = {
  -- AmmunationActions = {
  --   Pos   = { x = 826.94, y = -2151.82, z = 28.61 },
  --   Size  = { x = 1.5, y = 1.5, z = 0.2 },
  --   Color = { r = 255, g = 255, b = 255 },
  --   Type  = 1,
  -- },

  Matos = {
    Pos   = { x = 2400.77, y = 3099.47, z = 47.15 },
    Size  = { x = 1.5, y = 1.5, z = 0.2 },
    Color = { r = 255, g = 255, b = 255 },
    Type  = 1,
  },
  --- farm munition
  Poudre = { --EST
    Pos   = { x = 3.7269, y = -1106.9130, z = 28.79 },
    Size  = { x = 1.5, y = 1.5, z = 0.2 },
    Color = { r = 255, g = 255, b = 255 },
    Type  = 1,
  },
  Douille = {--SANDY SHORE
    Pos   = { x = 1689.718, y = 3757.49, z = 33.7053 },
    Size  = { x = 1.5, y = 1.5, z = 0.2 },
    Color = { r = 255, g = 255, b = 255 },
    Type  = 1,
  },
  Revente = {--merryweather
    Pos   = { x = -722.0, y = -2225.1, z = 4.8 },
    Size  = { x = 1.5, y = 1.5, z = 0.2 },
    Color = { r = 255, g = 255, b = 255 },
    Type  = 1,
  },
--- fin farm munition
  Craft = {--port
    Pos   = { x = 812.54,  y = -2159.24,  z = 28.62 },
    Size  = { x = 1.5, y = 1.5, z = 0.2 },
    Color = { r = 255, g = 255, b = 255 },
    Type  = 1,
  },
--[[
  VehicleSpawnPoint = {
    Pos   = { x = 821.73, y = -2142.62, z = 27.75 },
    Size  = { x = 1.5, y = 1.5, z = 0.2 },
    Type  = -1,
  },

  VehicleDeleter = {
    Pos   = { x = 821.73, y = -2142.62, z = 27.75 },
    Size  = { x = 3.0, y = 3.0, z = 0.2 },
    Color = { r = 255, g = 255, b = 255 },
    Type  = 1,
  }
  ]]
}