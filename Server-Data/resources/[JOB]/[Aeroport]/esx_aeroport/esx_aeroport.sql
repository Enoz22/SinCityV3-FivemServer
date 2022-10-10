SET @job_name = 'aeroport';
SET @society_name = 'society_aeroport';
SET @job_Name_Caps = 'aeroport';



INSERT INTO `addon_account` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  (@society_name, @job_Name_Caps, 1),
  ('society_aeroport_fridge', 'Mojito (frigo)', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    (@society_name, @job_Name_Caps, 1)
;

INSERT INTO `jobs` (name, label, whitelisted) VALUES
  (@job_name, @job_Name_Caps, 1)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('aeroport',0,'employe','Employe',1,'{}','{}'),
  ('aeroport',1,'garde','Gardien',1,'{}','{}'),
  ('aeroport',2,'Pilote','Pilote',1,'{}','{}'),
  ('aeroport',3,'controleur','Controleur',1,'{}','{}'),
  ('aeroport',4,'boss','Patron',1,'{}','{}')
;


-- Celui se base
-- INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
--   (@job_name, 0, 'apprentie', 'Apprentie', 300, '{}', '{}'),
--   (@job_name, 1, 'pilote', 'Pilote', 500, '{}', '{}'),
--   (@job_name, 2, 'pilote2', 'Pilote experimenter', 700, '{}', '{}'),
--   (@job_name, 3, 'boss', 'PDG', 900, '{}', '{}')
-- ;

INSERT INTO `items` (`name`, `label`, `limit`) VALUES  
    ('parachute', 'Parachute', 15),
    ('fils', 'Fils', 50),
    ('piece', 'Piece en metal', 50)
;



--Besoin de 15 de piece et de 5 de fils pour faire un parachute
