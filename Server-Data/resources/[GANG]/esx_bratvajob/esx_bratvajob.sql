INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_bratva','Bratva',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_bratva','Bratva',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_bratva', 'Bratva', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('bratva', 'Bratva', 1);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('bratva', 0, 'soldato', 'Shestyorka', 0, 'null', 'null'),
('bratva', 1, 'capo', 'Boyevik', 0, 'null', 'null'),
('bratva', 2, 'consigliere', 'Sovietnik', 0, 'null', 'null'),
('bratva', 3, 'boss', 'Pakhan', 0, 'null', 'null');

