CREATE TABLE `uteknark_Opium` (
    `player` varchar(50) NOT NULL,
    `id` INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `stage` INT(3) UNSIGNED NOT NULL DEFAULT 1,
    `time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `x` FLOAT(10) NOT NULL,
    `y` FLOAT(10) NOT NULL,
    `z` FLOAT(10) NOT NULL,
    `soil` BIGINT(20) NOT NULL,
    INDEX (`stage`, `time`)
);


INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
	('graineopium', 'Graine de Opium', 30, 0, 1)
;
