INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_lost','Lost',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_lost','Lost',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_lost', 'Lost', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('lost', 'Lost', 1);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('lost', 0, 'soldato', 'Recrue', 0, 'null', 'null'),
('lost', 1, 'capo', 'Biker', 0, 'null', 'null'),
('lost', 2, 'consigliere', 'Meneur', 0, 'null', 'null'),
('lost', 3, 'boss', 'President', 0, 'null', 'null');