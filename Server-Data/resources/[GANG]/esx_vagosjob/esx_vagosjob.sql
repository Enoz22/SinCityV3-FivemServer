INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_vagos','Vagos',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_vagos','Vagos',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_vagos', 'Vagos', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('vagos', 'Vagos', 1);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('vagos', 0, 'soldato', 'Dealer', 0, 'null', 'null'),
('vagos', 1, 'capo', 'Braqueur', 0, 'null', 'null'),
('vagos', 2, 'consigliere', 'Bras droit', 0, 'null', 'null'),
('vagos', 3, 'boss', 'OG', 0, 'null', 'null');

