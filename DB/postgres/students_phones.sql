--  id           | bigint                |           | not null | nextval('students_phones_id_seq'::regclass)
--  phone_number | character varying(13) |           | not null |
--  sign         | text                  |           | not null |
--  student_id   | bigint                |           | not null |

CREATE TABLE students_phones
(
    id serial NOT NULL PRIMARY KEY,
    phone_number  CHAR(10)             not null,
    sign          text                              not null,
    student_id    INT NOT NULL REFERENCES students (id)
);

--DELETE FROM students_phones WHERE id <> 0;
-- INSERT INTO students_phones (phone_number, sign, student_id ) 
-- VALUES ('0959305377', 'work', 1);