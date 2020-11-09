--  id           | bigint                |           | not null | nextval('teachers_phones_id_seq'::regclass)
--  phone_number | character varying(13) |           | not null |
--  sign         | text                  |           | not null |
--  teacher_id   | bigint                |           | not null |

DELETE FROM teachers_phones WHERE id <> 0;
INSERT INTO teachers_phones (id, ) VALUES (1, );