--  id                 | bigint                |           | not null | nextval('groups_id_seq'::regclass)
--  name               | character varying(10) |           | not null |
--  faculty            | character varying(50) |           | not null |
--  institute          | character varying(80) |           | not null |
--  specialty          | character varying(50) |           | not null |
--  creation           | date                  |           | not null |
--  course             | smallint              |           | not null |
--  training_direction | character varying(50) |           | not null |
--  education_level    | character varying(50) |           | not null |
--  curator_id         | bigint                |           | not null |

CREATE TABLE groups
(
    id serial NOT NULL PRIMARY KEY,
    name                CHAR(5)                           not null ,
    faculty             character varying(50)             not null ,
    institute           character varying(80)             not null ,
    specialty           character varying(50)             not null ,
    creation            date                              not null ,
    course              VARCHAR(2)                        not null ,
    training_direction  character varying(50)             not null ,
    education_level     character varying(50)             not null ,
    curator_id          INT NOT NULL REFERENCES teachers (id)

);

--DELETE FROM groups WHERE id <> 0;
-- INSERT INTO groups (name, faculty, institute, specialty, creation, course, curator_id) 
-- VALUES ('ІР-84', 'FICT', 'Kyiv Polytechnic Institute', 'Software engineer', '2018-09-01', '3', 1);

-- INSERT INTO groups (name, faculty, institute, specialty, creation, course, curator_id) 
-- VALUES ('ІР-89', 'FICT', 'Kyiv Polytechnic Institute', 'Software engineer', '2018-09-01', '3', 3);