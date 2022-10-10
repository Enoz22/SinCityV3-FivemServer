INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_families','Families',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_families','Families',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_families', 'Families', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('families', 'Families', 1);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('families', 0, 'soldato', 'Ptite-Frappe', 0, '{}', '{}'),
('families', 1, 'capo', 'Dealer', 0, '{}', '{}'),
('families', 2, 'consigliere', 'Bras droit', 0, '{}', '{}'),
('families', 3, 'boss', 'OG', 0, '{}', '{}');

