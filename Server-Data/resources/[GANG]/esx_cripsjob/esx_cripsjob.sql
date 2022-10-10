INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_crips','Crips',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_crips','Crips',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_crips', 'Crips', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('crips', 'Crips', 1);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('crips', 0, 'soldato', 'Recrue', 0, 'null', 'null'),
('crips', 1, 'capo', 'Soldat', 0, 'null', 'null'),
('crips', 2, 'consigliere', 'Supplier', 0, 'null', 'null'),
('crips', 3, 'boss', 'Leader', 0, 'null', 'null');

