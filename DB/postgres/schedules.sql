--  id         | bigint |           | not null | nextval("schedules_id_seq"::regclass)
--  teacher_id | bigint |           | not null |
--  subject_id | bigint |           | not null |
--  group_id   | bigint |           | not null |
--  hour_id    | bigint |           | not null |
--  place_id   | bigint |           | not null |
--  day_id     | bigint |           | not null |

CREATE TABLE schedules
(
    id serial NOT NULL PRIMARY KEY,
    teacher_id  INT NOT NULL REFERENCES teachers (id),
    subject_id  INT NOT NULL REFERENCES subjects (id),
    group_id    INT NOT NULL REFERENCES groups (id),
    hour_id     INT NOT NULL REFERENCES hours (id),
    place_id    INT NOT NULL REFERENCES places (id),
    day_id      INT NOT NULL REFERENCES days (id)
);

-- SELECT days.day AS "day",
--        days.study_week AS "week",
--        hours.pair_number AS "pair",
--        hours.beginning AS "beginning",
--        hours.ending AS "end",
--        subjects.name AS "subject", 
--        groups.name AS "group",
--        places.corps AS "corps",
--        places.audience AS "audience"
-- FROM schedules
-- INNER JOIN teachers ON
--  schedules.teacher_id = teachers.id
-- INNER JOIN subjects ON
--  schedules.subject_id = subjects.id
-- INNER JOIN groups ON
--  schedules.group_id = groups.id
-- INNER JOIN hours ON
--  schedules.hour_id = hours.id
-- INNER JOIN places ON
--  schedules.place_id = places.id
-- INNER JOIN days ON
--  schedules.day_id = days.id
-- WHERE teachers.last_name = 'Borisenko';
       
       


-- --DELETE FROM schedules WHERE id <> 0;
-- INSERT INTO schedules (teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (1, 1, 1, 1, 1, 1);
-- INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (2, 1, 1, 1, 1, 1, 8);
-- INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (3, 3, 3, 1, 2, 2, 2);
-- INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (4, 2, 2, 1, 3, 3, 2);
-- INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (5, 5, 5, 1, 2, 3, 3);
-- INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (6, 5, 5, 1, 2, 3, 9);
-- INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (7, 6, 6, 1, 2, 4, 4);
-- INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (8, 6, 6, 1, 3, 4, 4);
-- INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (9, 6, 6, 1, 2, 4, 10);
-- INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (10, 7, 8, 1, 2, 5, 5);
-- INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (11, 7, 8, 1, 2, 5, 11);
-- INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (12, 7, 9, 1, 3, 5, 11);
-- INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (13, 2, 2, 1, 2, 6, 8);
-- INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (14, 2, 2, 1, 3, 6, 8);
-- INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (15, 2, 7, 1, 4, 6, 4);
-- INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (16, 2, 7, 1, 4, 6, 10);
-- INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (17, 4, 4, 1, 5, 8, 2);
-- INSERT INTO schedules (id, teacher_id, subject_id, group_id, hour_id, place_id, day_id) VALUES (18, 4, 4, 1, 3, 8,10);