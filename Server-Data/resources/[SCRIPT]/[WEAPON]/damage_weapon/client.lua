
----------------------------------------------------------------------------
--DANO ARMAS (E SOCO) MELEE ///// MELEE AND WEAPONS DAMAGE 
----------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
	    N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"), 0.1) 
    	Wait(0)
    	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_NIGHTSTICK"), 0.10) 
    	Wait(0)
    	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_SMOKEGRENADE"), 0.0) 
    	Wait(0)
    	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_BZGAS"), 0.01) 
    	Wait(0)
    	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_KNUCKLE"), 0.10) 
    	Wait(0)
    	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_HAMMER"), 0.01) 
    	Wait(0)
    	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_BAT"), 0.10) 
    	Wait(0)
    	N_0x4757f00bc6323cfe(GetHashKey("WEAPON_GOLFCLUB"), 0.10) 
    	Wait(0)
    end
end)
----------------------------------------------------------------------------
--DANO CORONHADA //// PISTOL WHIPPING
----------------------------------------------------------------------------
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
	local ped = PlayerPedId()
    local damage = GetPlayerWeaponDamageModifier(ped)
        if IsPedArmed(ped, 6) then
	   DisableControlAction(1, 140, true)
       	   DisableControlAction(1, 141, true)
           DisableControlAction(1, 142, true)
        end
    end
end)