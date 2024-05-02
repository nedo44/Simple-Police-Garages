-----------------
------xNedo------
-----------------
require("config")
Config = {}
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

exports.ox_target:addBoxZone({
    coords = vec3(459.9510, -986.6163, 25.6998), 
    size = vec3(2, 2, 2), 
    rotation = 45,
    debug = false,
    options = {
        {
            
            name = 'pdgrg',
            event = "pd:garage",
            icon = "fa-solid fa-car",
            label = 'Police garages',
            groups = 'police' -- Here you can change what jobs can even open garage menu
            
        }
    }
})

lib.registerContext({
    id = 'cadet:m',
    title = 'Garage',
    options = CadetCars
})

lib.registerContext({
    id = 'PO1:m',
    title = 'Garage PO1',
    options = PO1Cars
})

lib.registerContext({
    id = 'PO2:m',
    title = 'Garage PO2',
    options = PO2Cars
})

lib.registerContext({
    id = 'PO3:m',
    title = 'Garage PO3',
    options = PO3Cars
})

lib.registerContext({
    id = 'PO3+1:m',
    title = 'Garage PO3+1',
    options = PO31Cars
})

lib.registerContext({
    id = 'sgt1:m',
    title = 'Garage Sergeant I',
    options = Sergeant1Cars
})

lib.registerContext({
    id = 'sgt2:m',
    title = 'Garage Sergeant II',
    options = Sergeant2Cars
})

lib.registerContext({
    id = 'ltn:m',
    title = 'Garage Lietenant',
    options = LietenantCars
})

lib.registerContext({
    id = 'cpt:m',
    title = 'Garage Captain',
    options = CaptainCars
})

lib.registerContext({
    id = 'cmd:m',
    title = 'Garage Commander',
    options = CommanderCars
})

lib.registerContext({
    id = 'staff2:m',
    title = 'Garage Staff2',
    options = Staff2Cars
})

lib.registerContext({
    id = 'staff1:m',
    title = 'Garage Staff1',
    options = Staff1Cars
})

RegisterNetEvent('pd:garage', function()
    local playerJobGrade = ESX.PlayerData.job.grade
    local options = { }

    if playerJobGrade == 1 then
        table.insert(options, {
            title = 'Cadet',
            description = 'Garage',
            menu = 'cadet:m',
            icon = 'fa-solid fa-car',
        })
    elseif playerJobGrade == 2 then
        table.insert(options, {
            title = 'Police Officer I',
            description = 'Garage',
            menu = 'PO1:m',
            icon = 'fa-solid fa-car',
        })
    elseif playerJobGrade == 3 then
        table.insert(options, {
            title = 'Police Officer II',
            description = 'Garage',
            menu = 'PO2:m',
            icon = 'fa-solid fa-car',
        })
    elseif playerJobGrade == 4 then
        table.insert(options, {
            title = 'Police Officer III',
            description = 'Garage',
            menu = 'PO3:m',
            icon = 'fa-solid fa-car',
        })
    elseif playerJobGrade == 5 then
        table.insert(options, {
            title = 'Police Officer III+I',
            description = 'Garage',
            menu = 'PO3+1:m',
            icon = 'fa-solid fa-car',
        })
    elseif playerJobGrade == 6 then
        table.insert(options, {
            title = 'Sergeant I',
            description = 'Garage',
            menu = 'sgt1:m',
            icon = 'fa-solid fa-car',
        })
    elseif playerJobGrade == 7 then
        table.insert(options, {
            title = 'Sergeant II',
            description = 'Garage',
            menu = 'sgt2:m',
            icon = 'fa-solid fa-car',
        })
    elseif playerJobGrade == 8 then
        table.insert(options, {
            title = 'Lieutenant',
            description = 'Garage',
            menu = 'ltn:m',
            icon = 'fa-solid fa-car',
        })
    elseif playerJobGrade == 9 then
        table.insert(options, {
            title = 'Captain',
            description = 'Garage',
            menu = 'cpt:m',
            icon = 'fa-solid fa-car',
        })
    elseif playerJobGrade == 10 then
        table.insert(options, {
            title = 'Commander',
            description = 'Garage',
            menu = 'cmd:m',
            icon = 'fa-solid fa-car',
        })
    elseif playerJobGrade == 11 then
        table.insert(options, {
            title = 'Assistant Chief',
            description = 'Garage',
            menu = 'staff2:m',
            icon = 'fa-solid fa-car',
        })
    elseif playerJobGrade == 12 then
        table.insert(options, {
            title = 'Chief Of Police',
            description = 'Garage',
            menu = 'staff1:m',
            icon = 'fa-solid fa-car',
        })

        -- Here you can add more police grades, just edit this number, and rename to ou liking
--                             ▼
--    elseif playerJobGrade == 13 then
--       table.insert(options, {
--          title = 'Chief Of Police',
--          description = 'Garage',
--          menu = 'staff1:m',               -- Make sure you have custom "registerLibContext() named the same" 
--          icon = 'fa-solid fa-car',
--       })
    end

    lib.registerContext({
        id = 'Vyber_menu',
        title = 'Police garages',
        options = options
    })
    lib.showContext('Vyber_menu')
end)

RegisterNetEvent('spawn:fpiuleg3') -- Change the name to 'spawn:(car spawncode)'
AddEventHandler('spawn:fpiuleg3',function()  -- Change the name to 'spawn:(car spawncode)'
    local model = GetHashKey("fpiuleg3") -- Put you cars spawncode here
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(500) -- Wait untill game loads HashKey of your car (0.5s)
    end
    
    local vehicle = CreateVehicle(model, Config.CarCoords, Config.CarHeading, true, false)
    SetVehicleOnGroundProperly(vehicle)
    
    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
        Wait(500) -- Waiting time, then it changes vehicle properties (0.5s)

        ESX.Game.SetVehicleProperties(vehicle, { 

            -- Here you can add custom vehicle properties, whitch the car spawns with 
            -- Use this website --> https://esx-brasil.github.io/es_extended/client/functions/game/setvehicleproperties/

            color1 = 12,
            color2 = 12,
            modLivery = 0,
            extras = {['1'] = true, ['2'] = true, ['3'] = true, ['4'] = true, ['5'] = true, ['6'] = true, ['7'] = true, ['8'] = false, ['9'] = true, ['10'] = true, ['11'] = true, ['12'] = true},
            plateIndex = 1,
            modArmor = 5,
            pearlescentColor = 12,
            modTransmission = 3,
            modEngine = 3,
            modBrakes = 3,
            modTurbo = true,
            dirtLevel = 0,
            
        })        
end)

RegisterNetEvent('spawn:chargleg2') -- Change the name to 'spawn:(car spawncode)'
AddEventHandler('spawn:chargleg2',function()  -- Change the name to 'spawn:(car spawncode)'
    local model = GetHashKey("chargleg2") -- Put you cars spawncode here
    
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(500) -- Wait untill game loads HashKey of your car (0.5s)
    end
    
    local vehicle = CreateVehicle(model, Config.CarCoords, Config.CarHeading, true, false)
    SetVehicleOnGroundProperly(vehicle)
    
    TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
        Wait(500) -- Waiting time, then it changes vehicle properties (0.5s)

        ESX.Game.SetVehicleProperties(vehicle, { 

            -- Here you can add custom vehicle properties, whitch the car spawns with 
            -- Use this website --> https://esx-brasil.github.io/es_extended/client/functions/game/setvehicleproperties/

            color1 = 12,
            color2 = 12,
            modLivery = 0,
            extras = {['1'] = true, ['2'] = true, ['3'] = true, ['4'] = true, ['5'] = true, ['6'] = true, ['7'] = true, ['8'] = false, ['9'] = true, ['10'] = true, ['11'] = true, ['12'] = true},
            plateIndex = 1,
            modArmor = 5,
            pearlescentColor = 12,
            modTransmission = 3,
            modEngine = 3,
            modBrakes = 3,
            modTurbo = true,
            dirtLevel = 0,
            
        })        
end)
