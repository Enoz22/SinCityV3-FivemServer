local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},
    --{title="Garages", colour=26, id=50, x =212.86, y =-797.53, z =30.87},
    --{title="Garages", colour=26, id=50, x =365.83, y =291.86, z =103.41},
    --{title="Garage", colour=26, id=50, x =-1640.44, y =-907.17, z =8.69},
    --{title="Garage", colour=26, id=50, x =-58.32, y =336.12, z =111.51},
    --{title="Garage", colour=26, id=50, x =-3024.13, y =103.67, z =11.62},
    --{title="Garage", colour=26, id=50, x =-929.99, y =-166.52, z =41.88},
    --{title="Garage", colour=26, id=50, x =-1892.62, y =2004.27, z =141.78},
   -- {title="Garages", colour=26, id=50, x =2004.68, y =3072.36, z =47.05},
    --{title="Garages", colour=26, id=50, x =1737.98, y =3718.69, z =34.05},
    --{title="Garage", colour=26, id=50, x =1692.13, y =4782.43, z =41.92},
   -- {title="Garages", colour=26, id=50, x =121.79, y =6617.11, z =31.84},
    --{title="Garage", colour=26, id=50, x =1402.01, y =1118.47, z =114.84},
    --{title="Garage", colour=26, id=50, x =-1071.8, y = 4935.72, z =212.25},
    --{title="Garage", colour=26, id=50, x =1373.66, y = -1523.92, z =56.91},
    --{title="Garage", colour=26, id=50, x =-1189.94, y = -1486.96, z =4.38},
    --{title="Garage", colour=26, id=50, x =242.42, y = -1699.46, z =29.12},
    --{title="Garage", colour=26, id=50, x =-112.41, y = -1603.55, z =31.6},
    --{title="Garage", colour=26, id=50, x =327.86, y = -204.04, z =54.08},
    --{title="Garage", colour=26, id=50, x =-969.24, y = -1470.42, z =5.01},
    --{title="Garage", colour=26, id=50, x =117.76, y = -1950.45, z =20.75},
    --{title="Garage", colour=26, id=50, x =307.76, y = -2021.58, z =20.45},
    --{title="Garage", colour=26, id=50, x =426.74, y = -1520.47, z =29.28},
    --{title="Garage", colour=26, id=50, x =-2660.46, y = 1307.44, z =147.12},
    --{title="Garage", colour=26, id=50, x =971.27, y = -140.27, z =74.36},
    --{title="Garage", colour=26, id=50, x =2374.23, y = 2581.31, z =46.67},
    --{title="Garage", colour=26, id=50, x =2918.57, y = 4378.08, z =50.41},
    --{title="Garage", colour=26, id=50, x =-1093.86, y = 4946.73, z =218.35},
    --{title="Garages", colour=26, id=50, x =-126.6, y = 1004.92, z =235.72},
    --{title="Garage", colour=26, id=50, x =92.07, y =-208.10, z =54.49},
    --{title="Garage", colour=26, id=50, x =-308.56, y =-931.84, z =31.08},
    --{title="Garage", colour=26, id=50, x =-1188.56, y =-686.8, z =25.92},
    --{title="Garage", colour=26, id=50, x =-1445.04, y =-680.8, z =26.4},
    --{title="Garage", colour=26, id=50, x =-1398.2, y =63.92, z =53.4},
   -- {title="Garages", colour=26, id=50, x =-381.0, y =292.44, z =84.84},
    --{title="Garage", colour=26, id=50, x =-489.44, y =-253.0, z =35.68},
   -- {title="Garages", colour=26, id=50, x =144.32, y =-1313.76, z =28.96},
    --{title="Garage", colour=26, id=50, x =-726.52, y =-2031.28, z =8.88},
    --{title="Garage", colour=26, id=50, x =896.04, y =-62.08, z =78.76},
    --{title="Garage", colour=26, id=50, x =196.72, y =2743.76, z =43.44},
    --{title="Garage", colour=26, id=50, x =1365.89, y =4384.35, z =44.32},
    --{title="Garage", colour=26, id=50, x =-761.8, y =5538.48, z =33.48},
    --{title="Garages", colour=26, id=50, x =-339.43, y =6145.42, z =31.48},
    --{title="Garage", colour=26, id=50, x =2538.84, y =4666.68, z =33.96},
    --{title="Garage", colour=26, id=50, x =1865.28, y =2584.08, z =45.68},
    --{title="Garage", colour=26, id=50, x =387.12, y =-1658.72, z =27.32},
    --{title="Garage", colour=26, id=50, x =1060.88, y =-1975.28, z =31.0},
    --{title="Garage", colour=26, id=50, x =-182.2, y =-1963.48, z =27.64},
    --{title="Garage", colour=26, id=50, x =-1697.32, y =43.64, z =65.08},
    --{title="Garage", colour=26, id=50, x =-412.62, y =1208.09, z =325.84},
    --{title="Garage", colour=26, id=50, x =1153.86, y =-475.49, z =66.41},
    --{title="Garage", colour=26, id=50, x =-1298.80, y =260.40, z =63.28},
    --{title="Garage", colour=26, id=50, x =-805.68, y =-1305.04, z =5.00},
    --{title="Garage", colour=26, id=50, x =-618.39, y =-922.19, z =23.17},
    --{title="Garage", colour=26, id=50, x =-1658.77, y =-225.03, z =54.99},
    --{title="Garage", colour=26, id=50, x =431.55, y =6466.73, z =28.77},
    --{title="Garage", colour=26, id=50, x =761.76, y =-969.64, z =25.64},
    --{title="Garage", colour=26, id=50, x =5140.88, y =-4627.24, z =2.48},
    --{title="Garage", colour=26, id=50, x =2685.96, y =2765.64, z =37.88},
    --{title="Garage", colour=26, id=50, x =-308, y =6283.23, z =31.49}
    --{title="Garages", colour=26, id=50, x =4500.39, y =-4544.77, z =4.03},
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