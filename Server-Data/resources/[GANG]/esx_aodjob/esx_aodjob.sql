INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_aod','AOD',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_aod','AOD',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_aod', 'AOD', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('aod', 'AOD', 1);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('aod', 0, 'soldato', 'Recrue', 0, 'null', 'null'),
('aod', 1, 'capo', 'Biker', 0, 'null', 'null'),
('aod', 2, 'consigliere', 'Bras droit', 0, 'null', 'null'),
('aod', 3, 'boss', 'Boss', 0, 'null', 'null');

