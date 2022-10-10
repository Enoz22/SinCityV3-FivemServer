SET @job_name = 'Burgershot';
SET @society_name = 'society_burger';
SET @job_Name_Caps = 'BurgerShot';


INSERT INTO `addon_account` (name, label, shared) VALUES
(@society_name, @job_Name_Caps, 1);

INSERT INTO `addon_inventory` (name, label, shared) VALUES
(@society_name, @job_Name_Caps, 1);

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
(@job_name, 0, 'recruit', 'Transporteur', 300,'{}','{}'),
(@job_name, 1, 'equipier', 'Equipier', 360,'{}','{}'),
(@job_name, 2, 'cuisto', 'Commis de cuisine', 420,  '{}','{}'),
(@job_name, 3, 'chefcuisto', 'Chef de partie', 460,  '{}','{}'),
(@job_name, 4, 'chefcuisto2', 'Chef de cuisine', 510,  '{}','{}'),
(@job_name, 5, 'righthand', 'Co-Gerant', 560,  '{}','{}'),
(@job_name, 6, 'boss', 'Patron', 620, '{}','{}'),
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

