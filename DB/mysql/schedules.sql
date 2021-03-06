CREATE TABLE schedules
(
    id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
    teacher_id INT(11) NOT NULL,
    subject_id INT(11) NOT NULL,
    group_id INT(11) NOT NULL,
    hour_id INT(11) NOT NULL,
    place_id INT(11) NOT NULL,
    day_id INT(11) NOT NULL,
    FOREIGN KEY (teacher_id)  REFERENCES teachers (id),
    FOREIGN KEY (subject_id)  REFERENCES subjects (id),
    FOREIGN KEY (group_id)  REFERENCES groups (id),
    FOREIGN KEY (hour_id)  REFERENCES hours (id),
    FOREIGN KEY (place_id) REFERENCES places (id),
    FOREIGN KEY (day_id)  REFERENCES days (id)
);

INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (1, 1, 1, 1, 1, 1, 2);
INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (2, 1, 1, 1, 1, 1, 8);
INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (3, 3, 3, 1, 2, 2, 2);
INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (4, 2, 2, 1, 3, 3, 2);
INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (5, 5, 5, 1, 2, 3, 3);
INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (6, 5, 5, 1, 2, 3, 9);
INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (7, 6, 6, 1, 2, 4, 4);
INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (8, 6, 6, 1, 3, 4, 4);
INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (9, 6, 6, 1, 2, 4, 10);
INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (10, 7, 8, 1, 2, 5, 5);
INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (11, 7, 8, 1, 2, 5, 11);
INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (12, 7, 9, 1, 3, 5, 11);
INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (13, 2, 2, 1, 2, 6, 8);
INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (14, 2, 2, 1, 3, 6, 8);
INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (15, 2, 7, 1, 4, 6, 4);
INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (16, 2, 7, 1, 4, 6, 10);
INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (17, 4, 4, 1, 5, 8, 2);
INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (18, 4, 4, 1, 3, 8,10);