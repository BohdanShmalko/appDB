--  id           | bigint                |           | not null | nextval('students_phones_id_seq'::regclass)
--  phone_number | character varying(13) |           | not null |
--  sign         | text                  |           | not null |
--  student_id   | bigint                |           | not null |

DELETE FROM students_phones WHERE id <> 0;
INSERT INTO students_phones (id, ) VALUES (1, );