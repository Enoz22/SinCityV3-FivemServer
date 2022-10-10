INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_soa','SOA',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_soa','SOA',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_soa', 'SOA', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('soa', 'SOA', 1);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('soa', 0, 'soldato', 'Recrue', 0, 'null', 'null'),
('soa', 1, 'capo', 'Motard', 0, 'null', 'null'),
('soa', 2, 'consigliere', 'Meneur', 0, 'null', 'null'),
('soa', 3, 'boss', 'President', 0, 'null', 'null');