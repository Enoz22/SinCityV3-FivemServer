INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_yakuza','Yakuza',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_yakuza','Yakuza',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_yakuza', 'Yakuza', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('yakuza', 'Yakuza', 1);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('yakuza', 0, 'soldato', 'Shatei', 0, 'null', 'null'),
('yakuza', 1, 'capo', 'Kyodai', 0, 'null', 'null'),
('yakuza', 2, 'consigliere', 'Wakagashira', 0, 'null', 'null'),
('yakuza', 3, 'boss', 'Oyabun', 0, 'null', 'null');

