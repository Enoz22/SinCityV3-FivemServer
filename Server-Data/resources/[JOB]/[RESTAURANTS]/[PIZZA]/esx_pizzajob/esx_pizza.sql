INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_pizza', 'pizza', 1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_pizza', 'pizza', 1),
  ('society_pizza_fridge', 'pizza (frigo)', 1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
    ('society_pizza', 'pizza', 1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('pizza', 'pizza')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('pizza', 0, 'recruit', 'Recrue', 300, '{}', '{}'),
  ('pizza', 1, 'employer', 'Employ�(e)', 300, '{}', '{}'),
  ('pizza', 2, 'viceboss', 'Co-g�rant', 500, '{}', '{}'),
  ('pizza', 3, 'boss', 'G�rant', 600, '{}', '{}')
;

INSERT INTO `items` (`name`, `label`, `weight`) VALUES   -- version compatible only with es_extended up to date weight 
    ('pate', 'Pate a pizza', 10),
    ('ing', 'ingredient a pizza', 10),
    ('reine', 'Pizza reine', 5),
    ('5fromages', 'Pizza au 5 fromage', 5),
    ('barbecue', 'pizza au barbecue', 5),
    ('saumons', 'Pizza au saumon', 5),
    ('orientale', 'Pizza orientale', 5),
    ('calzone', 'Pizza calzone', 5),
    ('pizza', 'Pizza a livrer', 5),
;