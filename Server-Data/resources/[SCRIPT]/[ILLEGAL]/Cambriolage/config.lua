Config = {}


Config.LockPickTime = 10 -- temps en ms
Config.LockTime = 2 -- temps en ms
Config.SearchTime = 2000 -- temps en ms. 1000ms = 1 second.
Config.CopsRequired = 0 
Config.EnableHouseText = true 
Config.LockPickItem = "lockpick" 
Config.PoliceCameras = true 

Config.LootTable = { 
    { -- tier 1 50%
        "rien",
        --"gps",           
    },
    { -- tier 2 20%
        "skin_5",  
        "white_phone",       
    },
    { -- tier 3 15%
        "trophy_coyote",          
    },
    { -- tier 4 10%
        "bijou",  
    },
    { -- tier 5 5%
        "goldwatch"           
    }
}

Config.CameraComputer = vector3(440.15805053711, -975.64221191406, 30.689653396606)

Config.Interiors = {
    ["House"] = {
        ["Exit"] = vector3(346.51113891602, -1013.2387084961, -99.196220397949), 
        ["Lootables"] = { 
        ["Tiroir"] = {
            ["Pos"] = vector3(346.12048339844, -1001.7111206055, -99.196220397949),
            ["Heading"] = 96.675308227539,
        },
        ["Bibliothèque"] = {
            ["Pos"] = vector3(345.37557983398, -997.11291503906, -99.196220397949),
            ["Heading"] = 275.77279663086,
        },
        ["Etagère"] = {
            ["Pos"] = vector3(340.9001159668, -1003.6362304688, -99.196250915527),
            ["Heading"] = 186.4768371582,
        },
        ["Meuble TV"] = {
            ["Pos"] = vector3(338.20376586914, -996.69403076172, -99.196250915527),
            ["Heading"] = 92.932678222656,
        },
        ["Table basse"] = {
            ["Pos"] = vector3(340.61486816406, -996.61175537109, -99.196250915527),
            ["Heading"] = 274.84869384766,
        },
        ["Armoires"] = {
            ["Pos"] = vector3(342.24517822266, -1003.2302856445, -99.196250915527),
            ["Heading"] = 178.2681427002,
        },
        ["Penderie"] = {
            ["Pos"] = vector3(350.66995239258, -993.59857177734, -99.196166992188),
            ["Heading"] = 4.3582921028137,
        },
        ["Table de chevet"] = {
            ["Pos"] = vector3(349.27279663086, -994.93225097656, -99.196182250977),
            ["Heading"] = 89.151206970215,
        },
        ["Lavabo"] = {
            ["Pos"] = vector3(347.23321533203, -994.09851074219, -99.196189880371),
            ["Heading"] = 89.151206970215,
        },
    },
        ["Cameras"] = { 
            {
                ["Pos"] = vector3(348.24017333984, -1003.3173828125, -97.499542236328), 
                ["Rotation"] = vector3(-25.133857950568, 0.0, -219.49606274068)
            },
            { -- Bedroom door - Second Camera
                ["Pos"] = vector3(348.42233276367, -998.27960205078, -97.346153259277), 
                ["Rotation"] = vector3(-32.22047264874, 0.0, 129.54330644011)
            },
            { -- Living Room - Third Camera
                ["Pos"] = vector3(337.59378051758, -992.751953125, -97.346153259277), 
                ["Rotation"] = vector3(-30.299212530255, 0.0, 234.07873956859)
            },
            { -- Bedroom - Fourth Camera
                ["Pos"] = vector3(352.83721923828, -999.98107910156, -97.346153259277), 
                ["Rotation"] = vector3(-28.440943881869, 0.0, 409.511809811)
            }
        }
    },
}

Config.Coords = { 
    [1] =  {  
        ["Pos"] = vector3(-7.22, 409.2, 120.13),
        ["Heading"] = 76.61, 
        ["Info"] = ' Didion Drive 1', 
        ["HouseType"] = "House" 
    },
    [2] =  {  
        ["Pos"] = vector3(-73.12, 427.51, 113.04),
        ["Heading"] = 157.75, 
        ["Info"] = ' Didion Drive 2', 
        ["HouseType"] = "House" 
    },
    [3] =  {  
        ["Pos"] = vector3(-615.57, 399.15, 101.24),
        ["Heading"] = 5.39, 
        ["Info"] = ' Milton Road 3', 
        ["HouseType"] = "House"
    },
    [4] =  {  
        ["Pos"] = vector3(-580.6, 492.09, 108.91),
        ["Heading"] = 10.17, 
        ["Info"] = ' Picture Perfect Drive 2', 
        ["HouseType"] = "House" 
    },
    [5] =  {  
        ["Pos"] = vector3(-400.54, 427.2, 112.35),
        ["Heading"] = 246.04, 
        ["Info"] = ' Cox Way 3', 
        ["HouseType"] = "House" 
    },
    [6] =  {  
        ["Pos"] = vector3(106.9, 467.73, 147.38),
        ["Heading"] = 2.1, 
        ["Info"] = ' Wild Oats Drive 4', 
        ["HouseType"] = "House" 
    },
    [7] =  {  
        ["Pos"] = vector3(-232.61, 589.02, 190.54),
        ["Heading"] = 353.79, 
        ["Info"] = ' Kimble Hill Drive 5', 
        ["HouseType"] = "House" 
    },
    [8] =  {  
        ["Pos"] = vector3(-564.36, 684.27, 146.42),
        ["Heading"] = 203.91, 
        ["Info"] = ' Normandy Drive 2', 
        ["HouseType"] = "House" 
    },
    [9] =  {  
        ["Pos"] = vector3(-516.95, 433.19, 97.81),
        ["Heading"] = 130.67, 
        ["Info"] = ' Cox Way 7', 
        ["HouseType"] = "House" 
    },
    [10] =  {  
        ["Pos"] = vector3(-109.87, 502.01, 143.48),
        ["Heading"] = 347.61, 
        ["Info"] = ' Wild Oats Drive 10', 
        ["HouseType"] = "House" 
    },
}