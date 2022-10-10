Config                            = {}
Config.DrawDistance               = 100.0

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.EnableVaultManagement      = true
Config.EnableHelicopters          = false
Config.EnableMoneyWash            = false
Config.MaxInService               = -1
Config.Locale                     = 'fr'

Config.MissCraft                  = 3500 -- 35% de chance de perdre les ingrediants sans obtenir de pizzas


Config.AuthorizedVehicles = {
    --{ name = 'vwcaddy',  label = ' Voiture de livraison' },
    { name = 'foodbike',  label = ' Scooter de livraison' },
}

Config.Blips = {
    
    Blip = {
        Pos     = { x = 284.92,  y = -970.04,  z = 29.88 },
        Sprite  = 273,
        Display = 4,
        Scale   = 0.7,
        Colour  = 0,
      },
  
  }

Config.Zones = {

    Cloakrooms = {
        Pos   = { x = -1351.3, y = -1059.51, z = 2.83 },
        Size  = { x = 1.5, y = 1.5, z = 0.3 },
        Color = { r = 0, g = 255, b = 0 },
        Type  = 23,
    },

    Vaults = {
        Pos   = { x = -1340.9, y = -1060.56, z = 6.35 },
        Size  = { x = 1.5, y = 1.5, z = 0.3 },
        Color = { r = 0, g = 248, b = 0 },
        Type  = 23,
    },

    Fridge = {
        Pos   = { x = -1343, y = -1061.17, z = 6.35 },
        Size  = { x = 1.6, y = 1.6, z = 0.3 },
        Color = { r = 0, g = 248, b = 0 },
        Type  = 23,
    },

    Vehicles = {
        Pos          = { x = -1336.62, y = -1092.46, z = 5.97 },
        SpawnPoint   = { x = -1336.31, y = -1095.86, z = 5.93 },
        Size         = { x = 1.8, y = 1.8, z = 0.3 },
        Color        = { r = 0, g = 255, b = 0 },
        Type         = 23,
        Heading      = 203.74,
    },

    VehicleDeleters = {
        Pos   = { x = -1336.31, y = -1095.86, z = 5.93 },
        Size  = { x = 3.0, y = 3.0, z = 0.5 },
        Color = { r = 0, g = 255, b = 0 },
        Type  = -1,
    },

    BossActions = {
        Pos   = { x = -1345.78, y = -1052.64, z = 2.83 },
        Size  = { x = 1.5, y = 1.5, z = 0.3 },
        Color = { r = 0, g = 100, b = 0 },
        Type  = 23,
    },

-----------------------
-------- SHOPS --------

    Flacons = {
        Pos   = { x = 28.26, y = -1769.37, z = 28.46 },
        Size  = { x = 1.6, y = 1.6, z = 0.3 },
        Color = { r = 0, g = 255, b = 0 },
        Type  = 1,
        Items = {
            { name = 'pate',         label = _U('pate'),        price = 2 },
        },
    },

    Flacons2 = {
        Pos   = { x = 378.57, y = 327.33, z = 102.40 },
        Size  = { x = 1.6, y = 1.6, z = 0.3 },
        Color = { r = 0, g = 255, b = 0 },
        Type  = 1,
        Items = {
            { name = 'ing',   label = _U('ing'),        price = 8 },
        },
    },
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
  pizza_outfit = {
   male = {
        ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
        ['torso_1'] = 146,   ['torso_2'] = 2,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 0,
        ['pants_1'] = 90,   ['pants_2'] = 8,
        ['shoes_1'] = 54,    ['shoes_2'] = 1,
        ['chain_1'] = 0,    ['chain_2'] = 0,
        ['helmet_1'] = 130,    ['helmet_2'] = 3
    },
    female = {
        ['tshirt_1'] = 14,  ['tshirt_2'] = 0,
        ['torso_1'] = 141,   ['torso_2'] = 3,
        ['decals_1'] = 0,   ['decals_2'] = 0,
        ['arms'] = 0,
        ['pants_1'] = 93,   ['pants_2'] = 8,
        ['shoes_1'] = 52,   ['shoes_2'] = 1,
        ['chain_1'] = 0,  ['chain_2'] = 0,
        ['helmet_1'] = 129,    ['helmet_2'] = 3
    }
  }
}
