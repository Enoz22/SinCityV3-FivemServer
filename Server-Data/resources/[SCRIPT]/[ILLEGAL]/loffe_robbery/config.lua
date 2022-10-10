Config = {}
Translation = {}

Config.Shopkeeper = 416176080 -- hash of the shopkeeper ped
Config.Locale = 'custom' -- 'en', 'sv' or 'custom'

Config.Shops = {
    -- {coords = vector3(x, y, z), heading = peds heading, black_money = {min, max}, cops = amount of cops required to rob, blip = true: add blip on map false: don't add blip, name = name of the store (when cops get alarm, blip name etc)}
    {coords = vector3(24.03, -1345.63, 29.5-0.98), heading = 266.0, black_money = {1500, 1600}, cops = 4, blip = false, name = 'Braquage Superette', cooldown = {hour = 2, minute = 0, second = 0}, robbed = false},
    {coords = vector3(-705.73, -914.91, 19.22-0.98), heading = 91.0, black_money = {1500, 1600}, cops = 4, blip = false, name = 'Braquage Superette', cooldown = {hour = 2, minute = 0, second = 0}, robbed = false},
    {coords = vector3(-1221.20, -907.98, 12.32-0.98), heading = 45.0, black_money = {1500, 1600}, cops = 4, blip = false, name = 'Braquage Superette', cooldown = {hour = 2, minute = 0, second = 0}, robbed = false},
    {coords = vector3(1134.18, -983.17, 46.41-0.98), heading = 285.0, black_money = {1500, 1600}, cops = 4, blip = false, name = 'Braquage Superette', cooldown = {hour = 2, minute = 0, second = 0}, robbed = false},
    {coords = vector3(1165.31, -324.03, 69.20-0.98), heading = 95.0, black_money = {1500, 1600}, cops = 4, blip = false, name = 'Braquage Superette', cooldown = {hour = 2, minute = 0, second = 0}, robbed = false},
    {coords = vector3(372.60, 328.35, 103.56-0.98), heading = 250.0, black_money = {1500, 1600}, cops = 4, blip = false, name = 'Braquage Superette', cooldown = {hour = 2, minute = 0, second = 0}, robbed = false},
    {coords = vector3(549.33, 2670.80, 42.15-0.98), heading = 95.9, black_money = {1500, 1600}, cops = 4, blip = false, name = 'Braquage Superette', cooldown = {hour = 2, minute = 0, second = 0}, robbed = false},
    {coords = vector3(1165.94, 2710.90, 38.15-0.98), heading = 176.0, black_money = {1500, 1600}, cops = 4, blip = false, name = 'Braquage Superette', cooldown = {hour = 2, minute = 0, second = 0}, robbed = false},
    {coords = vector3(2677.95, 3279.47, 55.24-0.98), heading = 33.9, black_money = {1500, 1600}, cops = 4, blip = false, name = 'Braquage Superette', cooldown = {hour = 4, minute = 0, second = 0}, robbed = false},
    {coords = vector3(1698.11, 4922.91, 42.06-0.98), heading = 327.2, black_money = {1500, 1600}, cops = 4, blip = false, name = 'Braquage Superette', cooldown = {hour = 2, minute = 0, second = 0}, robbed = false},
    {coords = vector3(1727.84, 6415.24, 35.03-0.98), heading = 245.0, black_money = {1500, 1600}, cops = 4, blip = false, name = 'Braquage Superette', cooldown = {hour = 2, minute = 0, second = 0}, robbed = false},
    {coords = vector3(1392.46, 3606.30, 34.98-0.98), heading = 203.1, black_money = {1500, 1600}, cops = 4, blip = false, name = 'Braquage Superette', cooldown = {hour = 2, minute = 0, second = 0}, robbed = false},
    {coords = vector3(1959.92, 3740.15, 32.34-0.98), heading = 297.7, black_money = {1500, 1600}, cops = 4, blip = false, name = 'Braquage Superette', cooldown = {hour = 2, minute = 0, second = 0}, robbed = false},
}

Translation = {
    ['custom'] = { -- edit this to your language
        ['shopkeeper'] = 'Apu',
        ['robbed'] = 'On vient de me voler et je ~r~n\'ai plus ~w~d\'argent !',
        ['cashrecieved'] = 'Vous avez :',
        ['currency'] = '$',
        ['scared'] = 'Effrayé :',
        ['no_cops'] = 'Il n\'y a ~r~pas~w~ assez de flics en ville !',
        ['cop_msg'] = 'Nous avons envoyé une photo du voleur prise par la caméra de vidéosurveillance !',
        ['set_waypoint'] = 'Définir le waypoint jusqu\'au magasin',
        ['hide_box'] = 'Fermer cette boîte',
        ['robbery'] = 'Braquage en cours',
        ['walked_too_far'] = 'Tu es parti trop loin !'
    }
}