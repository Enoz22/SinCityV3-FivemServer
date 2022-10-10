
--[[ Events Configuration ]]

--[[Blacklisted Events]]
RS.events_useBlacklistedEvents = true -- Detect if a user is 
RS.events_BlacklistedEvents = {
    "redst0nia:checking",
    "hentailover:xdlol",
    "antilynx8:anticheat",
    "antilynxr6:detection",
    "antilynx8r4a:anticheat",
    "antilynxr4:detect",
    "ynx8:anticheat",
    "lynx8:anticheat",
    "adminmenu:allowall",
    "h:xd",
    "HCheat:TempDisableDetection",
    "FAC:EzExec",
}

--[[Anti Fake Name]]
RS.events_useAntiFakeName = true -- Detects if a cheat tries to spam shit on your chat (REMEMBER!! THIS IS THE EVENTS ONE. There also is a Chat Control version in config/chat.lua)

--[[Protected Events]]
RS.events_useProtectedEvents = true
RS.events_ProtectedEvents_AntiSpam = true
RS.events_ProtectedEvents_AntiSpam_MaxEvents = 15 -- 5 Events in 10 Seconds (default)
RS.events_ProtectedEvents_AntiSpam_Timer = 10000 -- 10 Seconds (default)

RS.events_ProtectedEvents_Checker = true -- Enable/Disable Protected Events checking
    RS.events_ProtectedEvents_BlacklistedStrings = {
        "hacked",
        "Mod Menu",
        "You got fucked",
        "ATG",
        "on top",
        "anticheat",
        "cheat",
        "cipher"
    }

RS.events_Protectedevents = {
    ["test:event"] = {maxValue = 1000}, -- Example for TriggerServerEvent("test:event",20000) == ban
    ["esx_fueldelivery:pay"] = {maxValue = 1000},
    ["esx_carthief:pay"] = {maxValue=1000},
    ["esx_godirtyjob:pay"] = {maxValue=1000},
    ["esx_pizza:pay"] = {maxValue=1000},
    ["esx_ranger:pay"] = {maxValue=1000},
    ["esx_garbagejob:pay"] = {maxValue=1000},
    ["esx_gopostaljob:pay"] = {maxValue=1000},
    ["esx_slotmachine:sv:2"] = {maxValue=1000},
    ["esx_dmvschool:pay"] = {maxValue=1000},
    ["esx_tankerjob:pay"] = {maxValue=1000},
    ["AdminMenu:giveBank"] = {maxValue=100000},
    ["AdminMenu:giveCash"] = {maxValue=100000},
    ["LegacyFuel:PayFuel"] = {maxValue=1000},
    ["esx_society:billing"] = {maxValue=1500000},
    ["ljail:jailplayer"] = true, -- Only Spam Protection
    ["esx_jailer:sendToJail"] = true, -- Only Spam Protection
    ["js:jailuser"] = {maxValue=-1}, -- USE -1 FOR JAIL EVENTS
    ["esx_jail:sendToJail"] = {maxValue=-1}, -- USE -1 FOR JAIL EVENTS
    ["esx-qalle-jail:jailPlayer"] = {maxValue=-1}, -- USE -1 FOR JAIL EVENTS
    ["esx_communityservice:sendToCommunityService"] = {maxValue=-1} -- USE -1 FOR JAIL EVENTS
}
