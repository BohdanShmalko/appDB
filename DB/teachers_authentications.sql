--  id         | bigint                |           | not null | nextval('teachers_authentications_id_seq'::regclass)
--  login      | character varying(50) |           | not null |
--  password   | character varying(50) |           | not null |
--  teacher_id | bigint                |           | not null |


DROP TABLE teachers_authentications;

CREATE TABLE teachers_authentications
(
    id bigserial NOT NULL PRIMARY KEY,
    login VARCHAR(50)  NOT NULL,
    password VARCHAR(50)  NOT NULL,
    teacher_id BIGINT NOT NULL REFERENCES teachers (id));

DELETE FROM teachers_authentications WHERE id <> 0;
INSERT INTO teachers_authentications (id, ) VALUES (1, );
