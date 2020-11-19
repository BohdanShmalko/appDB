CREATE TABLE teachers_authentications
(
    id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
    login VARCHAR(50)  NOT NULL,
    password VARCHAR(50)  NOT NULL,
    teacher_id INT(11) NOT NULL,
    FOREIGN KEY (teacher_id)  REFERENCES teachers (id)
);

-- INSERT INTO teachers_authentications (id, ) VALUES (1, );
