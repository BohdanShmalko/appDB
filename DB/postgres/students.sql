--  id               | bigint                |           | not null | nextval('students_id_seq'::regclass)
--  first_name       | character varying(50) |           | not null |
--  last_name        | character varying(50) |           | not null |
--  futher_name      | character varying(50) |           | not null |
--  gradebook_number | integer               |           | not null |
--  scholarship      | integer               |           | not null |
--  education_form   | character varying(20) |           | not null |
--  status           | character varying(50) |           | not null |
--  birth_day        | date                  |           | not null |
--  photo            | text                  |           | not null |
--  group_id         | bigint                |           | not null |
CREATE TABLE students
(
    id serial NOT NULL PRIMARY KEY,
    first_name        character varying(50)             not null,
    last_name         character varying(50)             not null,
    futher_name       character varying(50)                 null,
    gradebook_number  char(4)                    not null unique,
    scholarship       integer                               null,
    education_form    character varying(50)             not null,
    status            character varying(100)            not null,
    birth_day         date                              not null,
    group_id          INT NOT NULL REFERENCES groups (id)
);


-- create or replace function All_Students_with_Groups()
-- returns table (
-- 		student varchar,
--         group_name char(5)
-- 	) 
-- LANGUAGE 'plpgsql'
-- AS $$

-- BEGIN 
--     return query
--     SELECT students.last_name,
--             groups.name
--     FROM students, groups
--     WHERE students.group_id = groups.id;
-- END;
-- $$;

-- create or replace function Teacher_qualificatuon()
-- returns table (
-- 		teacher varchar,
--         qualification_level varchar
-- 	)
    
-- LANGUAGE 'plpgsql'
-- AS $$

-- BEGIN 
--     return query SELECT teachers.last_name,
--             teachers.qualification_level
--     FROM teachers;
-- END;
-- $$;

-- create or replace function Groups_course()
-- returns table (
-- 		group_name char(5),
--         group_course char(1)
-- 	)
    
-- LANGUAGE 'plpgsql'
-- AS $$

-- BEGIN 
--     return query SELECT groups.name,
--             groups.course
--     FROM groups;
-- END;
-- $$;

-- SELECT teachers.last_name FROM teachers, schedules, groups
-- WHERE schedules.teacher_id = teachers.id AND
-- schedules.group_id = groups.id AND
-- groups.name = 'ІР-84';

-- SELECT subjects.name FROM teachers, schedules, subjects
-- WHERE schedules.teacher_id = teachers.id AND
-- schedules.subject_id = subjects.id AND
-- teachers.last_name = 'Borisenko';

-- SELECT students_phones.phone_number FROM students, students_phones
-- WHERE students_phones.student_id = students.id AND
-- students.last_name = 'Shmalko';

-- UPDATE students SET status = 'leader' 
-- WHERE students.first_name = 'Ivan' AND 
--       students.last_name = 'Ivanov' AND
--       students.group_id = 1;

-- INSERT INTO students (
--     first_name, last_name, futher_name, gradebook_number,
--     scholarship, education_form, status, birth_day, group_id) 
-- VALUES (
--     'Bogdan', 'Shmalko', 'Igor', '8425', 
--     100, 'daily', 'simple student', '2001-09-19', 1);

-- INSERT INTO students (
--     first_name, last_name, futher_name, gradebook_number,
--     scholarship, education_form, status, birth_day, group_id) 
-- VALUES (
--     'Ivan', 'Ivanov', 'Ivan', '8429', 
--     100, 'daily', 'simple student', '2001-09-19', 1);