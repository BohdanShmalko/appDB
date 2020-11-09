-- id         | bigint                |           | not null | nextval('days_id_seq'::regclass)
-- day        | character varying(20) |           | not null |
-- study_week | character varying(1)

DELETE FROM days WHERE id <> 0;
INSERT INTO days (id, day, study_week) VALUES (1, 'Понеділок', '1');
INSERT INTO days (id, day, study_week) VALUES (2, 'Вівторок', '1');
INSERT INTO days (id, day, study_week) VALUES (3, 'Середа', '1');
INSERT INTO days (id, day, study_week) VALUES (4, 'Четвер', '1');
INSERT INTO days (id, day, study_week) VALUES (5, 'Пятниця', '1');
INSERT INTO days (id, day, study_week) VALUES (6, 'Субота', '1');
INSERT INTO days (id, day, study_week) VALUES (7, 'Понеділок', '2');
INSERT INTO days (id, day, study_week) VALUES (8, 'Вівторок', '2');
INSERT INTO days (id, day, study_week) VALUES (9, 'Середа', '2');
INSERT INTO days (id, day, study_week) VALUES (10, 'Четвер', '2');
INSERT INTO days (id, day, study_week) VALUES (11, 'Пятниця', '2');
INSERT INTO days (id, day, study_week) VALUES (12, 'Субота', '2');