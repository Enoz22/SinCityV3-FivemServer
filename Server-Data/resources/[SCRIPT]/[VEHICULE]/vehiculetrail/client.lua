local allowedTowModels = { 
    ['bison'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['bobcatxl'] = {x = 0.0, y = -2.1, z = 0.30, rx = 0.0, ry = 0.0, rz = 0.0},
    ['guardian'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['rebal'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['rebal2'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['sadler4'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['sadler5'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['sandking'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['sandking2'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['runner'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['1500dj'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['6door'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['6doorford'] = {x = 0.0, y = -3.7, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['baggedram'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['dubsta3'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['riata'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['80silverado'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['silverado'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['silverado1'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['sl1500'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['topkickhd'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['contender'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['granger'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['nissantitan17'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['caracarase'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['sadler'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['f350uc'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['flatbed'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['19ramoffroad'] = {x = 0.0, y = -1.8, z = 0.98, rx = 0.0, ry = 0.0, rz = 0.0},
    ['2019ram'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['ddually'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['gmcs'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['kamacho'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['tiffany'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['15silverado'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['2door'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['duramax'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['cara'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['gmcs'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['2019ram'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['superduty'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['velociraptor'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['steeleraptor2'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['kingranch17'] = {x = 0.0, y = -2.1, z = 2.1, rx = 15.0, ry = 0.0, rz = 0.0}, -- LAST 3 SETS ARE ROTATION
    ['enclosedgoose'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['cotrailer'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
	['liftedchevy12'] = {x = 0.0, y = -2.1, z = 2.1, rx = 15.0, ry = 0.0, rz = 0.0},
}

local allowedVehicleTrailerModels = { 
 -- LAST 3 SETS ARE ROTATION
    ['enclosedgoose'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
    ['cotrailer'] = {x = 0.0, y = -1.8, z = 0.68, rx = 0.0, ry = 0.0, rz = 0.0},
}

local isTargetTowable = {
    [GetHashKey('blazer')] = true,
    [GetHashKey('blazer2')] = true,
    [GetHashKey('blazer3')] = true,
    [GetHashKey('blazer4')] = true,
    [GetHashKey('blazer5')] = true,
    [GetHashKey('AKUMA')] = true,
    [GetHashKey('avarus')] = true,
    [GetHashKey('bagger')] = true,
    [GetHashKey('bati')] = true,
    [GetHashKey('bati2')] = true,
    [GetHashKey('bf400')] = true,
    [GetHashKey('bmx')] = true,
    [GetHashKey('carbonrs')] = true,
    [GetHashKey('chimera')] = true,
    [GetHashKey('cliffhanger')] = true,
    [GetHashKey('cruiser')] = true,
    [GetHashKey('daemon')] = true,
    [GetHashKey('daemon2')] = true,
    [GetHashKey('defiler')] = true,
    [GetHashKey('double')] = true,
    [GetHashKey('enduro')] = true,
    [GetHashKey('esskey')] = true,
    [GetHashKey('faggio')] = true,
    [GetHashKey('faggio2')] = true,
    [GetHashKey('fixter')] = true,
    [GetHashKey('gargoyle')] = true,
    [GetHashKey('hakuchou')] = true,
    [GetHashKey('hakuchou2')] = true,
    [GetHashKey('hexer')] = true,
    [GetHashKey('hsp217')] = true,
    [GetHashKey('innovation')] = true,
    [GetHashKey('manchez')] = true,
    [GetHashKey('nemesis')] = true,
    [GetHashKey('nightblade')] = true,
    [GetHashKey('pcj')] = true,
    [GetHashKey('ruffian')] = true,
    [GetHashKey('sanchez')] = true,
    [GetHashKey('sandchez2')] = true,
    [GetHashKey('sanctus')] = true,
    [GetHashKey('scorcher')] = true,
    [GetHashKey('shotaro')] = true,
    [GetHashKey('sovereign')] = true,
    [GetHashKey('thrust')] = true,
    [GetHashKey('tribike3')] = true,
    [GetHashKey('vader')] = true,
    [GetHashKey('vortex')] = true,
    [GetHashKey('wolfsbane')] = true,
    [GetHashKey('zombiea')] = true,
    [GetHashKey('zombieb')] = true,
    [GetHashKey('rzr')] = true,
    [GetHashKey('454ss')] = true,
    [GetHashKey('x3')] = true,
}

local allowedBoatModels = {
    ['squalo'] = {x = 0.0, y = -1.4, z = 0.68},
    ['suntrap'] = {x = 0.0, y = -0.6, z = 0.28},
    ['tropic'] = {x = 0.0, y = -1.0, z = 0.68},
    ['speeder'] = {x = 0.0, y = -2.0, z = 0.00},
    ['predator'] = {x = 0.0, y = -2.4, z = 0.68},
    ['jetmax'] = {x = 0.0, y = -2.3, z = 0.38},
    ['toro'] = {x = 0.0, y = -1.3, z = 0.68},
    ['dinghy'] = {x = 0.0, y = -1.1, z = 0.28},
    ['dinghy2'] = {x = 0.0, y = -1.1, z = 0.28},
    ['dinghy3'] = {x = 0.0, y = -1.1, z = 0.28},
    ['dinghy4'] = {x = 0.0, y = -1.1, z = 0.28},
}

local allowedBikeModels = {
    ['blazer'] = {x = 0.0, y = -0.5, z = 0.28},
    ['blazer2'] = {x = 0.0, y = -0.5, z = 0.28},
    ['blazer3'] = {x = 0.0, y = -0.5, z = 0.28},
    ['blazer4'] = {x = 0.0, y = -0.5, z = 0.28},
    ['blazer5'] = {x = 0.0, y = -0.5, z = 0.28},
    ['AKUMA'] = {x = 0.0, y = -0.6, z = 0.38},
    ['avarus'] = {x = 0.0, y = -0.6, z = 0.18},
    ['bagger'] = {x = 0.0, y = -0.6, z = 0.38},
    ['bati'] = {x = 0.0, y = -0.6, z = 0.18},
    ['bati2'] = {x = 0.0, y = -0.6, z = 0.18},
    ['bf400'] = {x = 0.0, y = -0.6, z = 0.38},
    ['bmx'] = {x = 0.0, y = -0.6, z = 0.38},
    ['carbonrs'] = {x = 0.0, y = -0.6, z = 0.38},
    ['chimera'] = {x = 0.0, y = -0.6, z = 0.38},
    ['cliffhanger'] = {x = 0.0, y = -0.6, z = 0.38},
    ['cruiser'] = {x = 0.0, y = -0.6, z = 0.38},
    ['daemon'] = {x = 0.0, y = -0.6, z = 0.38},
    ['daemon2'] = {x = 0.0, y = -0.6, z = 0.38},
    ['defiler'] = {x = 0.0, y = -0.6, z = 0.38},
    ['double'] = {x = 0.0, y = -0.6, z = 0.38},
    ['enduro'] = {x = 0.0, y = -0.6, z = 0.38},
    ['esskey'] = {x = 0.0, y = -0.6, z = 0.38},
    ['faggio'] = {x = 0.0, y = -0.6, z = 0.38},
    ['faggio2'] = {x = 0.0, y = -0.6, z = 0.38},
    ['fixter'] = {x = 0.0, y = -0.6, z = 0.38},
    ['gargoyle'] = {x = 0.0, y = -0.6, z = 0.38},
    ['hakuchou'] = {x = 0.0, y = -0.6, z = 0.38},
    ['hakuchou2'] = {x = 0.0, y = -0.6, z = 0.38},
    ['hexer'] = {x = 0.0, y = -0.6, z = 0.38},
    ['hsp217'] = {x = 0.0, y = -0.6, z = 0.38},
    ['innovation'] = {x = 0.0, y = -0.6, z = 0.38},
    ['manchez'] = {x = 0.0, y = -0.6, z = 0.38},
    ['nemesis'] = {x = 0.0, y = -0.6, z = 0.38},
    ['nightblade'] = {x = 0.0, y = -0.6, z = 0.38},
    ['pcj'] = {x = 0.0, y = -0.6, z = 0.38},
    ['ruffian'] = {x = 0.0, y = -0.6, z = 0.38},
    ['sanchez'] = {x = 0.0, y = -0.6, z = 0.38},
    ['sandchez2'] = {x = 0.0, y = -0.6, z = 0.38},
    ['sanctus'] = {x = 0.0, y = -0.6, z = 0.18},
    ['scorcher'] = {x = 0.0, y = -0.6, z = 0.38},
    ['shotaro'] = {x = 0.0, y = -0.6, z = 0.38},
    ['sovereign'] = {x = 0.0, y = -0.6, z = 0.38},
    ['thrust'] = {x = 0.0, y = -0.6, z = 0.18},
    ['tribike3'] = {x = 0.0, y = -0.6, z = 0.38},
    ['vader'] = {x = 0.0, y = -0.6, z = 0.38},
    ['vortex'] = {x = 0.0, y = -0.6, z = 0.38},
    ['wolfsbane'] = {x = 0.0, y = -0.6, z = 0.38},
    ['zombiea'] = {x = 0.0, y = -0.6, z = 0.38},
    ['zombieb'] = {x = 0.0, y = -0.6, z = 0.38},
    ['rzr'] = {x = 0.0, y = -0.6, z = 0.38},
}
 
local hasWinch = {}
local currentlyWinchedVehicle = nil

local currentlyTowedVehicle = nil
local currentlyTowedBoat = nil
local currentlyTowedUteTrailer = nil


function isTargetVehicleATrailer(modelHash)
    if GetVehicleClassFromName(modelHash) == 11 then
        return true
    else
        return false
    end
end

local xoff = 0.0
local yoff = 0.0
local zoff = 0.0
local rxoff = 0.0
local ryoff = 0.0
local rzoff = 0.0

function isVehicleATruck(vehicle)
    local isValid = false
    for model,posOffset in pairs(allowedTowModels) do
        if IsVehicleModel(vehicle, model) then
            xoff = posOffset.x
            yoff = posOffset.y
            zoff = posOffset.z
            rxoff = posOffset.rx
            ryoff = posOffset.ry
            rzoff = posOffset.rz
            isValid = true
            break
        end
    end
    return isValid
end


function isVehicleABoat(vehicle)
    local isValid = false
    for model,posOffset in pairs(allowedBoatModels) do
        if IsVehicleModel(vehicle, model) then
            xoff = posOffset.x
            yoff = posOffset.y
            zoff = posOffset.z
            isValid = true
            break
        end
    end
    return isValid
end

function isVehicleABike(vehicle)
    local isValid = false
    for model,posOffset in pairs(allowedBikeModels) do
        if IsVehicleModel(vehicle, model) then
            xoff = posOffset.x
            yoff = posOffset.y
            zoff = posOffset.z
            isValid = true
            break
        end
    end
    return isValid
end

function isVehicleTowable(numModel) 
    return isTargetTowable[numModel] == true
end



--Trucks, Flatbeds--

DecorRegister('towed_vehicle', 3)

Citizen.CreateThread(function ()
    
	local playerPed
	local playerVeh
	local decor
	local currentlyTowed
	local foundEntity
	local driver

	while true do
		playerPed = PlayerPedId(-1)
		playerVeh = GetVehiclePedIsIn(playerPed)
		driver = GetPedInVehicleSeat(playerVeh, -1)
			
		if DoesEntityExist(playerVeh) then
			decor = DecorGetInt(playerVeh, 'towed_vehicle')
			
			if NetworkDoesEntityExistWithNetworkId(decor) then  
				currentlyTowed = NetToVeh(decor)
				
                if IsControlJustPressed(1, 73) then  
                    SetEntityCollision(playerVeh, false, false)          
					DetachEntity(currentlyTowed, false, false)
					playerVeh = NetToVeh(decor)
					DecorSetInt(playerVeh, 'towed_vehicle', 0)
				end
			else
				currentlyTowed = 0
			
				local isTargetTowable = isVehicleABike(playerVeh)
				local coords = GetEntityCoords(playerPed)
				local isVehicleTow = isVehicleATruck(GetClosestVehicle(coords.x, coords.y, coords.z, 7.0, 0, 70))
				local vehToTow = GetClosestVehicle(coords.x, coords.y, coords.z, 7.0, 0, 70)

				if isVehicleTow and isTargetTowable and IsControlJustPressed(1, 73) then 
					
					AttachEntityToEntity(playerVeh, vehToTow, GetEntityBoneIndexByName(vehToTow, 'bodyshell'), 0.0 + xoff, 0.0 + yoff, 0.0 + zoff, 0.0 + rxoff, 0.0 + ryoff, 0.0 + rzoff, 1, 1, 0, 1, 0, 1)
					SetEntityCollision(playerVeh, true, true)
					currentlyTowed = playerVeh
					
					DecorSetInt(playerVeh, 'towed_vehicle', VehToNet(playerVeh))
				end				
			end
			
		end
		Wait(0)
	end
end)



--BOATS--

DecorRegister('towed_boat', 3)

Citizen.CreateThread(function ()
    
	local playerPed
	local playerVeh
	local decor
	local currentlyTowedBoat
    local foundEntity
    local driver

	while true do
		playerPed = PlayerPedId(-1)
        playerVeh = GetVehiclePedIsIn(playerPed)
        driver = GetPedInVehicleSeat(playerVeh, -1)

        if DoesEntityExist(playerVeh) then
			decor = DecorGetInt(playerVeh, 'towed_boat')
			if NetworkDoesEntityExistWithNetworkId(decor) then  
				currentlyTowedBoat = NetToVeh(decor)

                if IsControlJustPressed(1, 73) then  
                    SetEntityCollision(playerVeh, false, false)
                    DetachEntity(playerVeh, false, false)
                    trailerName = NetToVeh(decor)
                    DecorSetInt(playerVeh, 'towed_boat', 0)
                    DecorRemove(playerVeh, propertyName)
                    -- headsUp("Boat")

				end
			else 
				currentlyTowedBoat = 0
				if IsControlJustPressed(1, 73) then 

					local isBoatTowable = isVehicleABoat(playerVeh)
					local coords = GetEntityCoords(playerPed)
					local pullingTrailer = GetClosestVehicle(coords.x, coords.y, coords.z, 10.0, 0, 70)
					local gotTrailer, trailerName = GetVehicleTrailerVehicle(pullingTrailer)
					-- min, max = GetModelDimensions(isVehicleABoat(playerVeh))
					-- mint, maxt = GetModelDimensions(GetHashKey('boattrailer'))

					if gotTrailer and GetEntityModel(trailerName) == GetHashKey('boattrailer') and isBoatTowable then
						AttachEntityToEntity(playerVeh, trailerName, GetEntityBoneIndexByName(trailerName, 'chassis'), 0.0 + xoff, 0.0 + yoff, 0.0 + zoff, 0, 0, 0, 1, 1, 0, 1, 0, 1)
						SetEntityCollision(playerVeh, true, true)
						currentlyTowedBoat = playerVeh
						
						DecorSetInt(playerVeh, 'towed_boat', VehToNet(trailerName))
					end
				end			
			end
        end
		Wait(0)
	end
end)

-- This is the utility trailer

DecorRegister('towed_utetrailer', 3)

Citizen.CreateThread(function ()
    
	local playerPed
	local playerVeh
	local decor
	local currentlyTowedUteTrailer
    local foundEntity
    local driver

	while true do
		playerPed = PlayerPedId(-1)
        playerVeh = GetVehiclePedIsIn(playerPed)
        driver = GetPedInVehicleSeat(playerVeh, -1)

        if DoesEntityExist(playerVeh) then
			decor = DecorGetInt(playerVeh, 'towed_utetrailer')
			if NetworkDoesEntityExistWithNetworkId(decor) then  
				currentlyTowedUteTrailer = NetToVeh(decor)

                if IsControlJustPressed(1, 73) then  
                    SetEntityCollision(playerVeh, false, false)
					DetachEntity(playerVeh, false, false)
					uteTrailerName = NetToVeh(decor)
					DecorSetInt(playerVeh, 'towed_utetrailer', 0)
					DecorRemove(playerVeh, propertyName)
				end
			else 
				currentlyTowedUteTrailer = 0
				if IsControlJustPressed(1, 73) then 

					local isBikeTowable = isVehicleABike(playerVeh)
					local coords = GetEntityCoords(playerPed)
					local pullingTrailer = GetClosestVehicle(coords.x, coords.y, coords.z, 10.0, 0, 70)
					local gotTrailer, uteTrailerName = GetVehicleTrailerVehicle(pullingTrailer)
					min, max = GetModelDimensions(isVehicleABike(playerVeh))
					mint, maxt = GetModelDimensions(GetHashKey('trailersmall'))

					if gotTrailer and GetEntityModel(uteTrailerName) == GetHashKey('trailersmall') and isBikeTowable then
						AttachEntityToEntity(playerVeh, uteTrailerName, GetEntityBoneIndexByName(uteTrailerName, 'chassis'), 0.0 + xoff, 0.0 + yoff, 0.0 + zoff, 0, 1, 1, 1, 1, 0, 1, 0, 1)
						SetEntityCollision(playerVeh, true, true)
						currentlyTowedUteTrailer = playerVeh
						
						DecorSetInt(playerVeh, 'towed_utetrailer', VehToNet(uteTrailerName))
					end
				end			
			end
		end
		Wait(0)
	end
end)

--- Car Haulers


DecorRegister('towed_flatdecktrailer', 3)

Citizen.CreateThread(function ()
    
	local playerPed
	local playerVeh
	local decor
	local currentlyTowedFlatdeckHauler
    local foundEntity
    local driver

	while true do
		playerPed = PlayerPedId(-1)
        playerVeh = GetVehiclePedIsIn(playerPed)
        driver = GetPedInVehicleSeat(playerVeh, -1)

        if DoesEntityExist(playerVeh) then
			decor = DecorGetInt(playerVeh, 'towed_flatdecktrailer')
			if NetworkDoesEntityExistWithNetworkId(decor) then  
				currentlyTowedFlatdeckHauler = NetToVeh(decor)

                if IsControlJustPressed(1, 73) then  
                    SetEntityCollision(playerVeh, false, false)
                    DetachEntity(playerVeh, false, false)
					flatdeckHaulerName = NetToVeh(decor)
					DecorSetInt(playerVeh, 'towed_flatdecktrailer', 0)
					DecorRemove(playerVeh, propertyName)
				end
			else 
				currentlyTowedFlatdeckHauler = 0
				if IsControlJustPressed(1, 73) then 

					local coords = GetEntityCoords(playerPed)
					local pullingTrailer = GetClosestVehicle(coords.x, coords.y, coords.z, 12.0, 0, 70)
					local gotTrailer, flatdeckHaulerName = GetVehicleTrailerVehicle(pullingTrailer)
					min, max = GetModelDimensions(isVehicleABike(playerVeh))
					mint, maxt = GetModelDimensions(GetHashKey('cotrailer'))

					if gotTrailer and GetEntityModel(flatdeckHaulerName) == GetHashKey('cotrailer')  then
						AttachEntityToEntity(playerVeh, flatdeckHaulerName, GetEntityBoneIndexByName(flatdeckHaulerName, 'bodyshell'), 0.0 + xoff, -0.3 + yoff, 0.7 + zoff, 0, 1, 1, 1, 1, 0, 1, 0, 1)
						SetEntityCollision(playerVeh, true, true)
						currentlyTowedFlatdeckHauler = playerVeh
						
						DecorSetInt(playerVeh, 'towed_flatdecktrailer', VehToNet(flatdeckHaulerName))
					end
				end			
			end
		end
		Wait(0)
	end
end)


DecorRegister('towed_enclosedtrailerlarge', 3)

Citizen.CreateThread(function ()
    
	local playerPed
	local playerVeh
	local decor
	local currentlyTowedEnclosedLarge
    local foundEntity
    local driver

	while true do
		playerPed = PlayerPedId(-1)
        playerVeh = GetVehiclePedIsIn(playerPed)
        driver = GetPedInVehicleSeat(playerVeh, -1)

        if DoesEntityExist(playerVeh) then
			decor = DecorGetInt(playerVeh, 'towed_enclosedtrailerlarge')
			if NetworkDoesEntityExistWithNetworkId(decor) then  
				currentlyTowedEnclosedLarge = NetToVeh(decor)

                if IsControlJustPressed(1, 73) then  
                    SetEntityCollision(playerVeh, false, false)
                    DetachEntity(playerVeh, false, false)
					enclosedTrailerLargeName = NetToVeh(decor)
					DecorSetInt(playerVeh, 'towed_enclosedtrailerlarge', 0)
					DecorRemove(playerVeh, propertyName)
				end
			else 
				currentlyTowedEnclosedLarge = 0
				if IsControlJustPressed(1, 73) then 

					local coords = GetEntityCoords(playerPed)
					local pullingTrailer = GetClosestVehicle(coords.x, coords.y, coords.z, 14.0, 0, 70)
					local gotTrailer, enclosedTrailerLargeName = GetVehicleTrailerVehicle(pullingTrailer)
					min, max = GetModelDimensions(isVehicleABike(playerVeh))
					mint, maxt = GetModelDimensions(GetHashKey('godzhauler'))

					if gotTrailer and GetEntityModel(enclosedTrailerLargeName) == GetHashKey('godzhauler')  then
						AttachEntityToEntity(playerVeh, enclosedTrailerLargeName, GetEntityBoneIndexByName(enclosedTrailerLargeName, 'chassis'), 0.0 + xoff, -1.0 + yoff, -1.2 + zoff, 0, 1, 1, 1, 1, 0, 1, 0, 1)
						SetEntityCollision(playerVeh, true, true)
						currentlyTowedEnclosedLarge = playerVeh
						
						DecorSetInt(playerVeh, 'towed_enclosedtrailerlarge', VehToNet(enclosedTrailerLargeName))
					end
				end			
			end
		end
		Wait(0)
	end
end)


DecorRegister('towed_enclosedtrailergoose', 3)

Citizen.CreateThread(function ()
    
	local playerPed
	local playerVeh
	local decor
	local currentlyTowedEnclosedGoose
    local foundEntity
    local driver

	while true do
		playerPed = PlayerPedId(-1)
        playerVeh = GetVehiclePedIsIn(playerPed)
        driver = GetPedInVehicleSeat(playerVeh, -1)

        if DoesEntityExist(playerVeh) then
			decor = DecorGetInt(playerVeh, 'towed_enclosedtrailergoose')
			if NetworkDoesEntityExistWithNetworkId(decor) then  
				currentlyTowedEnclosedGoose = NetToVeh(decor)

                if IsControlJustPressed(1, 73) then  
                    SetEntityCollision(playerVeh, false, false)
                    DetachEntity(playerVeh, false, false)
					enclosedTrailerGooseName = NetToVeh(decor)
					DecorSetInt(playerVeh, 'towed_enclosedtrailergoose', 0)
					DecorRemove(playerVeh, propertyName)
				end
			else 
				currentlyTowedEnclosedGoose = 0
				if IsControlJustPressed(1, 73) then 

					local coords = GetEntityCoords(playerPed)
					local pullingTrailer = GetClosestVehicle(coords.x, coords.y, coords.z, 14.0, 0, 70)
					local gotTrailer, enclosedTrailerGooseName = GetVehicleTrailerVehicle(pullingTrailer)
					min, max = GetModelDimensions(isVehicleABike(playerVeh))
					mint, maxt = GetModelDimensions(GetHashKey('enclosedgoose'))

					if gotTrailer and GetEntityModel(enclosedTrailerGooseName) == GetHashKey('enclosedgoose')  then
						AttachEntityToEntity(playerVeh, enclosedTrailerGooseName, GetEntityBoneIndexByName(enclosedTrailerGooseName, 'chassis'), 0.0 + xoff, -1.0 + yoff, 0.68 + zoff, 0, 1, 1, 1, 1, 0, 1, 0, 1)
						SetEntityCollision(playerVeh, true, true)
						currentlyTowedEnclosedGoose = playerVeh
						
						DecorSetInt(playerVeh, 'towed_enclosedtrailergoose', VehToNet(enclosedTrailerGooseName))
					end
				end			
			end
		end
		Wait(0)
	end
end)

DecorRegister('towed_cartrailer', 3)

Citizen.CreateThread(function ()
    
	local playerPed
	local playerVeh
	local decor
	local currentlyTowedEnclosedGoose
    local foundEntity
    local driver

	while true do
		playerPed = PlayerPedId(-1)
        playerVeh = GetVehiclePedIsIn(playerPed)
        driver = GetPedInVehicleSeat(playerVeh, -1)

        if DoesEntityExist(playerVeh) then
			decor = DecorGetInt(playerVeh, 'towed_cartrailer')
			if NetworkDoesEntityExistWithNetworkId(decor) then  
				currentlyTowedEnclosedGoose = NetToVeh(decor)

                if IsControlJustPressed(1, 73) then  
                    SetEntityCollision(playerVeh, false, false)
                    DetachEntity(playerVeh, false, false)
					cartrailerName = NetToVeh(decor)
					DecorSetInt(playerVeh, 'towed_cartrailer', 0)
					DecorRemove(playerVeh, propertyName)
				end
			else 
				currentlyTowedEnclosedGoose = 0
				if IsControlJustPressed(1, 73) then 

					local coords = GetEntityCoords(playerPed)
					local pullingTrailer = GetClosestVehicle(coords.x, coords.y, coords.z, 14.0, 0, 70)
					local gotTrailer, cartrailerName = GetVehicleTrailerVehicle(pullingTrailer)
					min, max = GetModelDimensions(isVehicleABike(playerVeh))
					mint, maxt = GetModelDimensions(GetHashKey('cartrailer'))

					if gotTrailer and GetEntityModel(cartrailerName) == GetHashKey('cartrailer')  then
						AttachEntityToEntity(playerVeh, cartrailerName, GetEntityBoneIndexByName(cartrailerName, 'chassis'), 0.0 + xoff, -1.2 + yoff, 0.0 + zoff, 0, 1, 1, 1, 1, 0, 1, 0, 1)
						SetEntityCollision(playerVeh, true, true)
						currentlyTowedEnclosedGoose = playerVeh
						
						DecorSetInt(playerVeh, 'towed_cartrailer', VehToNet(cartrailerName))
					end
				end			
			end
		end
		Wait(0)
	end
end)

DecorRegister('towed_ctrailer', 3)

Citizen.CreateThread(function ()
    
	local playerPed
	local playerVeh
	local decor
	local currentlyTowedEnclosedGoose
    local foundEntity
    local driver

	while true do
		playerPed = PlayerPedId(-1)
        playerVeh = GetVehiclePedIsIn(playerPed)
        driver = GetPedInVehicleSeat(playerVeh, -1)

        if DoesEntityExist(playerVeh) then
			decor = DecorGetInt(playerVeh, 'towed_ctrailer')
			if NetworkDoesEntityExistWithNetworkId(decor) then  
				currentlyTowedEnclosedGoose = NetToVeh(decor)

                if IsControlJustPressed(1, 73) then  
                    SetEntityCollision(playerVeh, false, false)
                    DetachEntity(playerVeh, false, false)
					ctrailerName = NetToVeh(decor)
					DecorSetInt(playerVeh, 'towed_ctrailer', 0)
					DecorRemove(playerVeh, propertyName)
				end
			else 
				currentlyTowedEnclosedGoose = 0
				if IsControlJustPressed(1, 73) then 

					local coords = GetEntityCoords(playerPed)
					local pullingTrailer = GetClosestVehicle(coords.x, coords.y, coords.z, 14.0, 0, 70)
					local gotTrailer, ctrailerName = GetVehicleTrailerVehicle(pullingTrailer)
					min, max = GetModelDimensions(isVehicleABike(playerVeh))
					mint, maxt = GetModelDimensions(GetHashKey('ctrailer'))

					if gotTrailer and GetEntityModel(ctrailerName) == GetHashKey('ctrailer')  then
						AttachEntityToEntity(playerVeh, ctrailerName, GetEntityBoneIndexByName(ctrailerName, 'chassis'), 0.0 + xoff, -1.0 + yoff, 0.68 + zoff, 0, 1, 1, 1, 1, 0, 1, 0, 1)
						SetEntityCollision(playerVeh, true, true)
						currentlyTowedEnclosedGoose = playerVeh
						
						DecorSetInt(playerVeh, 'towed_ctrailer', VehToNet(ctrailerName))
					end
				end			
			end
		end
		Wait(0)
	end
end)


DecorRegister('towed_thauler', 3)

Citizen.CreateThread(function ()
    
	local playerPed
	local playerVeh
	local decor
	local currentlyTowedEnclosedGoose
    local foundEntity
    local driver

	while true do
		playerPed = PlayerPedId(-1)
        playerVeh = GetVehiclePedIsIn(playerPed)
        driver = GetPedInVehicleSeat(playerVeh, -1)

        if DoesEntityExist(playerVeh) then
			decor = DecorGetInt(playerVeh, 'towed_thauler')
			if NetworkDoesEntityExistWithNetworkId(decor) then  
				currentlyTowedEnclosedGoose = NetToVeh(decor)

                if IsControlJustPressed(1, 73) then  
                    SetEntityCollision(playerVeh, false, false)
                    DetachEntity(playerVeh, false, false)
					thaulerName = NetToVeh(decor)
					DecorSetInt(playerVeh, 'towed_thauler', 0)
					DecorRemove(playerVeh, propertyName)
				end
			else 
				currentlyTowedEnclosedGoose = 0
				if IsControlJustPressed(1, 73) then 

					local coords = GetEntityCoords(playerPed)
					local pullingTrailer = GetClosestVehicle(coords.x, coords.y, coords.z, 14.0, 0, 70)
					local gotTrailer, thaulerName = GetVehicleTrailerVehicle(pullingTrailer)
					min, max = GetModelDimensions(isVehicleABike(playerVeh))
					mint, maxt = GetModelDimensions(GetHashKey('thauler'))

					if gotTrailer and GetEntityModel(thaulerName) == GetHashKey('thauler')  then
						AttachEntityToEntity(playerVeh, thaulerName, GetEntityBoneIndexByName(thaulerName, 'chassis'), 0.0 + xoff, -1.0 + yoff, 0.68 + zoff, 0, 1, 1, 1, 1, 0, 1, 0, 1)
						SetEntityCollision(playerVeh, true, true)
						currentlyTowedEnclosedGoose = playerVeh
						
						DecorSetInt(playerVeh, 'towed_thauler', VehToNet(thaulerName))
					end
				end			
			end
		end
		Wait(0)
	end
end)


DecorRegister('towed_pjtrailer', 3)

Citizen.CreateThread(function ()
    
	local playerPed
	local playerVeh
	local decor
	local currentlyTowedEnclosedGoose
    local foundEntity
    local driver

	while true do
		playerPed = PlayerPedId(-1)
        playerVeh = GetVehiclePedIsIn(playerPed)
        driver = GetPedInVehicleSeat(playerVeh, -1)

        if DoesEntityExist(playerVeh) then
			decor = DecorGetInt(playerVeh, 'towed_pjtrailer')
			if NetworkDoesEntityExistWithNetworkId(decor) then  
				currentlyTowedEnclosedGoose = NetToVeh(decor)

                if IsControlJustPressed(1, 73) then  
                    SetEntityCollision(playerVeh, false, false)
                    DetachEntity(playerVeh, false, false)
					pjtrailerName = NetToVeh(decor)
					DecorSetInt(playerVeh, 'towed_pjtrailer', 0)
					DecorRemove(playerVeh, propertyName)
				end
			else 
				currentlyTowedEnclosedGoose = 0
				if IsControlJustPressed(1, 73) then 

					local coords = GetEntityCoords(playerPed)
					local pullingTrailer = GetClosestVehicle(coords.x, coords.y, coords.z, 14.0, 0, 70)
					local gotTrailer, pjtrailerName = GetVehicleTrailerVehicle(pullingTrailer)
					min, max = GetModelDimensions(isVehicleABike(playerVeh))
					mint, maxt = GetModelDimensions(GetHashKey('pjtrailer'))

					if gotTrailer and GetEntityModel(pjtrailerName) == GetHashKey('pjtrailer')  then
						AttachEntityToEntity(playerVeh, pjtrailerName, GetEntityBoneIndexByName(pjtrailerName, 'chassis'), 0.0 + xoff, -1.0 + yoff, 0.0 + zoff, 0, 1, 1, 1, 1, 0, 1, 0, 1)
						SetEntityCollision(playerVeh, true, true)
						currentlyTowedEnclosedGoose = playerVeh
						
						DecorSetInt(playerVeh, 'towed_pjtrailer', VehToNet(pjtrailerName))
					end
				end			
			end
		end
		Wait(0)
	end
end)


-- BUNCH OF DUMB SHIT TO DO WITH THE FUCKING ROPE

-- Citizen.CreateThread(function ()
--     RopeLoadTextures() 
--         while not RopeAreTexturesLoaded() do Wait(0) 
--     end
--     LoadRopeData(rope, 'ropeFamily3')
-- end)

-- function loadRope() 
--     RopeLoadTextures() 
--         while not RopeAreTexturesLoaded() do Wait(0) 
--     end
--     LoadRopeData(rope, 'ropeFamily3')

-- end

-- RegisterNetEvent('AddedRope')
-- AddEventHandler('AddedRope', loadRope)

-- Citizen.CreateThread(loadRope)


--This is a raycast
function getVehicleInDirection(coordA, coordB)
    local rayHandle = StartShapeTestCapsule(coordA.x, coordA.y, coordA.z, coordB.x, coordB.y, coordB.z, 1.0, 10, GetPlayerPed(PlayerId()), 7)
    local _, _, _, _, vehicle = GetShapeTestResult(rayHandle)
	return vehicle
end


-- This makes a notifcation
function headsUp(text)
	SetTextComponentFormat('STRING')
	AddTextComponentString(text)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end