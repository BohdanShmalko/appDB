--  id                 | bigint                |           | not null | nextval('evaluations_id_seq'::regclass)
--  mark100            | character varying(3)  |           | not null |
--  markword           | character varying(10) |           | not null |
--  certification_form | character varying(20) |           | not null |
--  assessment_date    | date                  |           | not null |
--  study_semester     | smallint              |           | not null |
--  beginning_semester | date                  |           | not null |
--  end_semester       | date                  |           | not null |
--  student_id         | bigint                |           | not null |
--  subject_id         | bigint                |           | not null |

DELETE FROM evaluations WHERE id <> 0;
INSERT INTO evaluations (id, ) VALUES (1, );