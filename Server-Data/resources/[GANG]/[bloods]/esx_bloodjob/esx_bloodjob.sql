INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_blood','Blood',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_blood','Blood',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_blood', 'Blood', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('blood', 'Blood', 1);

INSERT INTO `job_grades` (`job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('blood', 0, 'soldato', 'Dealer', 0, 'null', 'null'),
('blood', 1, 'capo', 'Braqueur', 0, 'null', 'null'),
('blood', 2, 'consigliere', 'Bandit', 0, 'null', 'null'),
('blood', 3, 'boss', 'Chef du Gang', 0, 'null', 'null');
