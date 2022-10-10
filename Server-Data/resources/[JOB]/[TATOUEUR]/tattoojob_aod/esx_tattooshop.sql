-- En cas où qu'il ne la pas*
-- ALTER TABLE `users`
-- 	ADD COLUMN `tattoos` LONGTEXT
-- ;

INSERT INTO `addon_account` (name, label, shared) VALUES
	('society_tattooaod', 'tattooaod', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
	('society_tattooaod', 'tattooaod', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES
	('society_tattooaod', 'tattooaod', 1)
;

INSERT INTO `jobs` (name, label) VALUES
	('tattooaod', 'tattooaod')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
	('tattooaod',0,'recrue','Recrue',12,'{}','{}'),
	('tattooaod',1,'novice','Novice',24,'{}','{}'),
	('tattooaod',2,'boss','Patron',0,'{}','{}')
;

-- INSERT INTO `items` (name, label) VALUES
-- 	('encre', 'Encre')
-- ;