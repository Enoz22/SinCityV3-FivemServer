-- En cas où qu'il ne la pas*
-- ALTER TABLE `users`
-- 	ADD COLUMN `tattoos` LONGTEXT
-- ;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_tattoomara', 'tattoomara', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_tattoomara', 'tattoomara', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_tattoomara', 'tattoomara', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('tattoomara', 'tattoomara')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('tattoomara',0,'recrue','Recrue',12,'{}','{}'),
	('tattoomara',1,'novice','Novice',24,'{}','{}'),
	('tattoomara',2,'boss','Patron',0,'{}','{}')
;

-- INSERT INTO `items` (name, label) VALUES
-- 	('encre', 'Encre')
-- ;
