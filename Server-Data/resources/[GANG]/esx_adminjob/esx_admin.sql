INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_admin','admin',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_admin','admin',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_admin', 'admin', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('admin', 'admin', 1);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('admin', 0, 'soldato', 'Soldat', 0, 'null', 'null'),
('admin', 1, 'capo', 'Capo', 0, 'null', 'null'),
('admin', 2, 'consigliere', 'Consigliere', 0, 'null', 'null'),
('admin', 3, 'boss', 'Boss', 0, 'null', 'null');

