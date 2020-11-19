CREATE TABLE evaluations
(
    id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
    mark100 INT(3)  NOT NULL,
    markword VARCHAR(20)  NOT NULL,
    certification_form VARCHAR(100) NOT NULL,
    assessment_date DATE NOT NULL,
    study_semester INT(11) NOT NULL,
    beginning_semester DATE NOT NULL,
    end_semester DATE NOT NULL,
    student_id INT(11) NOT NULL,
    subject_id INT(11) NOT NULL,
    FOREIGN KEY (student_id)  REFERENCES students (id),
    FOREIGN KEY (subject_id)  REFERENCES subjects (id)
);
