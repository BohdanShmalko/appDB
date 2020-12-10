CREATE TABLE degreeprojects
(
    id serial NOT NULL PRIMARY KEY,
    topic VARCHAR(50) NOT NULL,
    project_submission_date DATE NOT NULL,
    protection_date DATE NOT NULL,
    mark100 VARCHAR(3) NOT NULL,
    markwords VARCHAR(20) NOT NULL,
    notes TEXT NULL,
    date_end DATE NOT NULL,
    honors VARCHAR(255) NULL,
    decisionNumber VARCHAR(10) NULL,
    from_date DATE NOT NULL,
    page CHAR(1) NOT NULL,
    student_id INT NOT NULL REFERENCES students (id)
);
