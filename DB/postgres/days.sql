-- id         | bigint                |           | not null | nextval('days_id_seq'::regclass)
-- day        | character varying(20) |           | not null |
-- study_week | character varying(1)
CREATE TABLE days
(
    id serial NOT NULL PRIMARY KEY,
    day VARCHAR(100)  NOT NULL,
    study_week CHAR(1)  NOT NULL
);

--DELETE FROM days WHERE id <> 0;
INSERT INTO days (id, day, study_week) VALUES (1, 'Monday', '1');
INSERT INTO days (id, day, study_week) VALUES (2, 'Tuesday', '1');
INSERT INTO days (id, day, study_week) VALUES (3, 'Wednesday', '1');
INSERT INTO days (id, day, study_week) VALUES (4, 'Thursday', '1');
INSERT INTO days (id, day, study_week) VALUES (5, 'Friday', '1');
INSERT INTO days (id, day, study_week) VALUES (6, 'Saturday', '1');
INSERT INTO days (id, day, study_week) VALUES (7, 'Monday', '2');
INSERT INTO days (id, day, study_week) VALUES (8, 'Tuesday', '2');
INSERT INTO days (id, day, study_week) VALUES (9, 'Wednesday', '2');
INSERT INTO days (id, day, study_week) VALUES (10, 'Thursday', '2');
INSERT INTO days (id, day, study_week) VALUES (11, 'Friday', '2');
INSERT INTO days (id, day, study_week) VALUES (12, 'Saturday', '2');