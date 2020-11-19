CREATE TABLE groups
(
    id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
    name                VARCHAR(10)             not null ,
    faculty             VARCHAR(50)             not null ,
    institute           VARCHAR(80)             not null ,
    specialty           VARCHAR(50)             not null ,
    creation            DATE                              not null ,
    course              smallint                          not null ,
    training_direction  VARCHAR(50)             not null ,
    education_level     VARCHAR(50)             not null ,
    curator_id INT(11) NOT NULL,
    FOREIGN KEY (curator_id)  REFERENCES teachers (id)

);

INSERT INTO groups (id, name, faculty, institute, specialty, creation, course, training_direction, education_level, curator_id) VALUES (1, 'ІР-84', 'ФІОТ', 'Київський Політехнічний Інститут', 'Інженер ПО', '2018-09-01', 3, 'бакалавр', 'неповна вища', 2);