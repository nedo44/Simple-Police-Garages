Config = {}
-- Coord, where you wanna have the garage menu, has to be changed in client.lua line: 16

Config.CarCoords = vector3(437.5887, -985.9952, 25.6998) --Coords, where the car spawns (I am using Gabz Mission Row Police)
Config.CarHeading = 20 -- Heading of the car (Rotation)

-- Here you can change what rank has what cars
-- If you have more that 12 police grades, you neet to edit client.lua line: 264

CadetCars = { --This is grade 1
    {
        title = 'Ford Police Interceptor',
        event = 'spawn:fpiuleg3', -- Make sure you have added custom event on the bottom of the config
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234449296141713409/image.png?ex=6630c5ff&is=662f747f&hm=7301123bf1bcbb6f2738a6cc9175aa76056344459c654991f445c2e1933d28ac&' -- Link to an image (If you dont want to have images, just delete the whole line)
    },
}
PO1Cars = { --This is grade 2
    {
        title = 'Ford Police Interceptor',
        event = 'spawn:fpiuleg3',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234449296141713409/image.png?ex=6630c5ff&is=662f747f&hm=7301123bf1bcbb6f2738a6cc9175aa76056344459c654991f445c2e1933d28ac&'
    },
    {
        title = 'Dodge Charger 2014',
        event = 'spawn:chargleg2',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234447673629605958/image.png?ex=6630c47c&is=662f72fc&hm=00abad59c662f9a2958bcbf996c7d198f7a24c8ab936d31d6a956c4005cb74bc&'
    },
    
}
PO2Cars = { --This is grade 3
    {
        title = 'Ford Police Interceptor',
        event = 'spawn:fpiuleg3',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234449296141713409/image.png?ex=6630c5ff&is=662f747f&hm=7301123bf1bcbb6f2738a6cc9175aa76056344459c654991f445c2e1933d28ac&'
    },
    {
        title = 'Dodge Charger 2014',
        event = 'spawn:chargleg2',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234447673629605958/image.png?ex=6630c47c&is=662f72fc&hm=00abad59c662f9a2958bcbf996c7d198f7a24c8ab936d31d6a956c4005cb74bc&'
    },
    
}
PO3Cars = { --This is grade 4
    {
        title = 'Ford Police Interceptor',
        event = 'spawn:fpiuleg3',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234449296141713409/image.png?ex=6630c5ff&is=662f747f&hm=7301123bf1bcbb6f2738a6cc9175aa76056344459c654991f445c2e1933d28ac&'
    },
    {
        title = 'Dodge Charger 2014',
        event = 'spawn:chargleg2',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234447673629605958/image.png?ex=6630c47c&is=662f72fc&hm=00abad59c662f9a2958bcbf996c7d198f7a24c8ab936d31d6a956c4005cb74bc&'
    },
    
}
PO31Cars = { --This is grade 5
    {
        title = 'Ford Police Interceptor',
        event = 'spawn:fpiuleg3',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234449296141713409/image.png?ex=6630c5ff&is=662f747f&hm=7301123bf1bcbb6f2738a6cc9175aa76056344459c654991f445c2e1933d28ac&'
    },
    {
        title = 'Dodge Charger 2014',
        event = 'spawn:chargleg2',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234447673629605958/image.png?ex=6630c47c&is=662f72fc&hm=00abad59c662f9a2958bcbf996c7d198f7a24c8ab936d31d6a956c4005cb74bc&'
    },
    
}
Sergeant1Cars = { --This is grade 6
    {
        title = 'Ford Police Interceptor',
        event = 'spawn:fpiuleg3',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234449296141713409/image.png?ex=6630c5ff&is=662f747f&hm=7301123bf1bcbb6f2738a6cc9175aa76056344459c654991f445c2e1933d28ac&'
    },
    {
        title = 'Dodge Charger 2014',
        event = 'spawn:chargleg2',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234447673629605958/image.png?ex=6630c47c&is=662f72fc&hm=00abad59c662f9a2958bcbf996c7d198f7a24c8ab936d31d6a956c4005cb74bc&'
    },
    
}
Sergeant2Cars = { --This is grade 7
    {
        title = 'Ford Police Interceptor',
        event = 'spawn:fpiuleg3',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234449296141713409/image.png?ex=6630c5ff&is=662f747f&hm=7301123bf1bcbb6f2738a6cc9175aa76056344459c654991f445c2e1933d28ac&'
    },
    {
        title = 'Dodge Charger 2014',
        event = 'spawn:chargleg2',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234447673629605958/image.png?ex=6630c47c&is=662f72fc&hm=00abad59c662f9a2958bcbf996c7d198f7a24c8ab936d31d6a956c4005cb74bc&'
    },
    
}
LietenantCars = { --This is grade 8
    {
        title = 'Ford Police Interceptor',
        event = 'spawn:fpiuleg3',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234449296141713409/image.png?ex=6630c5ff&is=662f747f&hm=7301123bf1bcbb6f2738a6cc9175aa76056344459c654991f445c2e1933d28ac&'
    },
    {
        title = 'Dodge Charger 2014',
        event = 'spawn:chargleg2',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234447673629605958/image.png?ex=6630c47c&is=662f72fc&hm=00abad59c662f9a2958bcbf996c7d198f7a24c8ab936d31d6a956c4005cb74bc&'
    },
    
}
CaptainCars = { --This is grade 9
    {
        title = 'Ford Police Interceptor',
        event = 'spawn:fpiuleg3',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234449296141713409/image.png?ex=6630c5ff&is=662f747f&hm=7301123bf1bcbb6f2738a6cc9175aa76056344459c654991f445c2e1933d28ac&'
    },
    {
        title = 'Dodge Charger 2014',
        event = 'spawn:chargleg2',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234447673629605958/image.png?ex=6630c47c&is=662f72fc&hm=00abad59c662f9a2958bcbf996c7d198f7a24c8ab936d31d6a956c4005cb74bc&'
    },
    
}
CommanderCars = { --This is grade 10
    {
        title = 'Ford Police Interceptor',
        event = 'spawn:fpiuleg3',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234449296141713409/image.png?ex=6630c5ff&is=662f747f&hm=7301123bf1bcbb6f2738a6cc9175aa76056344459c654991f445c2e1933d28ac&'
    },
    {
        title = 'Dodge Charger 2014',
        event = 'spawn:chargleg2',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234447673629605958/image.png?ex=6630c47c&is=662f72fc&hm=00abad59c662f9a2958bcbf996c7d198f7a24c8ab936d31d6a956c4005cb74bc&'
    },
    
}
Staff2Cars = { --This is grade 11
    {
        title = 'Ford Police Interceptor',
        event = 'spawn:fpiuleg3',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234449296141713409/image.png?ex=6630c5ff&is=662f747f&hm=7301123bf1bcbb6f2738a6cc9175aa76056344459c654991f445c2e1933d28ac&'
    },
    {
        title = 'Dodge Charger 2014',
        event = 'spawn:chargleg2',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234447673629605958/image.png?ex=6630c47c&is=662f72fc&hm=00abad59c662f9a2958bcbf996c7d198f7a24c8ab936d31d6a956c4005cb74bc&'
    },
    
}
Staff1Cars = { --This is grade 12
    {
        title = 'Ford Police Interceptor',
        event = 'spawn:fpiuleg3',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234449296141713409/image.png?ex=6630c5ff&is=662f747f&hm=7301123bf1bcbb6f2738a6cc9175aa76056344459c654991f445c2e1933d28ac&'
    },
    {
        title = 'Dodge Charger 2014',
        event = 'spawn:chargleg2',
        icon = 'fa-solid fa-car',
        image = 'https://cdn.discordapp.com/attachments/1234446453523615828/1234447673629605958/image.png?ex=6630c47c&is=662f72fc&hm=00abad59c662f9a2958bcbf996c7d198f7a24c8ab936d31d6a956c4005cb74bc&'
    },
    
}


-- For every car you need to make function like this, and paste it in client.lua
--[[

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

--]]

