USE `essentialmode`;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_ambulance', 'Ambulance', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_ambulance', 'Ambulance', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_ambulance', 'Ambulance', 1)
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary) VALUES
	('ambulance',0,'stage','Stagiaire',50),
	('ambulance',1,'recrue','Ambulancier',50),
	('ambulance',2,'employe','Infirmier',50),
	('ambulance',3,'employec','Urgentiste',50),
	('ambulance',4,'employes','Médecin',50),
	('ambulance',5,'special','Chirurgien',50),
	('ambulance',6,'chefgroupe','Chef de Service',50),
	('ambulance',7,'drh','DRH',50),
	('ambulance',8,'da','Directeur Adjoint',50),
	('ambulance',9,'boss','Directeur Général',50)
;


INSERT INTO `jobs` (name, label) VALUES
	('ambulance','ambulance')
;

INSERT INTO `items` (name, label, `limit`) VALUES
	('bandage','Bandage', 25),
	('medikit','Medikit', 15)
;

ALTER TABLE `users`
	ADD `is_dead` TINYINT(1) NULL DEFAULT '0'
;
