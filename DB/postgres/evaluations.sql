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

CREATE TABLE evaluations
(
    id serial NOT NULL PRIMARY KEY,
    mark100 VARCHAR(3)  NOT NULL,
    markword VARCHAR(30)  NOT NULL,
    certification_form VARCHAR(100) NOT NULL,
    assessment_date DATE NOT NULL,
    study_semester VARCHAR(2) NOT NULL,
    beginning_semester DATE NOT NULL,
    end_semester DATE NOT NULL,
    student_id INT NOT NULL REFERENCES students (id),
    subject_id INT NOT NULL REFERENCES subjects (id)
);

--DELETE FROM evaluations WHERE id <> 0;
-- INSERT INTO evaluations (
--     mark100, markword, certification_form, assessment_date,
--     study_semester, beginning_semester, end_semester, student_id, subject_id )
-- VALUES (
--     '100',  'perfectly', 'test', '2020-12-27', 
--     '5', '2020-09-01', '2021-01-27', 1, 1);

-- SELECT evaluations.mark100 AS "mark in 100 balls system",
--        evaluations.markword AS "mark in word",
--        subjects.name AS "subject"
-- FROM evaluations
-- INNER JOIN subjects ON
--  evaluations.subject_id = subjects.id
-- INNER JOIN students ON
--  evaluations.student_id = students.id
-- WHERE students.last_name = 'Shmalko' AND evaluations.study_semester = '5';

-- UPDATE evaluations SET mark100 = '95', markword = 'very good' 
-- WHERE evaluations.student_id = 1 AND evaluations.subject_id = 1;
