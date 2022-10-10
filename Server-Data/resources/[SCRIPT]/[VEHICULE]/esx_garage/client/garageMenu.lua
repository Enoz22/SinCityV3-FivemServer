local ultimaAccion = nil
local currentGarage = nil
local fetchedVehicles = {}
local fueravehicles = {}

function MenuGarage(action)
    if not action then action = ultimaAccion; elseif not action and not ultimaAccion then action = "menu"; end
    ped = GetPlayerPed(-1);
    MenuTitle = "Garage"
    ClearMenu()
    ultimaAccion = action
    Citizen.Wait(150)
    DeleteActualVeh()
    if action == "menu" then
        Menu.addButton("Voir vos véhicules","ListeVehicule",nil)
        -- Menu.addButton("Rapatriement","recuperar",nil)
        Menu.addButton("Fermer","CloseMenu",nil) 
    elseif action == "vehicle" then
        PutInVehicle()
    end
end

function EnvioVehLocal(veh)
    local slots = {}
    for c,v in pairs(veh) do
        table.insert(slots,{["garage"] = v.garage, ["vehiculo"] = json.decode(v.vehicle)})
    end
    fetchedVehicles = slots
end

function EnvioVehFuera(data)
    local slots = {}
    for c,v in pairs(data) do
        print(v.state)
        if v.state == 0 or v.state == 1 or v.state == 2 or v.state == false or v.garage == nil or v.garage == 'OUT' then
            table.insert(slots,{["vehiculo"] = json.decode(v.vehicle),["state"] = v.state})
        end
    end
    fueravehicles = slots
end

function recuperar()
    currentGarage = cachedData["currentGarage"]

    if not currentGarage then
        CloseMenu()
        return 
    end

   HandleCamera(currentGarage, true)
   ped = GetPlayerPed(-1);
   MenuTitle = "Rapatriement :"
   ClearMenu()
   Menu.addButton("Retour","MenuGarage",nil)
    for c,v in pairs(fueravehicles) do
        local vehicle = v.vehiculo
        if v.state == 0 or v.state == false or v.garage == 'OUT' then
            Menu.addButton("" ..(vehicle.plate).." | "..GetDisplayNameFromVehicleModel(vehicle.model), "OptionVehicle", {vehicle,nil}, "garage: "..currentGarage.."", " Santé Moteur : " .. round(vehicle.engineHealth) /10 .. "%", " Fuel : " .. round(vehicle.fuelLevel) .. "%","SpawnLocalVehicle")
        end
    end 
end

function pagorecupero(data)
    esx.TriggerServerCallback('erp_garage:checkMoney', function(hasEnoughMoney)
        SpawnVehicle({data,nil},true)
        
        -- if hasEnoughMoney == true then
           -- SpawnVehicle({data,nil},true)
        -- elseif hasEnoughMoney == "deudas" then
        --     recuperar()
        --     TriggerEvent('notification', 'Vous devez plus de 2000 $ au gouvernement, vous ne pourrez récupérer votre véhicule uniquement lorsque vous aurez réglé vôtre dette.', 2)
        -- else
        --     recuperar()
        --     TriggerEvent('notification', 'There\'s no money on it', 2)							
        -- end
    end)
end


function AbrirMenuGuardar()
    currentGarage = cachedData["currentGarage"]
    if not currentGarage then
        CloseMenu()
        return 
    end
   ped = GetPlayerPed(-1);
   MenuTitle = "Save :"
   ClearMenu()
   Menu.addButton("FERMER","CloseMenu",nil)
   Menu.addButton("GARAGE: "..currentGarage.." | STOCKER LE VEHICULE", "SaveInGarage", currentGarage, "", "", "","DeleteActualVeh")
end

function ListeVehicule()
    currentGarage = cachedData["currentGarage"]

    if not currentGarage then
        CloseMenu()
        return 
    end

   HandleCamera(currentGarage, true)
   ped = GetPlayerPed(-1);
   MenuTitle = "Mes véhicules :"
   ClearMenu()
   Menu.addButton("Retour","MenuGarage",nil)
    for c,v in pairs(fetchedVehicles) do
        if v then
            local vehicle = v.vehiculo
            Menu.addButton("" ..(vehicle.plate).." | "..GetDisplayNameFromVehicleModel(vehicle.model), "OptionVehicle", {vehicle,nil}, "garage: "..currentGarage.."", " Santé Moteur : " .. round(vehicle.engineHealth) /10 .. "%", " Fuel : " .. round(vehicle.fuelLevel) .. "%","SpawnLocalVehicle")
        end
    end

end

function round(n)
    if not n then return 0; end
    return n % 1 >= 0.5 and math.ceil(n) or math.floor(n)
end

function OptionVehicle(data)
   MenuTitle = "Options :"
   ClearMenu()
   Menu.addButton("Monter dans le véhicule", "SpawnVehicle", data)
   Menu.addButton("Retour", "ListeVehicule", nil)
end

function CloseMenu()
    HandleCamera(currentGarage, false)
	TriggerEvent("inmenu",false)
    Menu.hidden = true
end

function LocalPed()
	return GetPlayerPed(-1)
end
