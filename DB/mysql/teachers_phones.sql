CREATE TABLE teachers_phones
(
    id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
    phone_number  VARCHAR(13)             not null,
    sign          TEXT                    not null,
    teacher_id INT(11) NOT NULL,
    FOREIGN KEY (teacher_id)  REFERENCES teachers (id)
);

-- INSERT INTO teachers_phones (id, ) VALUES (1, );