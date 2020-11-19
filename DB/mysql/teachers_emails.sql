CREATE TABLE teachers_emails
(
    id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
    email       VARCHAR(100)             not null,
    sign        TEXT                     not null,
    teacher_id INT(11) NOT NULL,
    FOREIGN KEY (teacher_id)  REFERENCES teachers (id)
);

-- INSERT INTO teachers_emails (id, ) VALUES (1, );