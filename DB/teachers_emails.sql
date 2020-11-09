--  id         | bigint                 |           | not null | nextval('teachers_emails_id_seq'::regclass)
--  email      | character varying(100) |           | not null |
--  sign       | text                   |           | not null |
--  teacher_id | bigint                 |           | not null |

DELETE FROM teachers_emails WHERE id <> 0;
INSERT INTO teachers_emails (id, ) VALUES (1, );