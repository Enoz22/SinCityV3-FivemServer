-- BEFORE STARTING EDITING THIS FILE READ THIS!
-- TO BLACKLIST/WHITELIST A MODEL YOU MUST USE "`" instead of " OR ' ex [`prop_fivem_caca`] = {name = "fivem caca prop lol 123"}
-- TO BLACKLIST/WHITELIST A HASHKEY YOU DON'T HAVE TO USE ANYTHING ex. [-12345690] = {name = "myblacklistedprop"}

RS.entities_useEntitiesControl = true -- Enable/Disable Entity Detection/AntiNuke (config/entities.lua)

--Objects/Models
RS.entities_objectsDetection = true
RS.entities_objectsDetectionMode = 2 -- 0 Warning, 1 Kick, 2 Ban

--Vehicles
RS.entities_vehiclesDetection = true
RS.entities_vehiclesDetectionMode = 2 -- 0 Warning, 1 Kick, 2 Ban

--Peds
RS.entities_pedsDetection = true
RS.entities_pedsDetectionMode = 2 -- 0 Warning, 1 Kick, 2 Ban

RS.entities_blockAll = false -- EVERYTHING will be detected except for Whitelisted things...

RS.entities_AntiNuke_Peds = true
RS.entities_AntiNuke_Vehicles = true
RS.entities_AntiNuke_Objects = true -- UNDER TESTING (GOOD BUT NOT FOR EVERYONE!!)
RS.entities_AntiNuke_maxSpawn = 5 -- After 5 Spawned PEDS/VEH/OBJ the player gets automatically warned
RS.entities_AntiNuke_resetTime = 8000 -- After 8 seconds the AntiNuke timer gets reseted

RS.entities_whitelistedObjects = { -- You can add here any kind of objects/prop you want to whitelist and don't waste time on checks
    [`xm_prop_x17_tem_control_01`] = { name = "xm_prop_x17_tem_control_01" },
    [`prop_cs_walkie_talkie`] = { name = "prop_cs_walkie_talkie" },
    [`prop_headphones_01`] = { name = "prop_headphones_01" },
    [`prop_money_bag_01`] = { name = "prop_money_bag_01" }
}

RS.entities_blacklistedObjects = { -- You can blacklist any prop don't want on the server, and if it's spawned by a player it triggers a detection
    [`prop_fnclink_05crnr1`] = { name = "prop_fnclink_05crnr1" },
    [`xs_prop_hamburgher_wl`] = { name = "xs_prop_hamburgher_wl" },
    [`xs_prop_plastic_bottle_wl`] = { name = "xs_prop_plastic_bottle_wl" },
    [`prop_windmill_01`] = { name = "prop_windmill_01" },
    [`p_spinning_anus_s`] = { name = "p_spinning_anus_s" },
    [`stt_prop_ramp_adj_flip_m`] = { name = "stt_prop_ramp_adj_flip_m" },
    [`stt_prop_ramp_adj_flip_mb`] = { name = "stt_prop_ramp_adj_flip_mb" },
    [`stt_prop_ramp_adj_flip_s`] = { name = "stt_prop_ramp_adj_flip_s" },
    [`stt_prop_ramp_adj_flip_sb`] = { name = "stt_prop_ramp_adj_flip_sb" },
    [`stt_prop_ramp_adj_hloop`] = { name = "stt_prop_ramp_adj_hloop" },
    [`stt_prop_ramp_adj_loop`] = { name = "stt_prop_ramp_adj_loop" },
    [`stt_prop_ramp_jump_l`] = { name = "stt_prop_ramp_jump_l" },
    [`stt_prop_ramp_jump_m`] = { name = "stt_prop_ramp_jump_m" },
    [`stt_prop_ramp_jump_s`] = { name = "stt_prop_ramp_jump_s" },
    [`stt_prop_ramp_jump_xl`] = { name = "stt_prop_ramp_jump_xl" },
    [`stt_prop_ramp_jump_xs`] = { name = "stt_prop_ramp_jump_xs" },
    [`stt_prop_ramp_jump_xxl`] = { name = "stt_prop_ramp_jump_xxl" },
    [`stt_prop_ramp_multi_loop_rb`] = { name = "stt_prop_ramp_multi_loop_rb" },
    [`stt_prop_ramp_spiral_l`] = { name = "stt_prop_ramp_spiral_l" },
    [`stt_prop_ramp_spiral_l_l`] = { name = "stt_prop_ramp_spiral_l_l" },
    [`stt_prop_ramp_spiral_l_m`] = { name = "stt_prop_ramp_spiral_l_m" },
    [`stt_prop_ramp_spiral_l_s`] = { name = "stt_prop_ramp_spiral_l_s" },
    [`stt_prop_ramp_spiral_l_xxl`] = { name = "stt_prop_ramp_spiral_l_xxl" },
    [`stt_prop_ramp_spiral_m`] = { name = "stt_prop_ramp_spiral_m" },
    [`stt_prop_ramp_spiral_s`] = { name = "stt_prop_ramp_spiral_s" },
    [`stt_prop_ramp_spiral_xxl`] = { name = "stt_prop_ramp_spiral_xxl" },
    [`stt_prop_stunt_track_dwuturn`] = { name = "stt_prop_stunt_track_dwuturn" },
    [`stt_prop_stunt_track_dwslope30`] = { name = "stt_prop_stunt_track_dwslope30" },
    [`stt_prop_stunt_track_start`] = { name = "stt_prop_stunt_track_start" },
    [`stt_prop_stunt_track_hill2`] = { name = "stt_prop_stunt_track_hill2" },
    [`stt_prop_stunt_bblock_huge_01`] = { name = "stt_prop_stunt_bblock_huge_01" },
    [`stt_prop_stunt_bblock_huge_02`] = { name = "stt_prop_stunt_bblock_huge_02" },
    [`stt_prop_stunt_bblock_huge_03`] = { name = "stt_prop_stunt_bblock_huge_03" },
    [`stt_prop_stunt_bblock_huge_04`] = { name = "stt_prop_stunt_bblock_huge_04" },
    [`stt_prop_stunt_bblock_huge_05`] = { name = "stt_prop_stunt_bblock_huge_05" },
    [`stt_prop_stunt_bblock_hump_01`] = { name = "stt_prop_stunt_bblock_hump_01" },
    [`stt_prop_stunt_bblock_hump_02`] = { name = "stt_prop_stunt_bblock_hump_02" },
    [`stt_prop_stunt_bblock_lrg1`] = { name = "stt_prop_stunt_bblock_lrg1" },
    [`stt_prop_stunt_bblock_lrg2`] = { name = "stt_prop_stunt_bblock_lrg2" },
    [`stt_prop_stunt_bblock_lrg3`] = { name = "stt_prop_stunt_bblock_lrg3" },
    [`stt_prop_stunt_bblock_mdm1`] = { name = "stt_prop_stunt_bblock_mdm1" },
    [`stt_prop_stunt_bblock_mdm2`] = { name = "stt_prop_stunt_bblock_mdm2" },
    [`stt_prop_stunt_bblock_mdm3`] = { name = "stt_prop_stunt_bblock_mdm3" },
    [`stt_prop_stunt_bblock_qp`] = { name = "stt_prop_stunt_bblock_qp" },
    [`stt_prop_stunt_bblock_qp2`] = { name = "stt_prop_stunt_bblock_qp2" },
    [`stt_prop_stunt_bblock_qp3`] = { name = "stt_prop_stunt_bblock_qp3" },
    [`prop_beach_fire`] = { name = "prop_beach_fire" },
    [`prop_gas_pump_1a`] = { name = "prop_gas_pump_1a" },
    [`prop_gas_pump_1b`] = { name = "prop_gas_pump_1b" },
    [`prop_gas_pump_1c`] = { name = "prop_gas_pump_1c" },
    [`prop_gas_pump_1d`] = { name = "prop_gas_pump_1d" },
    [`prop_gas_pump_old2`] = { name = "prop_gas_pump_old2" },
    [`prop_gas_pump_old3`] = { name = "prop_gas_pump_old3" },
    [`prop_vintage_pump`] = { name = "prop_vintage_pump" },
    [`apa_mp_h_acc_box_trinket_01`] = { name = "apa_mp_h_acc_box_trinket_01" },
    [`prop_roundbailer02`] = { name = "prop_roundbailer02" },
    [`prop_roundbailer01`] = { name = "prop_roundbailer01" },
    [`prop_container_05a`] = { name = "prop_container_05a" },
    [`stt_prop_stunt_bowling_ball`] = { name = "stt_prop_stunt_bowling_ball" },
    [`apa_mp_h_acc_rugwoolm_03`] = { name = "apa_mp_h_acc_rugwoolm_03" },
    [`prop_container_ld2`] = { name = "prop_container_ld2" },
    [`p_ld_stinger_s`] = { name = "p_ld_stinger_s" },
    [`hei_prop_carrier_cargo_02a`] = { name = "hei_prop_carrier_cargo_02a" },
    [`p_cablecar_s`] = { name = "p_cablecar_s" },
    [`p_ferris_car_01`] = { name = "p_ferris_car_01" },
    [`prop_cj_big_boat`] = { name = "prop_cj_big_boat" },
    [`prop_rock_4_big2`] = { name = "prop_rock_4_big2" },
    [`prop_steps_big_01`] = { name = "prop_steps_big_01" },
    [`v_ilev_lest_bigscreen`] = { name = "v_ilev_lest_bigscreen" },
    [`prop_carcreeper`] = { name = "prop_carcreeper" },
    [`apa_mp_h_bed_double_09`] = { name = "apa_mp_h_bed_double_09" },
    [`apa_mp_h_bed_wide_05`] = { name = "apa_mp_h_bed_wide_05" },
    [`prop_cattlecrush`] = { name = "prop_cattlecrush" },
    [`prop_cs_documents_01`] = { name = "prop_cs_documents_01" },
    [`prop_ferris_car_01_lod1`] = { name = "prop_ferris_car_01_lod1" },
    [`prop_construcionlamp_01`] = { name = "prop_construcionlamp_01" },
    [`prop_fncconstruc_01d`] = { name = "prop_fncconstruc_01d" },
    [`prop_fncconstruc_02a`] = { name = "prop_fncconstruc_02a" },
    [`p_dock_crane_cabl_s`] = { name = "p_dock_crane_cabl_s" },
    [`prop_dock_crane_01`] = { name = "prop_dock_crane_01" },
    [`prop_dock_crane_02_cab`] = { name = "prop_dock_crane_02_cab" },
    [`prop_dock_float_1`] = { name = "prop_dock_float_1" },
    [`prop_dock_crane_lift`] = { name = "prop_dock_crane_lift" },
    [`apa_mp_h_bed_double_08`] = { name = "apa_mp_h_bed_double_08" },
    [`csx_seabed_bldr4_`] = { name = "csx_seabed_bldr4_" },
    [`imp_prop_impexp_sofabed_01a`] = { name = "imp_prop_impexp_sofabed_01a" },
    [`apa_mp_h_yacht_bed_01`] = { name = "apa_mp_h_yacht_bed_01" },
    [-685641702] = { name = "unknown" },
    [-1230672010] = { name = "unknown" },
    [-1404869155] = { name = "FIB Building" },
    [-759902142] = { name = "fire" }
}

RS.entities_whitelistedVehicles = { -- You can add here any kind of vehicle you want to whitelist and don't waste time on checks
    [`blista`] = {name = "Blista"},
    [`adder`] = {name = "Adder"}
}
   
RS.entities_blacklistedVehicles = {
    [`cargoplane`] = {name = "Cargo Plane"},
    [`dump`] = {name = "Dump"},
    [`avenger`] = {name = "Avenger"},
    [`avenger2`] = {name = "Avenger2"},
    [`luxor`] = {name = "Luxor"},
    [`khanjali`] = {name = "Khanjali"},
    [`rhino`] = {name = "Rhino"},
    [`insurgent`] = {name = "Insurgent"},
    [`insurgent3`] = {name = "Insurgent3"},
    [`oppressor`] = {name = "Oprresor"},
    [`oppressor2`] = {name = "Oprresor2"},
    [`maverick`] = {name = "Maverick"},
    [`blimp2`] = {name = "blimp2"},
    [`blimp`] = {name = "blimp"},
    [`blimp3`] = {name = "blimp3"},
    [`freight`] = {name = "Freight"},
    [`freightcar`] = {name = "FreightCar"},
    [`limo2`] = {name = "Limo2"},
    [`freightcont1`] = {name = "FreightCont1"},
    [`freightcont2`] = {name = "FreightCont2"},
    [`freightgrain`] = {name = "FreightGrain"},
    [`cerberus3`] = {name = "Cerberus3"},
    [`cerberus2`] = {name = "Cerberus2"},
    [`cerberus`] = {name = "Cerberus"},
    [`buzzard`] = {name = "Buzzard"},
    [`phantom2`] = {name = "Phantom2"},
    [`issi6`] = {name = "Issi6"},
    [`issi4`] = {name = "Issi4"},
    [`issi5`] = {name = "Issi5"},
    [`savage`] = {name = "Savage"},
    [`hunter`] = {name = "Hunter"},
    [`akula`] = {name = "Akula"},
    [`annihilator`] = {name = "Annihilator"},
    [`cutter`] = {name = "Cutter"},
    [`bulldozer`] = {name = "Bulldozer"},
    [`barracks`] = {name = "Barracks"},
    [`barracks2`] = {name = "Barracks2"},
    [`barracks3`] = {name = "Barracks3"},
    [`barrage`] = {name = "Barrage"},
    [`chernobog`] = {name = "Chernobog"},
    [`crusader`] = {name = "Crusader"},
    [`halftrack`] = {name = "HalfTrack"},
    [`minitank`] = {name = "MiniTank"},
    [`scarab`] = {name = "Scarab"},
    [`scarab2`] = {name = "Scarab2"},
    [`scarab3`] = {name = "Scarab3"},
    [`thruster`] = {name = "Thruster"},
    [`trailersmall2`] = {name = "Trailersmall2"},
    [`brutus3`] = {name = "Brutus3"},
    [`freecrawler`] = {name = "Freecrawler"},
    [`monster`] = {name = "Monster"},
    [`monster3`] = {name = "Monster3"},
    [`monster4`] = {name = "Monster4"},
    [`monster5`] = {name = "Monster5"},
    [`technical`] = {name = "Technical"},
    [`technical3`] = {name = "Technical3"},
    [`technical2`] = {name = "Technical2"},
    [`nightshark`] = {name = "Nightshark"},
    [`zhaba`] = {name = "Zhaba"},
    [`formula`] = {name = "Formula"},
    [`formula2`] = {name = "Formula2"},
    [`scramjet`] = {name = "Scramjet"},
    [`zr380`] = {name = "Zr380"},
    [`zr3802`] = {name = "Zr3802"},
    [`zr3803`] = {name = "Zr3803"},
    [`raptor`] = {name = "Raptor"},
    [`volatol`] = {name = "Volatol"},
    [`voltic2`] = {name = "Voltic2"},
    [`tula`] = {name = "Tula"},
    [`strikeforce`] = {name = "Strikeforce"},
    [`lazer`] = {name = "Lazer"},
    [`valkyrie2`] = {name = "Valkyrie2"},
    [`valkyrie`] = {name = "Valkyrie"},
    [`jet`] = {name = "Jet"},
    [`hydra`] = {name = "Hydra"},
    [`bombushka`] = {name = "Bombushka"},
    [`bruiser3`] = {name = "Bruiser3"},
    [`bruiser2`] = {name = "Bruiser2"},
    [`bruiser`] = {name = "Bruiser"},
    [`caracara`] = {name = "Caracara"},
    [`dune5`] = {name = "Dune5"},
    [`dune4`] = {name = "Dune4"},
    [`dune3`] = {name = "Dune3"},
    [`dune2`] = {name = "Dune2"},
    [`dune`] = {name = "Dune"},
    [`openwheel1`] = {name = "Openwheel1"},
    [`paragon2`] = {name = "Paragon2"},
    [`formula`] = {name = "Formula"},
    [`formula2`] = {name = "Formula2"},
    [`blazer5`] = {name = "Blazer5"},
    [`slamvan4`] = {name = "Slamvan4"},
    [`slamvan5`] = {name = "Slamvan5"},
    [`slamvan6`] = {name = "Slamvan6"},
    [`ruiner2`] = {name = "Ruiner2"},
    [`dukes2`] = {name = "Dukes2"},
    [`dominator4`] = {name = "Dominator4"},
    [`dominator5`] = {name = "Dominator5"},
    [`dominator6`] = {name = "Dominator6"},
    [`handler`] = {name = "Handler"},
    [`vindicator`] = {name = "Vindicator"},
    [`wastelander`] = {name = "Wastelander"},
    [`ardent`] = {name = "Ardent"},
    [`vigilante`] = {name = "Vigilante"},
    [`cargobob`] = {name = "Cargobob"},
}

RS.entities_whitelistedPeds = {
    [`mp_f_freemode_01`] = {name = "Female MP PED"},
    [`mp_m_freemode_01`] = {name = "Male MP PED"}, 
}
   
RS.entities_blacklistedPeds = {
    [`a_m_y_mexthug_01`] = {name = "MexThug"},
    [`a_c_husky`] = {name = "Huskey"}, 
    [`a_c_boar`] = {name = "Boar"}, 
    [`a_c_sharkhammer`] = {name = "Sharkhammer"}, 
    [`a_c_chimp`] = {name = "Chimp"}, 
    [`a_c_chop`] = {name = "Chop"}, 
    [`a_c_hen`] = {name = "Hen"}, 
    [`a_c_humpback`] = {name = "Humpback"}, 
    [`a_c_killerwhale`] = {name = "Killerwhale"},
    [`a_c_rhesus`] = {name = "Rhesus"}, 
    [`a_c_rottweiler`] = {name = "Rottweiler"}, 
    [`a_c_sharktiger`] = {name = "SharkTiger"}, 
    [`a_c_shepherd`] = {name = "Shepherd"}, 
    [`u_m_y_zombie_01`] = {name = "Zombie"},
    [`a_m_m_acult_01`] = {name = "Acult01"},
    [`u_m_y_juggernaut_01`] = {name = "Juggernaut"},
    [`s_f_y_bartender_01`] = {name = "s_f_y_bartender_01"}, 
    [`a_m_y_beachvesp_01`] = {name = "a_m_y_beachvesp_01"}, 
    [`a_m_y_beach_03`] = {name = "a_m_y_beach_03"}, 
    [`a_m_y_beach_02`] = {name = "a_m_y_beach_02"}, 
    [`a_m_m_beach_02`] = {name = "a_m_m_beach_02"}, 
    [`a_m_y_beach_01`] = {name = "a_m_y_beach_01"}, 
    [`s_m_y_baywatch_01`] = {name = "s_m_y_baywatch_01"}, 
    [`mp_f_boatstaff_01`] = {name = "mp_f_boatstaff_01"}, 
    [`u_m_m_bikehire_01`] = {name = "u_m_m_bikehire_01"}, 
    [`a_f_y_bevhills_04`] = {name = "a_f_y_bevhills_04"}, 
    [`s_m_m_bouncer_01`] = {name = "s_m_m_bouncer_01"}, 
    [`s_m_y_armymech_01`] = {name = "s_m_y_armymech_01"}, 
    [`s_m_y_autopsy_01`] = {name = "s_m_y_autopsy_01"}, 
    [`s_m_y_blackops_01`] = {name = "s_m_y_blackops_01"}, 
    [`s_m_y_blackops_02`] = {name = "s_m_y_blackops_02"}
}