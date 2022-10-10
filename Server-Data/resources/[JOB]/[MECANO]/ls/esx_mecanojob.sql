INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_ls','ls',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_ls','ls',1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('ls','ls')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('ls',0,'recrue','Recruit',12,'{}','{}'),
  ('ls',1,'novice','Novice',24,'{}','{}'),
  ('ls',2,'experimente','Experienced',36,'{}','{}'),
  ('ls',3,'chief','Leader',48,'{}','{}'),
  ('ls',4,'boss','Boss',0,'{}','{}')
;

INSERT INTO `items` (name, label) VALUES
  ('gazbottle', 'Gas Bottle'),
  ('fixtool', 'Repair Tools'),
  ('carotool', 'Tools'),
  ('blowpipe', 'Blowtorch'),
  ('fixkit', 'Repair Kit'),
  ('carokit', 'Body Kit')
;