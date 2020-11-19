CREATE TABLE students
(
    id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
    first_name        VARCHAR(50)             not null,
    last_name         VARCHAR(50)             not null,
    futher_name       VARCHAR(50)             not null,
    gradebook_number  INT(4)                  not null,
    scholarship       INT(2)                  not null,
    education_form    VARCHAR(50)             not null,
    status            VARCHAR(50)             not null,
    birth_day         DATE                    not null,
    photo             TEXT                    not null,
    group_id INT(11) NOT NULL,
    FOREIGN KEY (group_id)  REFERENCES groups (id)
);