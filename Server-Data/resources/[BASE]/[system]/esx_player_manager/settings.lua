RS = {}
RC = {}

RS.Version = "1.2.0" -- Current Version (Do not edit this.)

    -- [[Discord Webhook links for logs]]
    RS.ConnectionWebhook = "https://discord.com/api/webhooks/861410980847550484/_rOQgbrcOKu4yQMjkBKKtuqJ3mAsw-oAHIBv7GaB00iiNopSyITa-iXyIIJtAPv6ZWhD" -- Recommended
    RS.DisconnectionWebhook = "https://discord.com/api/webhooks/861410980847550484/_rOQgbrcOKu4yQMjkBKKtuqJ3mAsw-oAHIBv7GaB00iiNopSyITa-iXyIIJtAPv6ZWhD" -- Recommended
    RS.GeneralWebhook = "https://discord.com/api/webhooks/861410750270406666/SSb8bdH1QFpL8LUeeNpeDxpYTfu1D3RaC88CIJRAEMbmo2dsWrz7l0Q8QPCJvEJlAuQh" -- Important (All Logs)

    RS.Screenshot_StorageWebhook = "" -- Important (Storage Only)
    RS.ScreenshotsWebhook = "" -- Screenshot Logs

    RS.ClientHeartbeatWebhook = "" -- Optional
    RS.VPNCheckWebhook = "" -- Optional
    RS.TrustFactorWebhook = "" -- Optional
    RS.EventsWebhook = "https://discord.com/api/webhooks/861411076381212683/cs60xBVocCH7HUXfmu8fssOrb5Zy3yseYGGuQyYYxTLa4McIok3ad6RiytWTv6eFyC2I" -- Optional
    RS.ChatWebhook = "" -- Optional
    RS.ExplosionsWebhook = "" -- Optional
    RS.WeaponsWebhook = "" -- Optional
    RS.EntitiesWebhook = "" -- Optional
    RS.ChocoHaxAIWebhook = "" -- Optional
    RS.ClientDetectionsWebhook = "https://discord.com/api/webhooks/861411076381212683/cs60xBVocCH7HUXfmu8fssOrb5Zy3yseYGGuQyYYxTLa4McIok3ad6RiytWTv6eFyC2I" -- Optional
    RS.ServerDetectionsWebhook = "https://discord.com/api/webhooks/861411076381212683/cs60xBVocCH7HUXfmu8fssOrb5Zy3yseYGGuQyYYxTLa4McIok3ad6RiytWTv6eFyC2I" -- Optional
    RS.UnauthorizedAdminMenuWebhook = "" -- Optional
    RS.SeclyWebhook = "https://discord.com/api/webhooks/861411076381212683/cs60xBVocCH7HUXfmu8fssOrb5Zy3yseYGGuQyYYxTLa4McIok3ad6RiytWTv6eFyC2I" -- Optional

-- [[Kick Message when someone gets kicked/banned]]
RS.kickMessage = "Vous avez été kick du serveur. Si vous trichiez, vous êtes désormais banni. Au revoir."

-- [[Warnings]]

RS.warningLimit = 5 -- default 5
RS.warningLimitBan = true -- Ban the player after <RS.warningLimit> detections

--[[Client Side Settings]]

RC.AntiSpectate = false -- Perform Spectate Checks on unauthorized players (not chocohax.spectate)
RC.AntiBlips = false -- Perform Blips Checks on unauthorized players (not chocohax.blips)
RC.ResourceChecker = true -- Perform Resource Checking on Players (not chocohax.clientbypass)

--[[Server Side Settings]]

RS.AntiSuperJump = true -- Perform SuperJump Checks (not on chocohax.trustfactor)
RS.AntiInvincible = false -- Perform Godmode Checks (not on chocohax.trustfactor) (DO NOT USE ON VRP OR ESX)
RS.AntiInvisible = false -- Perform Visibility Checks (not on chocohax.trustfactor) (DO NOT USE ON VRP OR ESX)
RS.ClearPedTasksImmediately =  false -- Enable/Disable ClearPedTasksImmediately (Before enabling this feature make sure you don't use ANY ClearPedTasksImmediately on the client side!!!!)

--[[Admin Menu Settings]]

RS.EnableAdminMenu = true -- Enable/Disable Admin Menu