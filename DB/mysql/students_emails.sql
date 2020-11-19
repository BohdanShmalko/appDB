CREATE TABLE students_emails
(
    id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
    email       VARCHAR(100)             not null,
    sign        text                               not null,
    student_id INT(11) NOT NULL,
    FOREIGN KEY (student_id)  REFERENCES students (id)
);

-- INSERT INTO students_emails (id, ) VALUES (1, );