DROP TABLE IF EXISTS `uteknark`;

CREATE TABLE `uteknark` (
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