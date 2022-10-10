INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_selado','selado',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_selado','selado',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_selado', 'selado', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('selado', 'selado', 1);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('selado', 0, 'soldato', 'Soldat', 0, 'null', 'null'),
('selado', 1, 'capo', 'Capo', 0, 'null', 'null'),
('selado', 2, 'consigliere', 'Consigliere', 0, 'null', 'null'),
('selado', 3, 'boss', 'Boss', 0, 'null', 'null');

