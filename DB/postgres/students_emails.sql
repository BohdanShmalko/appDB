--  id         | bigint                 |           | not null | nextval('students_emails_id_seq'::regclass)
--  email      | character varying(100) |           | not null |
--  sign       | text                   |           | not null |
--  student_id | bigint                 |           | not null |

CREATE TABLE students_emails
(
    id serial NOT NULL PRIMARY KEY,
    email       character varying(100)             not null,
    sign        character varying(100)             not null,
    student_id  INT NOT NULL REFERENCES students (id)
);

--DELETE FROM students_emails WHERE id <> 0;
-- INSERT INTO students_emails (email, sign, student_id )
-- VALUES ('sometest@gmail.com', 'work',  1);