CREATE TABLE days
(
    id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
    day VARCHAR(100)  NOT NULL,
    study_week INT(1)  NOT NULL
);

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