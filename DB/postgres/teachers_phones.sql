--  id           | bigint                |           | not null | nextval('teachers_phones_id_seq'::regclass)
--  phone_number | character varying(13) |           | not null |
--  sign         | text                  |           | not null |
--  teacher_id   | bigint                |           | not null |

CREATE TABLE teachers_phones
(
    id serial NOT NULL PRIMARY KEY,
    phone_number  character varying(13)             not null,
    sign          text                              not null,
    teacher_id   INT NOT NULL REFERENCES teachers (id)
);

--DELETE FROM teachers_phones WHERE id <> 0;
--INSERT INTO teachers_phones (id, ) VALUES (1, );
-- INSERT INTO teachers_phones (phone_number, sign, teacher_id ) 
-- VALUES ('1234567890', 'work', 1);

-- DELETE FROM teachers_phones WHERE phone_number = '1234567890';