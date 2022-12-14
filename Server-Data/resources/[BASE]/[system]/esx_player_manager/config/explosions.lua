-- [[ Explosion Detection ]]

RS.explosions_BlacklistedExplosions = true -- Enable/Disable detection for Blacklisted Explosions based on the table below
RS.explosions_maxExplosions = 7 -- Ban the player after 7 explosions
RS.explosions_resetTime = 8000 -- Reset the timer after 8 seconds

RS.explosions_BlacklistedExplosionsTable = {
    [0] = { name = "Grenade", detect = true},
    [1] = { name = "GrenadeLauncher", detect = true},
    [3] = { name = "Molotov", detect = true},
    [4] = { name = "Rocket", detect = true},
    [5] = { name = "TankShell", detect = false},
    [6] = { name = "Hi_Octane", detect = false},
    [7] = { name = "Car", detect = true},
    [8] = { name = "Plance", detect = false},
    [9] = { name = "PetrolPump", detect = false},
    [10] = { name = "Bike", detect = false},
    [11] = { name = "Dir_Steam", detect = false},
    [12] = { name = "Dir_Flame", detect = false},
    [13] = { name = "Dir_Water_Hydrant", detect = false},
    [14] = { name = "Dir_Gas_Canister", detect = false},
    [15] = { name = "Boat", detect = false},
    [16] = { name = "Ship_Destroy", detect = false},
    [17] = { name = "Truck", detect = false},
    [18] = { name = "Bullet", detect = false},
    [19] = { name = "SmokeGrenadeLauncher", detect = true},
    [20] = { name = "SmokeGrenade", detect = false},
    [21] = { name = "BZGAS", detect = false},
    [22] = { name = "Flare", detect = false},
    [23] = { name = "Gas_Canister", detect = false},
    [24] = { name = "Extinguisher", detect = false},
    [25] = { name = "Programmablear",detect = false},
    [26] = { name = "Train", detect = false},
    [27] = { name = "Barrel", detect = false},
    [28] = { name = "PROPANE", detect = false},
    [29] = { name = "Blimp", detect = false},
    [30] = { name = "Dir_Flame_Explode", detect = false},
    [31] = { name = "Tanker", detect = false},
    [32] = { name = "PlaneRocket", detect = false},
    [33] = { name = "VehicleBullet", detect = true},
    [34] = { name = "Gas_Tank", detect = false},
    [35] = { name = "FireWork", detect = false},
    [36] = { name = "SnowBall", detect = false},
    [37] = { name = "ProxMine", detect = false},
    [38] = { name = "Valkyrie_Cannon", detect = true}
}

