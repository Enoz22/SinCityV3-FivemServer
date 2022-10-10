

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_sheriff', 'Sheriff', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_sheriff', 'Sheriff', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_sheriff', 'Sheriff', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('sheriff','Sheriff')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('sheriff',0,'recruit','Aspirant Ranger',500,'{}','{}'),
	('sheriff',1,'officer','Ranger',700,'{}','{}'),
	('sheriff',2,'sergeant','Capitaine',800,'{}','{}'),
	('sheriff',4,'lieutenant','Sheriff-Adjoint',900,'{}','{}'),
	('sheriff',5,'boss','Sheriff',1000,'{}','{}')
;

