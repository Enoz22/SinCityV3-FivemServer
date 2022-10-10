SET @job_name = 'casinobar';
SET @society_name = 'society_casinobar';
SET @job_Name_Caps = 'Casinobar';


INSERT INTO `addon_account` (name, label, shared) VALUES
(@society_name, @job_Name_Caps, 1);

INSERT INTO `datastore` (name, label, shared) VALUES 
(@society_name, @job_Name_Caps, 1);

INSERT INTO `addon_inventory` (name, label, shared) VALUES
(@society_name, @job_Name_Caps, 1);

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
(@job_name, 0, 'recruit', 'Recrue', 300, '{}', '{}'),
(@job_name, 1, 'serveur', 'Serveur', 300, '{}', '{}'),
(@job_name, 2, 'barman', 'BarMan', 300, '{}', '{}'),
(@job_name, 3, 'secu', 'Securité', 300, '{}', '{}'),
(@job_name, 4, 'responsable', 'Responsable', 300, '{}', '{}'),
(@job_name, 5, 'viceboss', 'Directrice', 500, '{}', '{}'),
(@job_name, 6, 'boss', 'Gerant', 600, '{}', '{}')
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
(@job_name, @job_Name_Caps, 1);

INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES

('ketchup', 'Ketchup', 5, 0, 1),
('wmieso', 'Viande', 5, 0, 1),

('wgmieso', 'Viande Cuite', 5, 0, 1),
('wgpomidor', 'Tomate coupé', 5, 0, 1),
('wgsalata', 'Salade lavé', 5, 0, 1),

('wburger', 'Burger', 5, 0, 1);

INSERT INTO `datastore_data` (name, owner, data) VALUES
(@society_name, , );