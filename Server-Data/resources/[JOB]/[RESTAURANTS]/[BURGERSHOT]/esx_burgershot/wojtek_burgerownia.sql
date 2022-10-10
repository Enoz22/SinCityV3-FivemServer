

INSERT INTO `job_grades` (`id`, `job_name`, `grade`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
(NULL, 'burgerownia', 0, 'pracownik', 'Pracownik', 50, '{\"tshirt_1\":15,\"tshirt_2\":0,\"torso_1\":241,\"torso_2\":2,\"shoes_1\":31,\"shoes_2\":2,\"pants_1\":79, \"pants_2\":2, \"arms\":74, \"helmet_1\":14, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":-1,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}', '{\"tshirt_1\":0,\"tshirt_2\":0,\"torso_1\":56,\"torso_2\":0,\"shoes_1\":27,\"shoes_2\":0,\"pants_1\":36, \"pants_2\":0, \"arms\":63, \"helmet_1\":11, \"helmet_2\":0,\"bags_1\":0,\"bags_2\":0,\"ears_1\":0,\"glasses_1\":0,\"ears_2\":0,\"glasses_2\":0}');

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('burgerownia', 'Burgerownia', 0);



INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES

('wbulka', 'Bulka', 5, 0, 1),
('wketchup', 'Ketchup', 5, 0, 1),
('wmieso', 'Mieso', 5, 0, 1),
('wpomidor', 'Pomidor', 5, 0, 1),
('wsalata', 'Salata', -5, 0, 1),

('wgmieso', 'Usmazone mieso', 5, 0, 1),
('wgpomidor', 'Pokrojony pomidor', 5, 0, 1),
('wgsalata', 'Umyta salata', 5, 0, 1),

('wburger', 'Burger', 5, 0, 1);

