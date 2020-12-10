-- id         | bigint                |           | not null | nextval('days_id_seq'::regclass)
-- day        | character varying(20) |           | not null |
-- study_week | character varying(1)
CREATE TABLE days
(
    id serial NOT NULL PRIMARY KEY,
    day VARCHAR(50)  NOT NULL,
    study_week CHAR(1)  NOT NULL
);

--DELETE FROM days WHERE id <> 0;
INSERT INTO days (id, day, study_week) VALUES (1, 'monday', '1');
INSERT INTO days (id, day, study_week) VALUES (2, 'tuesday', '1');
INSERT INTO days (id, day, study_week) VALUES (3, 'wednesday', '1');
INSERT INTO days (id, day, study_week) VALUES (4, 'thursday', '1');
INSERT INTO days (id, day, study_week) VALUES (5, 'friday', '1');
INSERT INTO days (id, day, study_week) VALUES (6, 'saturday', '1');
INSERT INTO days (id, day, study_week) VALUES (7, 'monday', '2');
INSERT INTO days (id, day, study_week) VALUES (8, 'tuesday', '2');
INSERT INTO days (id, day, study_week) VALUES (9, 'wednesday', '2');
INSERT INTO days (id, day, study_week) VALUES (10, 'thursday', '2');
INSERT INTO days (id, day, study_week) VALUES (11, 'friday', '2');
INSERT INTO days (id, day, study_week) VALUES (12, 'saturday', '2');