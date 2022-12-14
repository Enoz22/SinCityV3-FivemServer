-- NOTE: You can potentially pre-furnish house models using this.
-- If you don't know/cant figure it out, don't ask how.
ShellExtras = {
  HotelV1 = {
    [GetHashKey("v_49_motelmp_winframe")]       = {offset = vector3(1.44,-3.9, 2.419)},
    [GetHashKey("v_49_motelmp_glass")]          = {offset = vector3(1.44,-3.9, 2.419)},
    [GetHashKey("v_49_motelmp_curtains")]       = {offset = vector3(1.44,-3.8, 2.200)},
    [GetHashKey("hei_prop_heist_safedeposit")]  = {offset = vector3(1.0,-4.2, 2.00), rotation = vector3(0.0,0.0,180.0)},
  }
}

ShellPrices = {

  Trailer       = 0,  
  Lester        = 0,
  T1            = 0, 
  Trevor        = 0, 


  ApartmentV1   = 0,
  ApartmentV2   = 0,

  --NOTE: KAMBI PAYED SHELLS

  FrankAunt     = 0,
  Medium2       = 0,
Medium3       = 0,
  
--  CokeShell1    = 15000,
--  CokeShell2    = 15000,
--  MethShell     = 15000,
--  WeedShell1    = 15000,
--  WeedShell2    = 15000,

 -- GarageShell1  = 3000000,
 -- GarageShell2  = 1500000,
 -- GarageShell3  = 300000,



  Motel      = 0,

  Warehouse1 = 0, 
  Warehouse2 = 0,
  Warehouse3 = 0, 

  Office1   = 0, 
  Office2   = 0,
  OfficeBig = 0,

  Store1    = 0,
  Store2    = 0,
  Store3    = 0,
  Gunstore  = 0, 
  Barbers   = 0,

  Ranch         = 0, 
  HighEndV1     = 0, 
  HighEndV2     = 0, 
  Michaels      = 0,
  NewApt1       = 0,
  NewApt2       = 0,
  NewApt3       = 0,

}

ShellModels = {  

  Caravan       = "shell_trailer",
  Lester        = "shell_lester",

  T1            = "shell_v16low",
  Trevor        = "shell_trevor",

  Medium2       = "shell_medium2",
  Medium3       = "shell_medium3",

  ApartmentV2   = "shell_v16mid",
  ApartmentV1   = "playerhouse_tier1",


  -- NOTE: KAMBI PAYED SHELLS




  

  
  --CokeShell1    = 'shell_coke1',
  --CokeShell2    = 'shell_coke2',
  --MethShell     = 'shell_meth',
  --WeedShell1    = 'shell_weed',
  --WeedShell2    = 'shell_weed2',

 -- GarageShell1  = 'shell_garages',
 -- GarageShell2  = 'shell_garagem',
 -- GarageShell3  = 'shell_garagel',

  


  
  
  
 
  --Unknow   = "playerhouse_tier3",
 
  Ranch         = "shell_ranch",
  HighEndV1     = "shell_highend",
  HighEndV2     = "shell_highendv2",
  Michaels      = "shell_michael",
  NewApt1       = 'shell_apartment1',
  NewApt2       = 'shell_apartment2',
  NewApt3       = 'shell_apartment3',
  

  Office2   = 'shell_office2',
  Office1   = 'shell_office1',  
  OfficeBig = 'shell_officebig',

  Warehouse3 = "shell_warehouse3",
  Warehouse2 = "shell_warehouse2",  
  Warehouse1 = "shell_warehouse1",


  Store1    = 'shell_store1',   
  Gunstore  = 'shell_gunstore', 
  Barbers   = 'shell_barber', 
  Store3    = 'shell_store3',
  Store2    = 'shell_store2',

  Motel       = "playerhouse_hotel",
  
  FrankAunt     = "shell_frankaunt",
 

}


ShellModels2 = {  

  Tier1    = 'shell_trailer',

  Caravan       = "shell_trailer",
  Lester        = "shell_lester",

  Tier2    = 'shell_v16low',

  T1            = "shell_v16low",
  Trevor        = "shell_trevor",

  Tier3    = 'shell_medium2',

  Medium2       = "shell_medium2",
  Medium3       = "shell_medium3",

  Tier4    = 'shell_v16mid',

  ApartmentV2   = "shell_v16mid",
  ApartmentV1   = "playerhouse_tier1",

  Warehouse3 = "shell_warehouse3",
  Warehouse2 = "shell_warehouse2",  
  Warehouse1 = "shell_warehouse1",

  Office2   = 'shell_office2',
  Office1   = 'shell_office1',  
  OfficeBig = 'shell_officebig',

--  Tier5    = 'shell_apartment1',
 

 
  Business    = 'shell_office1',  
  Office1   = 'shell_office1',  
  Office2   = 'shell_office2',
  
  Stockage    = "shell_warehouse3", 
  Warehouse3 = "shell_warehouse3",  
 
  Motel       = "playerhouse_hotel",

  Magasin   = 'shell_store1', 
  Store1    = 'shell_store1',
  Barbers   = 'shell_barber', 
  Gunstore  = 'shell_gunstore', 

  -- NOTE: KAMBI PAYED SHELLS



  --OfficeBig = 'shell_officebig',

  --FrankAunt     = "shell_frankaunt",

  
  --CokeShell1    = 'shell_coke1',
  --CokeShell2    = 'shell_coke2',
  --MethShell     = 'shell_meth',
  --WeedShell1    = 'shell_weed',
  --WeedShell2    = 'shell_weed2',

 -- GarageShell1  = 'shell_garages',
 -- GarageShell2  = 'shell_garagem',
 -- GarageShell3  = 'shell_garagel',





     
  --Store3    = 'shell_store3',
  --Store2    = 'shell_store2',  
  
  
  
 
  
  
 
  --Unknow   = "playerhouse_tier3",
 
  --Ranch         = "shell_ranch",
  --HighEndV1     = "shell_highend",
  --HighEndV2     = "shell_highendv2",
  --Michaels      = "shell_michael",

}

ShellOffsets = {  
  Motel         = {exit = vector4(1.0,3.5,27.6,1.5)},
  T1            = {exit = vector4(-4.7,6.5,28.9,0.4)},
  Caravan       = {exit = vector4(1.3,2.0,27.1,0.4)},
  Trevor        = {exit = vector4(-0.2,3.5,27.5,0.0)},
  ApartmentV1   = {exit = vector4(-3.6,15.4,27.7,0.0)},
  ApartmentV2   = {exit = vector4(-1.4,13.9,28.85,0.8)},
  Lester        = {exit = vector4(1.5,5.8,28.1,3.1)},
  Ranch         = {exit = vector4(1.0,5.3,27.4,270.0)},
  HighEndV1     = {exit = vector4(22.1,0.4,22.7,271.0)},
  HighEndV2     = {exit = vector4(10.2,-0.9,23.4,270.0)},
  Michaels      = {exit = vector4(9.3,-5.6,20.0,259.0)},

  Office1       = {exit = vector4(-1.211617, -4.987183, 27.95093, 184.172)},
  Office2       = {exit = vector4(-3.488777, 2.018311, 28.73308, 91.23632)},
  OfficeBig     = {exit = vector4(12.6039, -1.839844, 24.69724, 180.4282)},

  Store1        = {exit = vector4(2.775688, 4.565063, 28.91416, 2.809942)},
  Store2        = {exit = vector4(0.7891312, 5.07373, 28.98058, 0.9400941)},
  Store3        = {exit = vector4(0.1036224, 7.573242, 27.99363, 359.8295)},
  Gunstore      = {exit = vector4(1.148056, 5.151367, 28.96727, 0.454677)},
  Barbers       = {exit = vector4(-1.598465, -5.24231, 28.99999, 181.2334)},

  Warehouse1    = {exit = vector4(8.625145, -0.1049805, 28.96388, 270.1945)},
  Warehouse2    = {exit = vector4(12.29147, -5.414795, 28.96133, 270.8702)},
  Warehouse3    = {exit = vector4(-2.386871, 1.656372, 28.99656, 89.92931)},

  --[[CokeShell1    = {exit = vector4(6.284302, -8.289307, 28.99088, 178.625)},
  CokeShell2    = {exit = vector4(6.284302, -8.289307, 28.99088, 178.625)},
  MethShell     = {exit = vector4(6.284302, -8.289307, 28.99088, 178.625)},
  WeedShell1    = {exit = vector4(-17.51855, -11.66284, 28.98102, 98.85722)},
  WeedShell2    = {exit = vector4(-17.51855, -11.66284, 28.98102, 98.85722)},]]

 -- GarageShell1  = {exit = vector4(-6.019897, -3.527344, 28.9867, 181.9444)},
 -- GarageShell2  = {exit = vector4(-13.56653, -1.5979, 29.00004, 93.81283)},
 -- GarageShell3  = {exit = vector4(-12.04602, 14.29126, 29.00008, 91.64314)},

  NewApt1       = {exit = vector4(2.223267, -8.481567, 21.30548, 186.0575)},
  NewApt2       = {exit = vector4(2.223267, -8.481567, 21.30548, 186.0575)},
  NewApt3       = {exit = vector4(-11.3893, -4.29541, 21.86993, 127.1683)},

  --Unknow      = {exit = vector4(-0.0, -0.0, 0.0, 0.0)}

  FrankAunt     = {exit = vector4(0.511617,   5.607183, 28.15093, 355.93)},
  Medium2       = {exit = vector4(-5.688777, -0.358311, 28.73308, 91.23632)},
  Medium3       = {exit = vector4(-5.65039,   1.839844, 23.29724, 86.2782)},
}

Houses = {
  
}

if IsDuplicityVersion() then
  Citizen.CreateThread(function()
    Wait(1500)

    local _prefix = "    [Allhousing]"
    local _error = function(...) print(_prefix,"[Error]",...); end
    local _print = function(...) print(_prefix,"[Log]",...);   end

    local check_coords = {}  
    for _,house in ipairs(Houses) do
      if check_coords[house.Entry] then
        _error("Duplicate entry location in houses.lua","Entry: "..tostring(house.Entry))
        return
      else
        check_coords[house.Entry] = true
      end
    end
    if not error_out then
      _print("Completed house table check successfully.")
    end
  end)
end

