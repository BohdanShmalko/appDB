CREATE TABLE subjects
(
    id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
    name             VARCHAR(255)             not null,
    description      TEXT                     not null,
    loans            VARCHAR(255)             not null,
    hours            VARCHAR(255)             not null,
    occupation_type  VARCHAR(255)             not null
);

INSERT INTO subjects (id, name, description, loans, hours, occupation_type) VALUES (1, 'Іноз.мова проф.спрямування (англ.)', 'some', '100', '100', 'практика');
INSERT INTO subjects (id, name, description, loans, hours, occupation_type) VALUES (2, 'Операційні системи', 'some', '100', '100', 'лекція');
INSERT INTO subjects (id, name, description, loans, hours, occupation_type) VALUES (3, 'Бази даних-2. Програмні додатки', 'some', '100', '100', 'лабораторна');
INSERT INTO subjects (id, name, description, loans, hours, occupation_type) VALUES (4, 'Паралельне програмування', 'some', '100', '100', 'лекція');
INSERT INTO subjects (id, name, description, loans, hours, occupation_type) VALUES (5, 'Бази даних-2. Програмні додатки', 'some', '100', '100', 'лекція');
INSERT INTO subjects (id, name, description, loans, hours, occupation_type) VALUES (6, 'Компоненти програмної інженерії-1. Архітектура програмного забезпечення', 'some', '100', '100', 'лекція');
INSERT INTO subjects (id, name, description, loans, hours, occupation_type) VALUES (7, 'Операційні системи', 'some', '100', '100', 'лабораторна');
INSERT INTO subjects (id, name, description, loans, hours, occupation_type) VALUES (8, 'Суч. метод-гії і технол. розроб. ПЗ-2', 'some', '100', '100', 'лекція');
INSERT INTO subjects (id, name, description, loans, hours, occupation_type) VALUES (9, 'Суч. метод-гії і технол. розроб. ПЗ-2', 'some', '100', '100', 'лабораторна');