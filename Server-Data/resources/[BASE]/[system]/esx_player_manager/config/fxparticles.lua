RS.FXParticles = true
RS.FXParticles_BlockAll = false -- Block any FX Particle Spawn
RS.FXParticles_DetectionMode = 2 -- 0 Warning, 1 Kick, 2 Ban

RS.FXParticles_Method = 1 -- 1 Blacklisted , 2 Whitelisted

RS.FXParticlesEffects = {-- You can get effects from here : https://vespura.com/fivem/particle-list/
    [GetHashKey("scr_indep_firework_starburst")] = { name = "scr_indep_firework_starburst" },
    [GetHashKey("scr_indep_firework_shotburst")] = { name = "scr_indep_firework_shotburst" },
    [GetHashKey("scr_indep_firework_fountain")] = { name = "scr_indep_firework_fountain" },
    [GetHashKey("scr_indep_firework_trailburst")] = { name = "scr_indep_firework_trailburst" },
    [GetHashKey("exp_air_molotov")] = { name = "exp_air_molotov" },
}