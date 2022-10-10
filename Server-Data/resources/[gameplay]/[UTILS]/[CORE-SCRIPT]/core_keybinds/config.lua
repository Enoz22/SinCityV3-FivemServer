Config = {

    --TO MAKE MENU WORK WHEN PRESSED YOU NEED TO ADD TRIGGER LISTENERS IN CLIENT/MAIN.LUA PASTE THEM UNCOMMENTED AND UNDER (--REGISTER YOUR TRIGGERS)
    
    --COMMON USES IN FUNCTION
    -- ExecuteCommand(command)
    -- openMenu(menuName)
    
    --RegisterNUICallback(
    --    (triggerName),  -- Write the trigger name here example "OpenInformation"
    --    function()
    --      
    --    This is what the button does when clicked in this example it executes command
    --        ExecuteCommand('info')
    
    --    end
    --)
    
    
    
    
    
    OpenKeyBindsCommand = 'keybinds',
    Keybinds = { -- Available function for keybinds (EVERY COMMAND USED NEEDS TO BE HERE FOR IT TO NOT GLITCH)
        {label = "MENU GÉNÉRAL", command = "general"},
        {label = "MENU DISPATCH", command = "dispatch"},
        --{label = "OPEN WEAPON MENU", command = "weapon"},
        --{label = "OPEN JOBS", command = "jobs"},
        {label = "MENU POLICE", command = "policemenu"},
        {label = "MENU VÊTEMENTS", command = "openvetements"},
        {label = "GESTION DU VÉHICULE", command = "vehcontrol"}
    },
    
    DefaultKeybinds = { -- Keybinds that will be set by default
        --['F10'] = 'dispach',
        --['F11'] = 'jobs'
    },
    
    BlockKeys = { -- Block keys to be used in keybinds
        ['F2'] = true,
        ['F10'] = true
    },
    
    Menus = {
    
        ['general'] = {
            Label = 'GENERAL', -- Label
            OpenCommand = 'general', -- Open Command if you dont want to open with command leave '' (IF U WANT TO OPEN WITH KEY ADD TO KEYBINDS)
            OpenLocations = nil, -- Open Locations if you dont want to open in location leave {} otherwise {vector3(x,y,z), ...}  
            JobWhitelist = {}, -- Jobs that can open this menu leave {} if you want everybody to open
            Fill = true, -- Fills remaining squares that do nothing
            CloseOnClick = true, -- Closes menu when clicked
            OnlyVehicle = false, -- Can only be opened in vehicle
            Boxes = {
    
                --{
                    --label = 'MY JOBS', -- Label of box
                   -- icon = 'fas fa-briefcase', -- Icon from fontawsome.com
                    --jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                   -- trigger = 'openJobs' -- This will be used to identify in client script what to do after press
                --},
                {
                    label = 'CARTE IDENTITE', -- Label of box
                    icon = 'fas fa-id-card', -- Icon from fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'openID' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'PERMIS CONDUIRE', -- Label of box
                    icon = 'fas fa-id-card', -- Icon from fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'openDRIVER' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'steam PORT D\'ARME', -- Label of box
                    icon = 'fas fa-id-card', -- Icon from fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'openARME' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'PRÉSENTER CARTE IDENTITE', -- Label of box
                    icon = 'fas fa-id-card', -- Icon from fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'donnerID' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'PRÉSENTER PERMIS DE CONDUIRE', -- Label of box
                    icon = 'fas fa-id-card', -- Icon from fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'donnerDRIVER' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'PRÉSENTER steam ARME', -- Label of box
                    icon = 'fas fa-id-card', -- Icon from fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'donnerARME' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'ANIMATIONS', -- Label of box
                    icon = 'fas fa-walking', -- Icon from fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'openAnim' -- This will be used to identify in client script what to do after press
                },
                --{
                   -- label = 'SETTINGS', -- Label of box
                   -- icon = 'fas fa-cog', -- Icon from fontawsome.com
                   -- jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                   -- trigger = 'openSettings' -- This will be used to identify in client script what to do after press
                --},
                {
                    label = 'VEHICULE', -- Label of box
                    icon = 'fas fa-car', -- Icon from fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'openCarControl' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'MES CLES', -- Label of box
                    icon = 'fas fa-key', -- Icon from fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'openCles' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'SAUVEGARDER POSITION', -- Label of box
                    icon = 'fas fa-compass', -- Icon from fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'savePosition' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'FACTURE', -- Label of box
                    icon = 'fas fa-scroll', -- Icon from fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'facture' -- This will be used to identify in client script what to do after press
                }
    
            }
    
    
        },
    
         ['vetements'] = {
            Label = 'VETEMENTS', -- Label
            OpenCommand = 'openvetements', -- Open Command if you dont want to open with command leave '' (IF U WANT TO OPEN WITH KEY ADD TO KEYBINDS)
            OpenLocations = nil, -- Open Locations if you dont want to open in location leave {} otherwise {vector3(x,y,z), ...}  
            JobWhitelist = {}, -- Jobs that can open this menu leave {} if you want everybody to open
            Fill = false, -- Fills remaining squares that do nothing
            CloseOnClick = false, -- Closes menu when clicked
            OnlyVehicle = false, -- Can only be opened in vehicle
            Boxes = {
    
                {
                    label = 'HAUT', -- Nom sous l'image
                    icon = 'fas fa-tshirt', -- Changer les émoticones avec le site fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'enleverHaut' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'PANTALON', -- Nom sous l'image 
                    icon = 'fas fa-walking', -- Changer les émoticones avec le site fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'enleverBas' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'CHAUSSURES', -- Nom sous l'image
                    icon = 'fas fa-socks', -- Changer les émoticones avec le site fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'enleverChaussure' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'GANTS', -- Nom sous l'image
                    icon = 'fas fa-mitten', -- Changer les émoticones avec le site fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'enleverGants' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'LUNETTES', -- Nom sous l'image
                    icon = 'fas fa-glasses', -- Changer les émoticones avec le site fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'enleverLunettes' -- This will be used to identify in client script what to do after press
                },
                { 
                    label = 'CHAPEAUX', -- Nom sous l'image
                    icon = 'fas fa-hat-cowboy', -- Changer les émoticones avec le site fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'enleverChapeaux' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'SAC', -- Nom sous l'image
                    icon = 'fas fa-hiking', -- Changer les émoticones avec le site fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'enleverSac' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'VARIANTE SAC', -- Nom sous l'image
                    icon = 'fas fa-hiking', -- Changer les émoticones avec le site fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'varianteSac' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'MASQUE', -- Nom sous l'image
                    icon = 'fas fa-theater-masks', -- Changer les émoticones avec le site fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'enleverMasque' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'MONTRE', -- Nom sous l'image
                    icon = 'fas fa-hand-rock', -- Changer les émoticones avec le site fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'enleverMontre' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'OREILLE', -- Nom sous l'image 
                    icon = 'fas fa-deaf', -- Changer les émoticones avec le site fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'enleverOreille' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'BRACELET', -- Nom sous l'image 
                    icon = 'fas fa-ring', -- Changer les émoticones avec le site fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'enleverBracelet' -- This will be used to identify in client script what to do after press
                },
    
            }
    
    
        },
    
    
         ['vehcontrol'] = {
            Label = 'VEHICLE CONTROL', -- Label
            OpenCommand = 'vehcontrol', -- Open Command if you dont want to open with command leave '' (IF U WANT TO OPEN WITH KEY ADD TO KEYBINDS)
            OpenLocations = nil,
            JobWhitelist = {}, -- Jobs that can open this menu leave {} if you want everybody to open
            Fill = true, -- Fills remaining squares that do nothing
            CloseOnClick = false, -- Closes menu when clicked
            OnlyVehicle = false, -- Can only be opened in vehicle
            Boxes = {
    
                {
                    label = 'START & STOP', -- Label of box
                    icon = 'fas fa-power-off', -- Icon from fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'startEngine' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'AVANT GAUCHE', -- Label of box
                    icon = 'fas fa-car-side', -- Icon from fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'frontLeft' -- This will be used to identify in client script what to do after press
                },
                 {
                    label = 'AVANT DROITE', -- Label of box
                    icon = 'fas fa-car-side', -- Icon from fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'frontRight' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'ARRIERE GAUCHE', -- Label of box
                    icon = 'fas fa-car-side', -- Icon from fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'backLeft' -- This will be used to identify in client script what to do after press
                },
                {
                    label = 'ARRIERE DROIT', -- Label of box
                    icon = 'fas fa-car-side', -- Icon from fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'backRight' -- This will be used to identify in client script what to do after press
                },
                 {
                    label = 'CAPOT', -- Label of box
                    icon = 'fas fa-car-side', -- Icon from fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'hood' -- This will be used to identify in client script what to do after press
                },
                 {
                    label = 'COFFRE', -- Label of box
                    icon = 'fas fa-car-side', -- Icon from fontawsome.com
                    jobWhitelist = {}, -- Jobs that will see this box. Leave {} if you want everybody to see
                    trigger = 'trunk' -- This will be used to identify in client script what to do after press
                }
    
    
            }
    
    
        }
    
       
    
    
    },
    
    Text = {
    
        ['not_in_vehicle'] = 'Vous devez être dans un vehicule',
        ['key_not_usable'] = 'Key %s ne peut pas être utiliser',
        ['no_such_menu'] = 'There is no such menu',
        ['not_whitelisted'] = 'Vous ne pouvez pas y acceder'
    
    }
    
    }
    
    
    
    function SendTextMessage(msg)
    
            ESX.ShowNotification(msg)
            --SetNotificationTextEntry('STRING')
            --AddTextComponentString(msg)
            --DrawNotification(0,1)
    
            --EXAMPLE USED IN VIDEO
            exports['mythic_notify']:SendAlert('inform', msg)
    
    end
    