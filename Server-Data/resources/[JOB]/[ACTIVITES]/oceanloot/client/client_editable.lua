RegisterNetEvent("ocean_:notify")
AddEventHandler("ocean_:notify",function(message)
  notify(message)
end)

function notify(message)
  sendMessage(message)
end

function sendMessage(msg)
  BeginTextCommandThefeedPost("STRING")
  AddTextComponentSubstringPlayerName(msg)
  EndTextCommandThefeedPostTicker(false, true)
end


local dataLoaded = false
CreateThread(function()
  while not dataLoaded do
    TriggerServerEvent("ocean_:playerjoined")
    Wait(1000)
  end
end)
RegisterNetEvent("ocean_:dataLoaded")
AddEventHandler("ocean_:dataLoaded",function()
  print("ocean_ loaded") 
  dataLoaded = true
end)


components = {
--  [x] = {{male},{female}}
  [1] = {{-1,0},{-1,0}}, -- Mask
  [3] = {{4,0},{3,0}}, -- Arms
  [4] = {{77,10},{97,13}}, -- Pants
  [5] = {{-1,0},{-1,0}}, -- Bags
  [6] = {{67,0},{70,0}}, -- Shoes
  [7] = {{-1,0},{-1,0}}, -- Chain
  [8] = {{58,1},{2,0}}, -- tshirt
  [9] = {{-1,0},{-1,0}}, -- bvest
  [10] = {{0,0},{0,0}}, -- decals
  [11] = {{178,10},{180,10}} -- torso
}
