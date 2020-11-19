CREATE TABLE students_authentications
(
    id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
    login       VARCHAR(100)             not null,
    password    VARCHAR(100)             not null,
    student_id INT(11) NOT NULL,
    FOREIGN KEY (student_id)  REFERENCES students (id)
);

-- INSERT INTO students_authentications (id, ) VALUES (1, );