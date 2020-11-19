--  id         | bigint                 |           | not null | nextval('teachers_emails_id_seq'::regclass)
--  email      | character varying(100) |           | not null |
--  sign       | text                   |           | not null |
--  teacher_id | bigint                 |           | not null |

CREATE TABLE teachers_emails
(
    id serial NOT NULL PRIMARY KEY,
    email       character varying(100)             not null,
    sign        character varying(100)             not null,
    teacher_id  INT NOT NULL REFERENCES teachers (id)
);

--DELETE FROM teachers_emails WHERE id <> 0;
-- INSERT INTO teachers_emails (email, sign, teacher_id )
-- VALUES ('sometestteacher@gmail.com', 'work',  1);