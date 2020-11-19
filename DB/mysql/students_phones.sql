CREATE TABLE students_phones
(
    id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
    phone_number  VARCHAR(13)             not null,
    sign          TEXT                    not null,
    student_id INT(11) NOT NULL,
    FOREIGN KEY (student_id)  REFERENCES students (id)
);

-- INSERT INTO students_phones (id, ) VALUES (1, );