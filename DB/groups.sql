--  id                 | bigint                |           | not null | nextval('groups_id_seq'::regclass)
--  name               | character varying(10) |           | not null |
--  faculty            | character varying(50) |           | not null |
--  institute          | character varying(80) |           | not null |
--  specialty          | character varying(50) |           | not null |
--  creation           | date                  |           | not null |
--  course             | smallint              |           | not null |
--  training_direction | character varying(50) |           | not null |
--  education_level    | character varying(50) |           | not null |
--  curator_id         | bigint                |           | not null |

DELETE FROM groups WHERE id <> 0;
INSERT INTO groups (id, name, faculty, institute, specialty, creation, course, training_direction, education_level, curator_id) VALUES (1, 'ІР-84', 'ФІОТ', 'Київський Політехнічний Інститут', 'Інженер ПО', '2018-09-01', 3, 'бакалавр', 'неповна вища', 2);