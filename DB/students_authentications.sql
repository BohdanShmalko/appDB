--  id         | bigint                 |           | not null | nextval('students_authentications_id_seq'::regclass)
--  login      | character varying(100) |           | not null |
--  password   | character varying(100) |           | not null |
--  student_id | bigint                 |           | not null |

DELETE FROM students_authentications WHERE id <> 0;
INSERT INTO students_authentications (id, ) VALUES (1, );