local blips = {
    -- Example {title="", colour=, id=, x=, y=, z=},
     {title="Superette", colour=43, id=59, x =374.0104, y =327.0845, z =103.56637},
     {title="Superette", colour=43, id=59, x =2556.9667, y =382.0054, z =108.622},
     {title="Superette", colour=43, id=59, x =-3038.939, y =585.954, z =6.908},
     {title="Superette", colour=43, id=59, x =-3241.927, y =1001.462, z =11.830},
     {title="Superette", colour=43, id=59, x =547.431, y =2671.710, z =41.156},
     {title="Superette", colour=43, id=59, x =1961.464, y =3740.672, z =31.343},
     {title="Superette", colour=43, id=59, x =2678.916, y =3280.671, z =54.241},
     {title="Superette", colour=43, id=59, x =1729.394, y =6415.450, z =35.037},
     {title="Superette", colour=43, id=59, x =1135.808, y =-982.281, z =45.415},
     {title="Superette", colour=43, id=59, x =-1222.915, y =-906.983, z =11.326},
     {title="Superette", colour=43, id=59, x =-1487.553, y =-379.107, z =39.163},
     {title="Superette", colour=43, id=59, x =-2968.243, y =390.910, z =14.043},
     {title="Superette", colour=43, id=59, x =1166.024, y =2708.930, z =37.157},
     {title="Superette", colour=43, id=59, x =1392.562, y =3604.648, z =33.980},
     {title="Superette", colour=43, id=59, x =-48.334, y =-1757.4930, z =29.42101},
     {title="Superette", colour=43, id=59, x =1163.373, y =-323.801, z =68.205},
     {title="Superette", colour=43, id=59, x =-707.501, y =-914.260, z =18.215},
     {title="Superette", colour=43, id=59, x =-1820.523, y =792.518, z =137.118},
     {title="Superette", colour=43, id=59, x =26.275, y =-1346.582, z =29.497},  
     {title="Superette", colour=43, id=59, x =1698.388, y =4924.404, z =41.063},
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