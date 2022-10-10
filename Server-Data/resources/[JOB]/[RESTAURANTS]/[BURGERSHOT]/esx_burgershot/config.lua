--------------------------------------------
------ Napisane przez wojtek.cfg#0349 ------
----------------- ©  2019 ------------------
--------------------------------------------


Config                         = {}

-- czas --
Config.Czasprzebierania			   = 2 -- 2 seconde - changement vetement 
Config.czassmazenia            = 5 -- 5 sekund - temps cuisson viande
Config.czaskrojenia            = 5 -- 5 sekund - temps couper tomate
Config.czasmycia               = 5 -- 5 sekund - temps laver salade
Config.czasprzygotowania       = 5 -- 5 sekund - temps de preparation burger
Config.czassprzatania          = 15 -- 15 sekund - temps de nettoyage de toilette

-- szansa --
Config.szansa                  = 16 -- 1-100% chance que le client vomissent apres le repas

-- Max. ilości przedmiotów, które może mieć gracz

-- Należy dokonać takich samych zmian w ograniczeniach bazy danych (tabela `items` kolumna `limit`)
Config.maxbulka                = 30 -- pain burger
Config.maxpomidor              = 30 -- tomate
Config.maxsalata               = 30-- salade
Config.maxmieso                = 30 -- viande
Config.maxketchup              = 30 -- ketchup

Config.maxgmieso               = 30 -- viande cuite
Config.maxgpomidor             = 30 -- tomate coupé
Config.maxgsalata              = 30 -- salade propre

Config.maxburger               = 20 -- max burger pret

-- Paye Aléatoire ou fixe --
Config.losujwyplate       = true -- true aleatoire Config.Wypłata1 - Config.Wypłata2 // false - fixe Config.Wyplatanielosuj

-- Jeśli gracz ma otrzymywać stały zarobek --
Config.Wyplatanielosuj    = 30 -- Paye Fixe

-- Jeśli chcesz losować zarobek --
Config.Wyplata1					  = 155 -- Paye min
Config.Wyplata2 				  = 170 -- Paye Max

Config.Plate = 'BURGER00'
Config.Vehicles = {
	Type = -1,
	{
		Spawner    = { x = -1181.69, y = -903.77, z = 13.48},
		SpawnPoint = { x = -1175.03, y = -901.01, z = 13.69},
		Heading    = 302.02,
	}
}

Config.AuthorizedVehicles = {
	Shared = {
		{ model = 'speedo', label = 'Speedo' },
		{ model = 'faggio', label = 'Scooter' },
		{ model = 'tacobs', label = 'Taco' }

	},
}

-- Zone pour autosell
Config.Autosell = {

  Zone1 = { --autosell
    Pos   = { x = -1193.22, y = -892.31, z = 13.1 }, -- koordynaty
    Size  = { x = 2.0, y = 2.0, z = 0.4 }, -- wielkość 
    Color = { r = 0, g = 102, b = 204 }, -- kolor (RGB) 
    Type  = 1, -- typ markera
  },
  
}
-- Zone s'il a le job Resto
Config.StrefyJesliMaPrace = {

  Przebieralnia = { --Vestiaire
    Pos   = { x = -1192.46, y = -898.66, z = 13.1 }, -- koordynaty
    Size  = { x = 2.0, y = 2.0, z = 1.0 }, -- wielkość 
    Color = { r = 0, g = 100, b = 255 }, -- kolor (RGB) 
    Type  = 25, -- typ markera
  },
  
}

-- Zone de nettoyage
Config.Strefysprzatanko = {

  Sprzatanie = {
    Pos   = { x = -1200.14, y = -890.01, z = 13.1 }, 
    Size  = { x = 2.0, y = 2.0, z = 1.0 }, 
    Color = { r = 0, g = 100, b = 255 }, 
    Type  = 25, 
  },
  
}

--Zone s'il a le bon vetement
Config.StrefyJesliPrzebrany = {
  --frigo
   Lodowka = {
    Pos   = { x = -1204.83, y = -890.72, z = 13.1 },
    Size  = { x = 2.0, y = 2.0, z = 1.0 },
    Color = { r = 100, g = 255, b = 0 },  
    Type  = 25,
  },
  --Four
   Smaz = {
    Pos   = { x = -1199.98, y = -900.31, z = 13.1 },
    Size  = { x = 1.0, y = 1.0, z = 1.0 },
    Color = { r = 150, g = 100, b = 50 },  
    Type  = 25,
	},
  --Tomate
   Kroj = {
    Pos   = { x = -1198.91, y = -901.89, z = 13.1 },
    Size  = { x = 1.0, y = 1.0, z = 1.0 },
    Color = { r = 50, g = 150, b = 50 },  
    Type  = 25,
  },
  --Salade
  Myj = {
    Pos   = { x = -1197.15, y = -901.53, z = 13.1 },
    Size  = { x = 1.0, y = 1.0, z = 1.0 },
    Color = { r = 50, g = 50, b = 150 },  
    Type  = 25,
  },
  --Preparer Burger
  Przyg = {
    Pos   = { x = -1199.84, y = -898.24, z = 13.1 },
    Size  = { x = 1.0, y = 1.0, z = 1.0 },
    Color = { r = 150, g = 50, b = 50 },  
    Type  = 25,
  },
  --Vente
  Sprzedaz = {
    Pos   = { x = -1194.02, y = -895.50, z = -1000000.1 }, -- -1194.02, y = -895.50, z = 13.1
    Size  = { x = 1.0, y = 1.0, z = 1.0 },
    Color = { r = 100, g = 255, b = 150 },  
    Type  = 25,
  },
  Frite = {
    Pos   = { x = -1201.09, y = -898.63, z = 13.1 },
    Size  = { x = 1.0, y = 1.0, z = 1.0 },
    Color = { r = 255, g = 180, b = 0 },  
    Type  = 25,
  },
  Soda = {
    Pos   = { x = -1198.57, y = -894.85, z = 13.1 },
    Size  = { x = 1.0, y = 1.0, z = 1.0 },
    Color = { r = 128, g = 0, b = 128 },  
    Type  = 25,
  },
  Dessert = {
    Pos   = { x = -1203.01, y = -895.38, z = 13.1 },
    Size  = { x = 1.0, y = 1.0, z = 1.0 },
    Color = { r = 135, g = 206, b = 235 },  
    Type  = 25,
  },
  --Bossmenu
  bossmenu = {
    Pos   = { x = -1196.82, y = -891.35, z = 13.1 },
    Size  = { x = 1.0, y = 1.0, z = 1.0 },
    Color = { r = 180, g = 255, b = 120 },  
    Type  = 25,
  },
  
}
--------------------------------------------
------ Napisane przez wojtek.cfg#0349 ------
----------------- ©  2019 ------------------
--------------------------------------------