INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_salado','Salado',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_salado','Salado',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_salado', 'Salado', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('salado', 'Salado', 1);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('salado', 0, 'soldato', 'Locos', 0, 'null', 'null'),
('salado', 1, 'capo', 'Soldados', 0, 'null', 'null'),
('salado', 2, 'consigliere', 'Segundo', 0, 'null', 'null'),
('salado', 3, 'boss', 'Don', 0, 'null', 'null');

