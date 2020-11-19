CREATE TABLE teachers
(
    id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
    first_name            VARCHAR(50)             not null,
    last_name             VARCHAR(50)             not null,
    futher_name           VARCHAR(50)             not null,
    department            VARCHAR(50)             not null,
    salary                INT(11)                 not null,
    qualification_level   VARCHAR(50)             not null,
    contract_termination  date                    not null
);

INSERT INTO teachers (id, first_name, last_name, futher_name, department, salary, qualification_level, contract_termination) VALUES (1, 'Оксана', 'Сергеєва', 'Олексіївна', 'КАМ №3', 10000, 'викладач', '2021-06-21');
INSERT INTO teachers (id, first_name, last_name, futher_name, department, salary, qualification_level, contract_termination) VALUES (2, 'Валерій', 'Сімоненко', 'Павлович', 'ОТ', 10000, 'професор', '2021-06-21');
INSERT INTO teachers (id, first_name, last_name, futher_name, department, salary, qualification_level, contract_termination) VALUES (3, 'Олександра', 'Бойко', 'Володимирівна', 'АУТС', 10000, 'викладач', '2021-06-21');
INSERT INTO teachers (id, first_name, last_name, futher_name, department, salary, qualification_level, contract_termination) VALUES (4, 'Володимир', 'Шимкович', 'Миколайович', 'ОТ', 10000, 'викладач', '2021-06-21');
INSERT INTO teachers (id, first_name, last_name, futher_name, department, salary, qualification_level, contract_termination) VALUES (5, 'Ксенія', 'Ульяницька', 'Олександрівна', 'АУТС', 10000, 'викладач', '2021-06-21');
INSERT INTO teachers (id, first_name, last_name, futher_name, department, salary, qualification_level, contract_termination) VALUES (6, 'Роман', 'Мазур', '', 'АУТС', 10000, 'викладач', '2021-06-21');
INSERT INTO teachers (id, first_name, last_name, futher_name, department, salary, qualification_level, contract_termination) VALUES (7, 'Тимур', 'Шемсединов', 'Гафарович', 'ОТ', 10000, 'асистент', '2021-06-21');
INSERT INTO teachers (id, first_name, last_name, futher_name, department, salary, qualification_level, contract_termination) VALUES (8, '', '', '', '', 10000, '', '2021-06-21');