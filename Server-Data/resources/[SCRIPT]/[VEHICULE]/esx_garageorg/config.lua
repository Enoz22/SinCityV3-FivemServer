Config = {}

Config.RangeCheck = 25.0 

Config.Garages = {

    ["A"] = { ----- gang mara 
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(1406.62, -1507.06, 59.25)
            },
            ["vehicle"] = {
                ["position"] = vector3(1410.82, -1516.58, 58.39), 
                ["heading"] = 113.82
            }
        }
    },
    ["B"] = { ----- orga selado
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-1541.75, 880.51, 181.38)
            },
            ["vehicle"] = {
                ["position"] = vector3(-1546.76, 866.04, 180.42), 
                ["heading"] = 199.82
            }
        }
    },
    ["C"] = { ----- orga
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-1803.8967285156, -341.45928955078, 43.986347198486)
            },
            ["vehicle"] = {
                ["position"] = vector3(-1810.7857666016, -337.13592529297, 43.552074432373), 
                ["heading"] = 320.0
            }
        }
    },
    ["D"] = { ----- orga
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-1803.8967285156, -341.45928955078, 43.986347198486)
            },
            ["vehicle"] = {
                ["position"] = vector3(-1810.7857666016, -337.13592529297, 43.552074432373), 
                ["heading"] = 320.0
            }
        }
    },
    ["E"] = { ----- orga
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-1803.8967285156, -341.45928955078, 43.986347198486)
            },
            ["vehicle"] = {
                ["position"] = vector3(-1810.7857666016, -337.13592529297, 43.552074432373), 
                ["heading"] = 320.0
            }
        }
    },
    ["F"] = {  ----- orga
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-1803.8967285156, -341.45928955078, 43.986347198486)
            },
            ["vehicle"] = {
                ["position"] = vector3(-1810.7857666016, -337.13592529297, 43.552074432373), 
                ["heading"] = 320.0
            }
        }
    },
    ["G"] = { ----- orga
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-1803.8967285156, -341.45928955078, 43.986347198486)
            },
            ["vehicle"] = {
                ["position"] = vector3(-1810.7857666016, -337.13592529297, 43.552074432373), 
                ["heading"] = 320.0
            }
        }
    },
    ["H"] = { ----- orga
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-1803.8967285156, -341.45928955078, 43.986347198486)
            },
            ["vehicle"] = {
                ["position"] = vector3(-1810.7857666016, -337.13592529297, 43.552074432373), 
                ["heading"] = 320.0
            }
        }
    },
    ["I"] = { ----- orga
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-1803.8967285156, -341.45928955078, 43.986347198486)
            },
            ["vehicle"] = {
                ["position"] = vector3(-1810.7857666016, -337.13592529297, 43.552074432373), 
                ["heading"] = 320.0
            }
        }
    },
    ["J"] = {  ----- orga
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-1803.8967285156, -341.45928955078, 43.986347198486)
            },
            ["vehicle"] = {
                ["position"] = vector3(-1810.7857666016, -337.13592529297, 43.552074432373), 
                ["heading"] = 320.0
            }
        }
    },
    ["K"] = { ---- orga
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-1803.8967285156, -341.45928955078, 43.986347198486)
            },
            ["vehicle"] = {
                ["position"] = vector3(-1810.7857666016, -337.13592529297, 43.552074432373), 
                ["heading"] = 320.0
            }
        }
    },
    ["L"] = { ---- orga
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-1803.8967285156, -341.45928955078, 43.986347198486)
            },
            ["vehicle"] = {
                ["position"] = vector3(-1810.7857666016, -337.13592529297, 43.552074432373), 
                ["heading"] = 320.0
            }
        }
    },    
    --[[["Boat"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(-734.872, -1325.817, 1.595),
                ["text"] = "[ ~o~E~s~ ] Garage",
            },
            ["vehicle"] = {
                ["position"] = vector3(-721.329, -1348.540, 0.970), 
                ["heading"] = 137.780,
                ["text"] = "[ ~o~E~s~ ] Store Vehicle",
            }
        }
    },]]--
    ["Aircraft"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(1770.71, 3239.42, 42.15),
                ["text"] = "[ ~o~E~s~ ] Garage",
            },
            ["vehicle"] = {
                ["position"] = vector3(1800.79, 3258.07, 43.97), 
                ["heading"] = 116.85,
                ["text"] = "[ ~o~E~s~ ] Store Vehicle",
            }
        }
    }
    --[[["Truck"] = {
        ["positions"] = {
            ["menu"] = {
                ["position"] = vector3(913.513, -1273.216, 27.092),
                ["text"] = "[ ~o~E~s~ ] Garage",
            },
            ["vehicle"] = {
                ["position"] = vector3(912.942, -1259.862, 25.731), 
                ["heading"] = 5.744,
                ["text"] = "[ ~o~E~s~ ] Store Vehicle",
            }
        }
    }]]--
}


Config.Trim = function(value)
	if value then
		return (string.gsub(value, "^%s*(.-)%s*$", "%1"))
	else
		return nil
	end
end

Config.AlignMenu = "right" 