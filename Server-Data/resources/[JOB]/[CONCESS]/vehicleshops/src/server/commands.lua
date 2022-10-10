-- https://modit.store
-- ModFreakz

RegisterCommand("create:vehshop", function(source,args)
  TriggerClientEvent("VehicleShops:CreateNew",source)
end,false)

RegisterCommand("setjob:concess", function(source, args)
  if args[1] then
    if args[2] then
      TriggerEvent("setjob:concess", source, args[2],args[1])
      print(json.encode(args))
    else
      TriggerClientEvent("esx:showNotification",source,"Vous n'avez pas entrée un player id")
    end
  else
    TriggerClientEvent("esx:showNotification",source,"Vous n'avez pas entrée de shop valide")
  end
end, true) 