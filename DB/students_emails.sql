--  id         | bigint                 |           | not null | nextval('students_emails_id_seq'::regclass)
--  email      | character varying(100) |           | not null |
--  sign       | text                   |           | not null |
--  student_id | bigint                 |           | not null |

DELETE FROM students_emails WHERE id <> 0;
INSERT INTO students_emails (id, ) VALUES (1, );