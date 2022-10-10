Config                            = {}
Config.DrawDistance               = 100.0

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableVaultManagement      = true
Config.EnableHelicopters          = false
Config.EnableMoneyWash            = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.MissCraft                  = 5 -- %


Config.AuthorizedVehicles = {
  ---------------------------------------------------
  { name = 'velum2',  label = '✈️ > Avion : simple' },
  { name = 'mammatus',  label = '✈️ > Avion : marchandise' },
  { name = 'microlight',  label = '✈️ > Avion : ULM' },
	{ name = 'dodo',  label = '✈️ > Avion : Hydravation' },
  ---------------------------------------------------
  { name = 'frogger',  label = '🚁 > Hélicoptère : Simple' },
  { name = 'swift',  label = '🚁 > Hélicoptère : VIP' },
  { name = 'cargobob3',  label = '🚁 > Hélicoptère : Transport' },
  ---------------------------------------------------
  { name = 'caddy3',  label = '🚗 > Voiture : Caddy' },

}


Config.Blips = {
    
--[[    Blip = {
      Pos     = { x = 1759.55, y = 3298.98, z = 41.17 },
      Sprite  = 94,
      Display = 4,
      Scale   = 0.6,
      Colour  = 27,
    },
--]]
}

Config.Zones = {

    Cloakrooms = {
        Pos   = { x = 1716.34, y = 3294.84, z = 41.19-0.99 },
        Size  = { x = 1.5, y = 1.5, z = 1.0 },
        Color = { r = 255, g = 187, b = 255 },
        Type  = 1,
    },

    Vaults = {
        Pos   = { x = 1737.02, y = 3328.18, z = 41.22-0.99 },
        Size  = { x = 1.3, y = 1.3, z = 1.0 },
        Color = { r = 30, g = 144, b = 255 },
        Type  = 25,
    },

    -- Fridge = {
    --     Pos   = { x = 1721.07, y = 3304.6, z = 40.22 },
    --     Size  = { x = 1.6, y = 1.6, z = 1.0 },
    --     Color = { r = 248, g = 248, b = 255 },
    --     Type  = 1,
    -- },

    Vehicles = {
        Pos          = {x = 1716.41, y = 3269.41, z = 41.15-0.99},
        SpawnPoint   = {x = 1734.87, y = 3258.93, z = 42.23},
        Size         = { x = 1.8, y = 1.8, z = 1.0 },
        Color        = { r = 0, g = 0, b = 255 },
        Type         = 25,
        Heading      = 105.45,
    },

    VehicleDeleters = {
        Pos   = {x = 1744.79, y = 3236.67, z = 41.90-0.99},
        Size  = { x = 8.0, y = 8.0, z = 0.8 },
        Color = { r = 255, g = 0, b = 0 },
        Type  = 1,
    },


    -- Helicopters = {
    --     Pos          = { x = 1760.69, y = 3245.39, z = 41.81-0.99 },
    --     SpawnPoint   = { x = 1770.39, y = 3239.61, z = 42.04 },
    --     Size         = { x = 1.8, y = 1.8, z = 1.0 },
    --     Color        = { r = 255, g = 255, b = 0 },
    --     Type         = 23,
    --     Heading      = 103.28,
    -- },

    -- HelicopterDeleters = {
    --     Pos   = { x = 1770.19, y = 3239.97, z = 42.19-0.99 },
    --     Size  = { x = 3.0, y = 3.0, z = 0.5 },
    --     Color = { r = 255, g = 0, b = 0 },
    --     Type  = 1,
    -- },


    BossActions = {
        Pos   = {x = 1700.6, y = 3293.87, z = 48.92-0.99},
        Size  = { x = 1.2, y = 1.2, z = 0.3 },
        Color = { r = 0, g = 200, b = 255 },
        Type  = 1,
    },

-----------------------
-------- SHOPS --------

    NoAlcool = {
        Pos   = { x = 178.028, y = 307.467, z = 104.392 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 238, g = 110, b = 0 },
        Type  = 23,
        Items = {
            { name = 'piece',        label = _U('piece'),     price = 6 }
        },
    },

    Apero = {
        Pos   = { x = 95.18, y = -1810.14, z = 26.095 },
        Size  = { x = 1.6, y = 1.6, z = 1.0 },
        Color = { r = 142, g = 125, b = 76 },
        Type  = 23,
        Items = {
            { name = 'fils',   label = _U('fils'),    price = 3 }
        },
    },

    


}


-----------------------
----- TELEPORTERS -----

Config.TeleportZones = {
  --[[EnterBuilding = {
    Pos       = { x = 132.608, y = -1293.978, z = 28.269 },
    Size      = { x = 1.2, y = 1.2, z = 0.1 },
    Color     = { r = 128, g = 128, b = 128 },
    Marker    = 1,
    Hint      = _U('e_to_enter_1'),
    Teleport  = { x = 126.742, y = -1278.386, z = 28.569 }
  },

  ExitBuilding = {
    Pos       = { x = 132.517, y = -1290.901, z = 28.269 },
    Size      = { x = 1.2, y = 1.2, z = 0.1 },
    Color     = { r = 128, g = 128, b = 128 },
    Marker    = 1,
    Hint      = _U('e_to_exit_1'),
    Teleport  = { x = 131.175, y = -1295.598, z = 28.569 },
  },

  EnterHeliport = {
    Pos       = { x = 126.843, y = -729.012, z = 241.201 },
    Size      = { x = 2.0, y = 2.0, z = 0.2 },
    Color     = { r = 204, g = 204, b = 0 },
    Marker    = 1,
    Hint      = _U('e_to_enter_2),
    Teleport  = { x = -65.944, y = -818.589, z =  320.801 }
  },

  ExitHeliport = {
    Pos       = { x = -67.236, y = -821.702, z = 320.401 },
    Size      = { x = 2.0, y = 2.0, z = 0.2 },
    Color     = { r = 204, g = 204, b = 0 },
    Marker    = 1,
    Hint      = _U('e_to_exit_2'),
    Teleport  = { x = 124.164, y = -728.231, z = 241.801 },
  },
]]--
}


Config.Uniforms = {
  pilote_outfit = {
    male = {
        ['tshirt_1'] = 96,  ['tshirt_2'] = 0,
        ['torso_1'] = 55,   ['torso_2'] = 0,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 19,
        ['pants_1'] = 130,   ['pants_2'] = 1,
        ['shoes_1'] = 24,   ['shoes_2'] = 0,
        ['chain_1'] = 0,  ['chain_2'] = 0,
        ['bags_1'] = 0,    ['bags_2']  = 0,
        ['glasses_1'] = 0,  ['glasses_2'] = 0,
        ['helmet_1'] = -1,  ['helmet_2'] = 0,
        ['mask_1'] = 0,  	['mask_2'] = 0,
        ['bproof_1'] = 15,  ['bproof_2'] = 0,
        ['ears_1'] = 0,     ['ears_2'] = 0
    },
    female = {
        ['tshirt_1'] = 101,   ['tshirt_2'] = 0,
        ['torso_1'] = 43,    ['torso_2'] = 0,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 23,
        ['pants_1'] = 136,   ['pants_2'] = 1,
        ['shoes_1'] = 24,    ['shoes_2'] = 0,
        ['chain_1'] = 0,    ['chain_2'] = 2,
        ['bags_1'] = 0,    ['bags_2']  = 0,
        ['glasses_1'] = 0,  ['glasses_2'] = 0,
        ['helmet_1'] = -1,  ['helmet_2'] = 0,
        ['mask_1'] = 0,  	['mask_2'] = 0,
        ['bproof_1'] = 17,  ['bproof_2'] = 0,
        ['ears_1'] = 0,     ['ears_2'] = 0
	}	
  },
  pilote_outfit_1 = {
    male = {
        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
        ['torso_1'] = 248,   ['torso_2'] = 1,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 22,
        ['pants_1'] = 130,   ['pants_2'] = 4,
        ['shoes_1'] = 24,   ['shoes_2'] = 0,
        ['chain_1'] = 0,  ['chain_2'] = 0,
        ['bags_1'] = 10,    ['bags_2']  = 14,
        ['glasses_1'] = 0,  ['glasses_2'] = 0,
        ['helmet_1'] = -1,  ['helmet_2'] = 0,
        ['mask_1'] = 0,  	['mask_2'] = 0,
        ['bproof_1'] = 0,  ['bproof_2'] = 0,
        ['ears_1'] = 0,     ['ears_2'] = 0
    },
    female = {
        ['tshirt_1'] = 14,   ['tshirt_2'] = 0,
        ['torso_1'] = 251,    ['torso_2'] = 1,
        ['decals_1'] = 0,   ['decals_2'] = 2,
        ['arms'] = 23,
        ['pants_1'] = 136,   ['pants_2'] = 4,
        ['shoes_1'] = 24,    ['shoes_2'] = 0,
        ['chain_1'] = 0,    ['chain_2'] = 2,
        ['bags_1'] = 11,    ['bags_2']  = 14,
        ['glasses_1'] = 0,  ['glasses_2'] = 0,
        ['helmet_1'] = -1,  ['helmet_2'] = 0,
        ['mask_1'] = 0,  	['mask_2'] = 0,
        ['bproof_1'] = 0,  ['bproof_2'] = 0,
        ['ears_1'] = 0,     ['ears_2'] = 0
    }
  },
  pilote_outfit_2 = {
    male = {
        ['tshirt_1'] = 90,  ['tshirt_2'] = 0,
        ['torso_1'] = 298,   ['torso_2'] = 0,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 22,
        ['pants_1'] = 28,   ['pants_2'] = 0,
        ['shoes_1'] = 10,   ['shoes_2'] = 0,
        ['chain_1'] = 0,  ['chain_2'] = 0,
        ['bags_1'] = 0,    ['bags_2']  = 0,
        ['glasses_1'] = 0,  ['glasses_2'] = 0,
        ['helmet_1'] = -1,  ['helmet_2'] = 0,
        ['mask_1'] = 0,  	['mask_2'] = 0,
        ['bproof_1'] = 0,  ['bproof_2'] = 0,
        ['ears_1'] = 0,     ['ears_2'] = 0
    },
    female = {
         ['tshirt_1'] = 65,   ['tshirt_2'] = 0,
        ['torso_1'] = 333,    ['torso_2'] = 0,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 21,
        ['pants_1'] = 11,   ['pants_2'] = 1,
        ['shoes_1'] = 27,    ['shoes_2'] = 0,
        ['chain_1'] = 21,    ['chain_2'] = 2,
        ['bags_1'] = 0,    ['bags_2']  = 0,
        ['glasses_1'] = 0,  ['glasses_2'] = 0,
        ['helmet_1'] = -1,  ['helmet_2'] = 0,
        ['mask_1'] = 0,  	['mask_2'] = 0,
        ['bproof_1'] = 0,  ['bproof_2'] = 0,
        ['ears_1'] = 0,     ['ears_2'] = 0
    }
  },
  pilote_outfit_3 = {
    male = {
        ['tshirt_1'] = 96,  ['tshirt_2'] = 0,
        ['torso_1'] = 55,   ['torso_2'] = 0,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 19,
        ['pants_1'] = 130,   ['pants_2'] = 1,
        ['shoes_1'] = 24,   ['shoes_2'] = 0,
        ['chain_1'] = 0,  ['chain_2'] = 0,
        ['bags_1'] = 0,    ['bags_2']  = 0,
        ['glasses_1'] = 0,  ['glasses_2'] = 0,
        ['helmet_1'] = -1,  ['helmet_2'] = 0,
        ['mask_1'] = 0,  	['mask_2'] = 0,
        ['bproof_1'] = 15,  ['bproof_2'] = 0,
        ['ears_1'] = 0,     ['ears_2'] = 0
    },
    female = {
        ['tshirt_1'] = 101,   ['tshirt_2'] = 0,
        ['torso_1'] = 43,    ['torso_2'] = 0,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 23,
        ['pants_1'] = 136,   ['pants_2'] = 1,
        ['shoes_1'] = 24,    ['shoes_2'] = 0,
        ['chain_1'] = 0,    ['chain_2'] = 2,
        ['bags_1'] = 0,    ['bags_2']  = 0;
        ['glasses_1'] = 0,  ['glasses_2'] = 0,
        ['helmet_1'] = -1,  ['helmet_2'] = 0,
        ['mask_1'] = 0,  	['mask_2'] = 0,
        ['bproof_1'] = 17,  ['bproof_2'] = 0,
        ['ears_1'] = 0,     ['ears_2'] = 0
    }
  },
}