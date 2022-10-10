ConfigJob              = {}
ConfigJob.DrawDistance = 1000.0
ConfigJob.Locale       = 'fr'

ConfigJob.Plates = {
  taxi = "TAXI",
  fisherman = "FISH",
  --police = "LSPD",
  ambulance = "EMS",
  --mecano = "MECA",
  fueler = "FUEL",
  lumberjack = "BUCH",
  miner = "MINE",
  reporter = "NEWS",
  slaughterer = "ABAT",
  tailor = "COUT",
  vigne = "VINE",
  chemical = "CHEM",
  goldsmith = "ORPA",
}


ConfigJob.PublicZones = {
  EnterBuilding = {
    Pos   = { x = -118.21381378174, y = -607.14227294922, z = 35.280723571777 },
    Size  = {x = 3.0, y = 3.0, z = 0.2},
    Color = {r = 204, g = 204, b = 0},
    Marker= 1,
    Blip  = false,
    Name  = "Weazel News",
    Type  = "teleport",
    Hint  = "Appuyez sur ~INPUT_PICKUP~ pour rentrer dans le batiment.",
    Teleport = { x = -139.09838867188, y = -620.74865722656, z = 167.82052612305 }
  },

  ExitBuilding = {
    Pos   = { x = -139.45831298828, y = -617.32312011719, z = 167.82052612305 },
    Size  = {x = 3.0, y = 3.0, z = 0.2},
    Color = {r = 204, g = 204, b = 0},
    Marker= 1,
    Blip  = false,
    Name  = "Weazel News",
    Type  = "teleport",
    Hint  = "Press ~INPUT_PICKUP~ pour sortir du batiment.",
    Teleport = { x = -113.07, y = -604.93, z = 35.28 },
  },
}

function getJobConfig(jobName)
  --print(_G[jobName])
  if _G[jobName] == nil then
    JobData = _G[jobName] 
  end
  return _G[jobName]
end