
CREATE TABLE `vehicles_utilitaires` (
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,

	PRIMARY KEY (`model`)
);



CREATE TABLE `vehicle_categories_utilitaires` (
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`name`)
);




INSERT INTO `vehicles_utilitaires` (name, model, price, category) VALUES
    ('bison','bison',5000,'utils'),
    ('sandking','sandking',5000,'utils'),
    ('rebel custom','rebel2',5000,'utils'),
    ('bison','bison3',5000,'utils'),
    ('rumpo','rumpo',5000,'utils')
;

INSERT INTO `vehicle_categories_utilitaires` (name, label) VALUES
    ('utils','Utilitaires')
;