local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},
     {title="~b~Commissariat", colour=38, id=60, x =-1089.80444, y =-829.2179, z =38.2337},
     {title="~g~Hôpital", colour=2, id=61, x =313.503, y =-582.84399, z =90.611},
     {title="Gouvernement", colour=4, id=419,x =-545.48,  y =-225.24,  z =38.2},
     --{title="Auto-école", colour=4, id=351, x =240.7708, y =-1379.3359, z =33.7417},
     {title="Brasserie", colour=47, id=615,x = 416.16,  y = 6520.61,  z = 26.73},
     {title="Avocat", colour=26, id=133,x =-1283.6,  y =-565.28,  z =31.72},
     {title="Bahamas", colour=46, id=93,x =-1392.0,  y =-585.52,  z =30.24},
     {title="Blackwood saloon", colour=46, id=93, x =-297.08,  y =6253.4,  z =31.48},
     {title="Ferme",colour=52, id=469,x =2562.72,  y =4685.84,  z =34.11},
     {title="Yellowjack",colour=46, id=93,x =1981.16,  y =3034.04,  z =47.04},
     {title="Pétrolier",colour=36, id=436,x =2871.0,  y =4388.52,  z =50.4},
     {title="Pêcheur",colour=26, id=455,x =1346.44,  y =4326.96,  z =38.12},
     {title="Mine",colour=36, id=318,x =2938.72,  y =2805.24,  z =41.6},
     {title="Scierie",colour=25, id=120,x =-597.32,  y =5322.48,  z =70.32},
     {title="Poolbar",colour=46, id=93,x =449.92,  y =-265.2,  z =74.88},
     {title="Weazel News",colour=4, id=135,x =-574.12,  y =-918.64,  z =23.8},
     {title="Life Invader",colour=4, id=744,x =-1054.4,  y =-236.84,  z =39.72},
     {title="Skybar",colour=46, id=93,x =300.68,  y =-929.4,  z =56.8},
     {title="Split",colour=46, id=93,x =-431.88,  y =257.48,  z =83.0},
     {title="Tabac Firewood",colour=11, id=79,x = 2351.39,  y = 3128.42,  z = 48.21},
     {title="Tailleur",colour=4, id=366,x =717.32,  y =-965.08,  z =30.4},
     {title="Unicorn",colour=46, id=93, x =109.16,  y =-1318.6,  z =29.2},
     {title="Vigne",colour=27, id=85,x =-1905.88,  y =2058.88,  z =140.72},
     {title="Goldsmith",colour=46, id=618,x =1106.88,  y =-2019.28,  z =31.0},
     {title="Galaxy",colour=46, id=93,x =353.24,  y =307.04,  z =103.84},
     {title="Gouvernement de Cayo Perico",colour=4, id=419,x =4933.0,  y =-5294.52,  z =5.48},
     {title="Ferme de Cayo",colour=43, id=469,x =5057.64,  y =-4592.92,  z =2.88},
     {title="Aéroport",colour=0, id=251,x =1575.76,  y =3172.24,  z =40.52},
     {title="Barbier",colour=46, id=71,x =-814.3,  y =-183.8,  z =36.6},
     {title="Barbier",colour=46, id=71,x =136.8,  y =-1708.4,  z =36.6},
     {title="Barbier",colour=46, id=71,x =-1282.6,  y =-1116.8,  z =36.6},
     {title="Barbier",colour=46, id=71,x =1931.5,  y =3729.7,  z =36.6},
     {title="Barbier",colour=46, id=71,x =1212.8,  y =-472.9,  z =36.6},
     {title="Barbier",colour=46, id=71,x =-32.9,  y =-152.3,  z =56.1},
     {title="Barbier",colour=46, id=71,x =-278.1,  y =6228.5,  z =36.6},
     --{title="Pop's Dinner's",colour=46, id=93,x =1585.87,  y =6451.08,  z =36.6},
     {title="Agence Immobilière",colour=8, id=475,x =-113.04,  y =-605.16,  z =36.28},
	 {name="Casinobar",colour=46, id=93,x = 958.72,  y = 62.39,  z = 112.55},
	 {name="Peal's",colour=46, id=93,x = -1836.54,  y = -1208.22,  z = 14.31}

  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.6)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)