RS.login_BannedMessage = "Hello %s, you are currently banned from this server, please contact the server owner" -- %s = Player Name (You can remove it if you don't like it)
RS.login_AntiXSS = true

    -- [[Block Blacklisted Names]]
RS.login_blacklistednames_Kick = true
    RS.login_blacklistednames_Table = {
         "administrator", "admin", "adm1n", "adm!n", "admln", "moderator", "owner", "nigger", "n1gger", "moderator", "eulencheats", "lynxmenu", "atgmenu", "hacker", "bastard", "hamhaxia", "333gang", "ukrp", "eguk", "n1gger", "n1ga", "nigga", "n1gga", "nigg3r",
        "nig3r", "shagged", "4dm1n", "4dmin", "m0d3r4t0r", "n199er", "n1993r", "rustchance.com", "rustchance", "hellcase.com", "hellcase", "youtube.com", "youtu.be", "youtube", "twitch.tv", "twitch", "anticheat.gg", "anticheat", "fucking",
        "chocohax", "civilgamers.com", "civilgamers", "csgoempire.com", "csgoempire", "g4skins.com", "g4skins", "gameodds.gg", "duckfuck.com", "crysishosting.com", "crysishosting", "key-drop.com", "key-drop.pl", "skinhub.com", "skinhub",
        "casedrop.eu", "casedrop", "cs.money", "rustypot.com","rampage.lt", "?", "xcasecsgo.com", "xcasecsgo", "csgocases.com",
        "csgocases", "K9GrillzUK.co.uk", "moat.gg", "princevidz.com", "princevidz", "pvpro.com", "Pvpro", "ez.krimes.ro", "loot.farm", "arma3fisherslife.net", "arma3fisherslife", "egamers.io", "ifn.gg", "key-drop", "sups.gg", "tradeit.gg",
         "§", "csgotraders.net", "csgotraders", "hurtfun.com", "hurtfun", "gamekit.com", "t.tv", "yandex.ru", "yandex", "csgofly.com", "csgofly", "pornhub.com", "pornhub","cs.deals","twat", "STRESS.PW"
    }
RS.login_blacklistednames_KickMessage = "Hello %s, your name is not allowed on this server\nContains : %s in the name" -- %s = Player Name , 2nd %s = Blacklisted Name ^^


RS.login_forceidentifiers_Steam = false
RS.login_forceidentifiers_Discord = false
RS.login_forceidentifiers_Rockstar = false
RS.login_forceidentifiers_Xbox = false
RS.login_forceidentifiers_Live = false
RS.login_forceidentifiers_FiveM = false
RS.login_forceidentifiers_KickMessage = "You require %s linked to your FiveM to join this server" -- %s = Identifier Type (ex. Steam)

-- After Login Checks (Checks made during the game...)


--[[VPN CHECKER AND COUNTRY BLOCKING]]
RS.login_CheckVPN = true
RS.login_CheckVPN_APIKey = "" -- https://proxycheck.io/pricing/ (Key is optional, but you are rate limited to 100 queries x day)
RS.login_CheckVPN_DetectionMode = 2 -- 0 Warning, 1 Kick, 2 Ban

RS.login_CheckVPN_CountryBlock = true
RS.login_CheckVPN_CountryBlock_DetectionMode = 1 -- 0 Warning, 1 Kick, 2 Ban
RS.login_CheckVPN_BlockedCountries = {"US"}


--[[STEAM TRUST FACTOR]]
RS.login_TrustFactor = true -- Steam Required
RS.login_TrustFactor_APIKey = "" -- https://steamcommunity.com/dev/apikey
RS.login_TrustFactor_DetectionMode = 2

RS.login_TrustFactor_BlockVacBanned = true -- Detect Vac Banned users
RS.login_TrustFactor_MaxDaysSinceLastBan = 365 -- 0 (for instant detect) -- 365 DAYS SINCE LAST BAN

RS.login_TrustFactor_AccountAgeCheck = true -- Check when the account was created
RS.login_TrustFactor_AccountAgeBlockPrivateProfile = true -- Block Private Profiles
RS.login_TrustFactor_MinAccountAge = 30 -- 30 Days 

RS.login_TrustFactor_FiveMPlayTimeCheck = true -- Enable/Disable how many hours does the player have on FiveM
RS.login_TrustFactor_FiveMPlayTimeMinHours = 10 -- 10 hours (default)
