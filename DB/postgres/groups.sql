--  id                 | bigint                |           | not null | nextval('groups_id_seq'::regclass)
--  name               | character varying(10) |           | not null |
--  faculty            | character varying(50) |           | not null |
--  institute          | character varying(80) |           | not null |
--  specialty          | character varying(50) |           | not null |
--  creation           | date                  |           | not null |
--  course             | smallint              |           | not null |
--  training_direction | character varying(50) |           | not null |
--  education_level    | character varying(50) |           | not null |
--  curator_id         | bigint                |           | not null |

CREATE TABLE groups
(
    id serial NOT NULL PRIMARY KEY,
    name                CHAR(5)                           not null unique,
    specialty           character varying(50)             not null ,
    creation            date                              not null ,
    course              smallint                        not null ,
    training_direction  character varying(50)             not null ,
    education_level     character varying(50)             not null ,
    qualification       character varying(50)             not null ,
    admissionCourse     smallint                           not null,
    institute_id        INT NOT NULL REFERENCES institutes (id),
    faculty_id          INT NOT NULL REFERENCES faculties (id),
    curator_id          INT NOT NULL REFERENCES teachers (id)

);

insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (1, 'Software engineer', '2021-09-20', 2, 'Bitwolf', 'Konklux', 'Asoka', 1, 2, 9, 122, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (2, 'Software engineer', '2020-02-09', 4, 'Toughjoyfax', 'Zamit', 'Y-find', 1, 8, 7, 60, 'IV-77');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (3, 'Software engineer', '2020-08-17', 5, 'Cookley', 'Gembucket', 'Transcof', 1, 7, 2, 28, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (4, 'mechanic', '2020-01-17', 5, 'Gembucket', 'Sonsing', 'Konklux', 1, 1, 5, 79, 'IN-94');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (5, 'mechanic', '2021-07-09', 4, 'Overhold', 'Tres-Zap', 'Greenlam', 1, 4, 3, 158, 'IE-59');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (6, 'mechanic', '2020-08-29', 4, 'Bitchip', 'Konklux', 'Asoka', 1, 10, 8, 118, 'IE-47');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (7, 'mechanic', '2020-05-22', 2, 'Alphazap', 'Alphazap', 'Ronstring', 1, 2, 3, 15, 'IN-09');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (8, 'mechanic', '2020-12-22', 5, 'Zaam-Dox', 'Konklux', 'Regrant', 1, 5, 5, 123, 'IN-66');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (9, 'Software engineer', '2021-07-02', 3, 'Fintone', 'Konklux', 'Bitchip', 1, 10, 5, 78, 'IE-79');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (10, 'mechanic', '2021-11-16', 3, 'Cookley', 'Ronstring', 'Y-Solowarm', 1, 7, 2, 115, 'IN-88');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (11, 'mechanic', '2021-01-02', 5, 'Transcof', 'Treeflex', 'Stringtough', 1, 6, 10, 10, 'IV-77');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (12, 'mechanic', '2020-10-22', 3, 'Mat Lam Tam', 'Mat Lam Tam', 'Solarbreeze', 1, 6, 4, 76, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (13, 'Software engineer', '2019-11-24', 2, 'Ventosanzap', 'Alphazap', 'Biodex', 1, 5, 5, 170, 'IV-77');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (14, 'mechanic', '2020-04-17', 5, 'Namfix', 'Transcof', 'Zathin', 1, 8, 4, 28, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (15, 'Software engineer', '2021-08-14', 4, 'Tempsoft', 'Biodex', 'Bitwolf', 1, 1, 3, 83, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (16, 'Software engineer', '2020-10-22', 3, 'Biodex', 'Wrapsafe', 'Voltsillam', 1, 8, 6, 33, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (17, 'Software engineer', '2020-05-02', 1, 'Y-find', 'Cardguard', 'Kanlam', 1, 1, 5, 80, 'IV-77');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (18, 'Software engineer', '2019-12-02', 5, 'Cardify', 'Vagram', 'Viva', 1, 2, 8, 26, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (19, 'Software engineer', '2021-03-08', 5, 'Cardguard', 'Zathin', 'Asoka', 1, 6, 5, 95, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (20, 'Software engineer', '2020-12-18', 3, 'Tres-Zap', 'Prodder', 'Hatity', 1, 3, 2, 10, 'IV-77');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (21, 'mechanic', '2020-03-20', 4, 'Wrapsafe', 'Lotstring', 'Tin', 1, 5, 8, 55, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (22, 'Software engineer', '2020-05-12', 4, 'Tempsoft', 'Alphazap', 'Zontrax', 1, 4, 4, 55, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (23, 'Software engineer', '2020-05-13', 4, 'Vagram', 'Sonsing', 'Viva', 1, 2, 8, 175, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (24, 'mechanic', '2020-12-30', 1, 'Bytecard', 'Cardify', 'Matsoft', 1, 5, 3, 24, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (25, 'mechanic', '2021-06-20', 4, 'Asoka', 'Konklab', 'Vagram', 1, 8, 9, 74, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (26, 'Software engineer', '2021-07-01', 3, 'Wrapsafe', 'Viva', 'Matsoft', 1, 3, 7, 163, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (27, 'Software engineer', '2021-01-25', 4, 'Wrapsafe', 'Konklab', 'Quo Lux', 1, 2, 4, 105, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (28, 'Software engineer', '2019-12-24', 5, 'Tin', 'Solarbreeze', 'Sonsing', 1, 3, 6, 130, 'IV-77');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (29, 'Software engineer', '2020-09-02', 2, 'Tin', 'Bitchip', 'Regrant', 1, 5, 1, 174, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (30, 'mechanic', '2020-02-03', 2, 'Bigtax', 'Quo Lux', 'Subin', 1, 3, 9, 165, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (31, 'mechanic', '2021-09-08', 1, 'Lotstring', 'Bitchip', 'Stronghold', 1, 8, 1, 167, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (32, 'mechanic', '2021-07-22', 2, 'Fixflex', 'Bigtax', 'Bytecard', 1, 2, 6, 55, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (33, 'mechanic', '2021-02-15', 2, 'Tin', 'Veribet', 'Pannier', 1, 4, 3, 77, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (34, 'mechanic', '2021-10-19', 1, 'Home Ing', 'Aerified', 'Cookley', 1, 1, 5, 26, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (35, 'Software engineer', '2020-01-12', 4, 'Matsoft', 'Quo Lux', 'Viva', 1, 3, 2, 43, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (36, 'mechanic', '2020-01-14', 1, 'Andalax', 'Stim', 'Cardify', 1, 8, 4, 88, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (37, 'Software engineer', '2021-06-30', 5, 'Zaam-Dox', 'Pannier', 'Trippledex', 1, 1, 8, 83, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (38, 'mechanic', '2020-03-21', 3, 'Tempsoft', 'Hatity', 'Flexidy', 1, 7, 10, 63, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (39, 'mechanic', '2020-09-30', 4, 'Alpha', 'Rank', 'Fix San', 1, 5, 1, 78, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (40, 'Software engineer', '2019-12-23', 2, 'Wrapsafe', 'Y-Solowarm', 'Stringtough', 1, 7, 2, 7, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (41, 'Software engineer', '2020-06-18', 3, 'Tres-Zap', 'Alphazap', 'Vagram', 1, 3, 1, 189, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (42, 'mechanic', '2020-10-31', 5, 'Bytecard', 'Namfix', 'Lotstring', 1, 4, 5, 48, 'IE-79');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (43, 'Software engineer', '2020-12-20', 3, 'Prodder', 'Redhold', 'Rank', 1, 3, 8, 142, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (44, 'mechanic', '2021-08-23', 3, 'Sonair', 'Keylex', 'Stim', 1, 4, 9, 62, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (45, 'mechanic', '2020-12-10', 1, 'Opela', 'Alphazap', 'Sonsing', 1, 7, 4, 36, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (46, 'Software engineer', '2020-02-11', 1, 'Prodder', 'Fintone', 'Bitwolf', 1, 8, 3, 123, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (47, 'mechanic', '2021-01-26', 1, 'Daltfresh', 'Holdlamis', 'Duobam', 1, 8, 2, 146, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (48, 'Software engineer', '2020-12-11', 4, 'Tres-Zap', 'Mat Lam Tam', 'Fix San', 1, 8, 2, 115, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (49, 'mechanic', '2020-02-08', 5, 'Duobam', 'Namfix', 'Zathin', 1, 7, 6, 196, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (50, 'mechanic', '2021-09-18', 3, 'Bigtax', 'Gembucket', 'Prodder', 1, 10, 4, 125, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (51, 'mechanic', '2021-06-13', 3, 'Sonair', 'Home Ing', 'Ventosanzap', 1, 5, 9, 93, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (52, 'mechanic', '2020-09-26', 5, 'Fixflex', 'Ventosanzap', 'Kanlam', 1, 10, 8, 163, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (53, 'mechanic', '2020-07-12', 3, 'Duobam', 'Otcom', 'Kanlam', 1, 7, 5, 119, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (54, 'Software engineer', '2021-09-15', 2, 'Mat Lam Tam', 'Otcom', 'Duobam', 1, 2, 1, 47, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (55, 'Software engineer', '2021-05-20', 5, 'Holdlamis', 'It', 'Hatity', 1, 10, 3, 160, 'IV-77');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (56, 'Software engineer', '2020-08-24', 5, 'Namfix', 'Cardguard', 'Lotstring', 1, 5, 9, 74, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (57, 'Software engineer', '2021-09-08', 3, 'Lotstring', 'Subin', 'Span', 1, 5, 5, 42, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (58, 'mechanic', '2020-07-02', 5, 'It', 'Zoolab', 'It', 1, 6, 6, 165, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (59, 'Software engineer', '2020-10-21', 4, 'Sonair', 'Namfix', 'Keylex', 1, 5, 10, 153, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (60, 'mechanic', '2020-04-11', 4, 'Alpha', 'Sub-Ex', 'Flexidy', 1, 7, 5, 99, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (61, 'Software engineer', '2021-03-13', 4, 'Subin', 'Zamit', 'Fix San', 1, 1, 9, 142, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (62, 'Software engineer', '2021-05-30', 5, 'Cookley', 'Fix San', 'Gembucket', 1, 4, 6, 28, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (63, 'Software engineer', '2020-09-11', 5, 'Latlux', 'Veribet', 'Flexidy', 1, 3, 5, 13, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (64, 'Software engineer', '2019-12-19', 1, 'Job', 'Aerified', 'Andalax', 1, 7, 4, 182, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (65, 'Software engineer', '2020-11-08', 2, 'Job', 'Bitchip', 'Toughjoyfax', 1, 5, 3, 189, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (66, 'mechanic', '2021-05-27', 2, 'Stim', 'Alpha', 'Latlux', 1, 9, 1, 63, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (67, 'mechanic', '2021-11-16', 1, 'Treeflex', 'Subin', 'Tres-Zap', 1, 5, 10, 84, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (68, 'Software engineer', '2021-10-26', 3, 'Daltfresh', 'Konklab', 'Sonair', 1, 1, 2, 113, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (69, 'Software engineer', '2020-06-23', 2, 'Hatity', 'Hatity', 'Y-Solowarm', 1, 4, 3, 58, 'IE-79');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (70, 'mechanic', '2021-10-20', 3, 'Fix San', 'Pannier', 'Solarbreeze', 1, 9, 2, 32, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (71, 'Software engineer', '2021-10-30', 3, 'Keylex', 'Zoolab', 'Wrapsafe', 1, 10, 3, 28, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (72, 'mechanic', '2021-08-28', 1, 'Lotlux', 'Viva', 'Cardify', 1, 10, 4, 47, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (73, 'mechanic', '2021-08-02', 3, 'Lotstring', 'Otcom', 'Trippledex', 1, 7, 9, 70, 'IV-77');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (74, 'Software engineer', '2019-12-25', 2, 'Tresom', 'Bigtax', 'Konklux', 1, 5, 8, 95, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (75, 'mechanic', '2020-11-19', 1, 'Bigtax', 'Keylex', 'Toughjoyfax', 1, 9, 4, 168, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (76, 'Software engineer', '2021-02-03', 3, 'Lotlux', 'Konklab', 'Rank', 1, 10, 4, 29, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (77, 'mechanic', '2021-07-28', 3, 'Tin', 'Vagram', 'Treeflex', 1, 2, 1, 109, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (78, 'mechanic', '2020-07-15', 1, 'Viva', 'Konklab', 'Daltfresh', 1, 9, 3, 193, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (79, 'Software engineer', '2019-12-21', 3, 'Wrapsafe', 'Matsoft', 'Y-Solowarm', 1, 9, 9, 95, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (80, 'mechanic', '2021-01-25', 5, 'Greenlam', 'Job', 'Viva', 1, 6, 8, 195, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (81, 'Software engineer', '2021-03-20', 5, 'Treeflex', 'Tres-Zap', 'Viva', 1, 8, 10, 186, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (82, 'Software engineer', '2021-08-14', 4, 'Treeflex', 'Vagram', 'Fintone', 1, 10, 3, 103, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (83, 'Software engineer', '2020-01-13', 4, 'Biodex', 'Kanlam', 'Quo Lux', 1, 8, 6, 186, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (84, 'mechanic', '2020-07-26', 5, 'Job', 'Viva', 'Duobam', 1, 2, 6, 135, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (85, 'Software engineer', '2019-11-29', 3, 'Overhold', 'Tres-Zap', 'Cardify', 1, 4, 9, 40, 'IV-77');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (86, 'Software engineer', '2020-01-25', 3, 'Flowdesk', 'Bigtax', 'Solarbreeze', 1, 7, 2, 85, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (87, 'mechanic', '2020-12-06', 5, 'Tresom', 'Flexidy', 'Otcom', 1, 7, 7, 97, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (88, 'Software engineer', '2021-01-21', 4, 'Zoolab', 'Rank', 'Lotstring', 1, 7, 6, 54, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (89, 'mechanic', '2020-02-29', 5, 'Transcof', 'Latlux', 'Fixflex', 1, 1, 1, 48, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (90, 'mechanic', '2020-01-10', 5, 'Stringtough', 'Stringtough', 'Otcom', 1, 6, 5, 28, 'IE-79');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (91, 'mechanic', '2020-12-06', 3, 'It', 'Holdlamis', 'Subin', 1, 7, 3, 93, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (92, 'Software engineer', '2021-06-16', 3, 'Asoka', 'Opela', 'Lotlux', 1, 2, 8, 19, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (93, 'mechanic', '2020-11-03', 1, 'Lotlux', 'Zamit', 'Viva', 1, 4, 4, 158, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (94, 'mechanic', '2020-08-16', 5, 'Bamity', 'Stim', 'Bitchip', 1, 1, 7, 105, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (95, 'mechanic', '2021-04-10', 5, 'Vagram', 'Latlux', 'Job', 1, 9, 5, 56, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (96, 'mechanic', '2021-10-18', 1, 'Cardify', 'Flowdesk', 'Stim', 1, 4, 4, 59, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (97, 'Software engineer', '2021-04-21', 1, 'Domainer', 'Cookley', 'Daltfresh', 1, 5, 6, 63, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (98, 'mechanic', '2021-07-05', 3, 'Namfix', 'Zoolab', 'Veribet', 1, 2, 10, 130, 'IV-77');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (99, 'mechanic', '2020-06-07', 1, 'Temp', 'Otcom', 'Tresom', 1, 9, 1, 43, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (100, 'mechanic', '2020-01-24', 2, 'Duobam', 'Subin', 'Lotstring', 1, 8, 8, 67, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (101, 'mechanic', '2019-12-08', 3, 'Home Ing', 'Viva', 'Keylex', 1, 8, 6, 123, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (102, 'mechanic', '2020-03-05', 3, 'Subin', 'Toughjoyfax', 'Transcof', 1, 6, 7, 78, 'IE-79');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (103, 'mechanic', '2020-02-21', 2, 'Quo Lux', 'Regrant', 'Treeflex', 1, 2, 10, 9, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (104, 'mechanic', '2020-01-11', 5, 'Treeflex', 'Home Ing', 'Tin', 1, 9, 8, 128, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (105, 'mechanic', '2021-03-31', 1, 'Cookley', 'Tempsoft', 'Temp', 1, 9, 10, 78, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (106, 'Software engineer', '2021-05-30', 5, 'Flowdesk', 'Y-find', 'Tampflex', 1, 6, 5, 105, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (107, 'mechanic', '2021-07-20', 2, 'Duobam', 'Vagram', 'Bigtax', 1, 10, 2, 94, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (108, 'mechanic', '2020-03-12', 2, 'Greenlam', 'Asoka', 'Stronghold', 1, 4, 4, 188, 'IE-79');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (109, 'mechanic', '2021-04-15', 5, 'Fintone', 'Lotstring', 'Opela', 1, 9, 7, 108, 'IE-79');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (110, 'mechanic', '2021-06-24', 2, 'Flexidy', 'Span', 'Toughjoyfax', 1, 8, 9, 78, 'IE-79');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (111, 'Software engineer', '2021-11-19', 2, 'Tres-Zap', 'Gembucket', 'Tin', 1, 6, 6, 120, 'IV-77');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (112, 'mechanic', '2021-08-12', 3, 'Flexidy', 'Andalax', 'Konklux', 1, 10, 3, 8, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (113, 'Software engineer', '2021-02-08', 5, 'Alphazap', 'Y-Solowarm', 'Asoka', 1, 2, 10, 82, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (114, 'mechanic', '2021-07-05', 2, 'Aerified', 'Zontrax', 'Zoolab', 1, 6, 5, 98, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (115, 'mechanic', '2021-08-26', 5, 'Opela', 'Tampflex', 'Domainer', 1, 9, 7, 3, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (116, 'Software engineer', '2020-02-26', 2, 'Fixflex', 'Tresom', 'Bitchip', 1, 8, 3, 99, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (117, 'mechanic', '2020-01-24', 3, 'Bigtax', 'Matsoft', 'Prodder', 1, 2, 10, 195, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (118, 'mechanic', '2020-08-02', 2, 'Zathin', 'Duobam', 'It', 1, 4, 6, 54, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (119, 'mechanic', '2021-05-04', 4, 'Bamity', 'Zontrax', 'Daltfresh', 1, 9, 2, 18, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (120, 'Software engineer', '2020-09-03', 5, 'It', 'Zoolab', 'Fix San', 1, 2, 3, 55, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (121, 'Software engineer', '2020-05-14', 1, 'Stronghold', 'Subin', 'Span', 1, 2, 9, 88, 'IE-79');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (122, 'mechanic', '2020-05-10', 4, 'Kanlam', 'Tin', 'Toughjoyfax', 1, 6, 9, 102, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (123, 'Software engineer', '2021-08-28', 4, 'Regrant', 'Pannier', 'Ventosanzap', 1, 10, 10, 52, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (124, 'mechanic', '2019-12-08', 5, 'Duobam', 'Treeflex', 'Duobam', 1, 5, 3, 175, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (125, 'mechanic', '2021-01-06', 3, 'Tin', 'Cookley', 'Temp', 1, 5, 1, 198, 'IE-79');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (126, 'mechanic', '2021-03-27', 4, 'Gembucket', 'Voltsillam', 'Y-Solowarm', 1, 9, 1, 170, 'IV-77');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (127, 'mechanic', '2021-08-01', 2, 'Trippledex', 'Sub-Ex', 'Keylex', 1, 1, 3, 143, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (128, 'mechanic', '2020-10-21', 4, 'Konklab', 'Opela', 'Cardguard', 1, 1, 9, 49, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (129, 'Software engineer', '2021-02-28', 2, 'Bitchip', 'Cardify', 'Rank', 1, 9, 10, 87, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (130, 'Software engineer', '2021-01-28', 5, 'Alpha', 'Stronghold', 'Vagram', 1, 1, 8, 189, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (131, 'Software engineer', '2021-02-09', 1, 'Aerified', 'Vagram', 'Toughjoyfax', 1, 8, 5, 109, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (132, 'mechanic', '2021-09-27', 2, 'Voyatouch', 'Flowdesk', 'Fintone', 1, 2, 9, 8, 'IE-79');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (133, 'mechanic', '2021-02-14', 1, 'Andalax', 'Namfix', 'Zathin', 1, 5, 2, 160, 'IV-77');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (134, 'mechanic', '2021-04-05', 1, 'Lotlux', 'Mat Lam Tam', 'Toughjoyfax', 1, 8, 10, 95, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (135, 'mechanic', '2021-06-25', 5, 'Trippledex', 'Stringtough', 'Fintone', 1, 6, 2, 63, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (136, 'Software engineer', '2020-05-03', 3, 'Zontrax', 'Trippledex', 'Fintone', 1, 6, 3, 169, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (137, 'Software engineer', '2020-08-19', 1, 'Domainer', 'Matsoft', 'Tin', 1, 8, 2, 135, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (138, 'Software engineer', '2021-08-13', 4, 'Transcof', 'Holdlamis', 'Fix San', 1, 9, 5, 138, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (139, 'mechanic', '2019-11-20', 2, 'Konklux', 'Duobam', 'Bitchip', 1, 4, 9, 89, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (140, 'mechanic', '2021-10-20', 3, 'Lotstring', 'Voyatouch', 'Zaam-Dox', 1, 2, 1, 146, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (141, 'Software engineer', '2021-01-12', 5, 'Kanlam', 'Temp', 'Sonair', 1, 10, 1, 179, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (142, 'mechanic', '2021-05-04', 4, 'Redhold', 'Voyatouch', 'Konklux', 1, 3, 6, 89, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (143, 'mechanic', '2020-11-26', 5, 'Bitwolf', 'Ventosanzap', 'Stronghold', 1, 8, 10, 58, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (144, 'Software engineer', '2020-10-24', 4, 'Stronghold', 'Tampflex', 'Fixflex', 1, 9, 7, 156, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (145, 'Software engineer', '2020-01-28', 2, 'Stringtough', 'Zontrax', 'Zaam-Dox', 1, 4, 1, 17, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (146, 'mechanic', '2021-06-12', 5, 'Konklux', 'Asoka', 'Sonair', 1, 4, 8, 97, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (147, 'Software engineer', '2021-05-01', 2, 'Flexidy', 'Pannier', 'Flowdesk', 1, 2, 1, 48, 'IE-79');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (148, 'mechanic', '2021-09-11', 2, 'Holdlamis', 'Stim', 'Tempsoft', 1, 10, 6, 90, 'IV-77');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (149, 'mechanic', '2020-05-31', 5, 'Cardify', 'Domainer', 'Kanlam', 1, 3, 9, 133, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (150, 'mechanic', '2020-06-12', 5, 'Quo Lux', 'Temp', 'Andalax', 1, 4, 5, 13, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (151, 'Software engineer', '2020-12-10', 5, 'Holdlamis', 'Fintone', 'Redhold', 1, 4, 1, 200, 'IV-77');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (152, 'mechanic', '2020-11-14', 2, 'Sonair', 'Cardify', 'Aerified', 1, 8, 10, 143, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (153, 'mechanic', '2020-06-18', 2, 'Mat Lam Tam', 'Bitchip', 'Bitwolf', 1, 4, 10, 168, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (154, 'mechanic', '2020-01-15', 3, 'Aerified', 'Bigtax', 'Vagram', 1, 7, 5, 168, 'IE-79');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (155, 'mechanic', '2021-06-29', 3, 'Konklab', 'Biodex', 'Latlux', 1, 8, 10, 115, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (156, 'mechanic', '2020-06-07', 4, 'Pannier', 'Fix San', 'Transcof', 1, 9, 5, 32, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (157, 'mechanic', '2019-12-29', 2, 'Mat Lam Tam', 'Rank', 'Keylex', 1, 3, 8, 98, 'IE-79');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (158, 'mechanic', '2019-12-01', 4, 'Job', 'Zoolab', 'Veribet', 1, 6, 9, 197, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (159, 'Software engineer', '2020-09-13', 1, 'It', 'Home Ing', 'Cardify', 1, 5, 9, 115, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (160, 'mechanic', '2021-05-12', 5, 'Zoolab', 'Bitwolf', 'Sub-Ex', 1, 6, 1, 73, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (161, 'Software engineer', '2021-10-12', 2, 'Zaam-Dox', 'Holdlamis', 'Zontrax', 1, 1, 8, 142, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (162, 'Software engineer', '2021-01-25', 2, 'Treeflex', 'Cookley', 'Namfix', 1, 10, 7, 68, 'IE-79');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (163, 'mechanic', '2021-09-17', 2, 'Overhold', 'Fixflex', 'Biodex', 1, 7, 10, 72, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (164, 'Software engineer', '2020-09-24', 2, 'Biodex', 'Prodder', 'Ronstring', 1, 9, 9, 195, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (165, 'mechanic', '2021-01-20', 2, 'Bitchip', 'Flexidy', 'Tin', 1, 4, 8, 28, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (166, 'mechanic', '2020-05-25', 1, 'Ventosanzap', 'Matsoft', 'Otcom', 1, 6, 1, 20, 'IV-77');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (167, 'Software engineer', '2020-08-07', 2, 'Quo Lux', 'Sub-Ex', 'Greenlam', 1, 10, 4, 68, 'IE-79');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (168, 'Software engineer', '2020-01-19', 2, 'Keylex', 'Zontrax', 'Job', 1, 3, 1, 178, 'IE-79');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (169, 'Software engineer', '2020-11-25', 5, 'Ventosanzap', 'Toughjoyfax', 'Ronstring', 1, 7, 9, 156, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (170, 'Software engineer', '2021-02-25', 5, 'Cardify', 'Zoolab', 'Konklux', 1, 4, 3, 168, 'IE-79');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (171, 'Software engineer', '2021-05-31', 2, 'Alpha', 'Zamit', 'Stim', 1, 1, 9, 116, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (172, 'Software engineer', '2021-08-14', 5, 'Cardify', 'Holdlamis', 'Alpha', 1, 4, 8, 102, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (173, 'mechanic', '2019-12-30', 5, 'Wrapsafe', 'Aerified', 'Alpha', 1, 7, 5, 85, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (174, 'mechanic', '2020-12-02', 3, 'Solarbreeze', 'Home Ing', 'Asoka', 1, 2, 8, 188, 'IE-79');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (175, 'mechanic', '2021-07-12', 1, 'Zathin', 'Solarbreeze', 'Stronghold', 1, 10, 4, 58, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (176, 'Software engineer', '2020-02-19', 5, 'Voyatouch', 'Tin', 'Regrant', 1, 7, 8, 23, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (177, 'Software engineer', '2021-05-16', 1, 'Sonair', 'Redhold', 'Keylex', 1, 2, 1, 192, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (178, 'Software engineer', '2020-10-06', 2, 'Transcof', 'Quo Lux', 'Fixflex', 1, 10, 3, 72, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (179, 'mechanic', '2020-03-29', 4, 'Vagram', 'Toughjoyfax', 'Andalax', 1, 6, 10, 108, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (180, 'Software engineer', '2021-11-18', 4, 'Lotlux', 'Sonair', 'Tin', 1, 6, 4, 115, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (181, 'mechanic', '2020-01-27', 3, 'Flexidy', 'Bigtax', 'Temp', 1, 4, 9, 145, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (182, 'mechanic', '2020-08-03', 2, 'Alphazap', 'Flowdesk', 'Zoolab', 1, 9, 3, 189, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (183, 'mechanic', '2020-09-02', 4, 'Domainer', 'Keylex', 'Domainer', 1, 2, 4, 186, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (184, 'mechanic', '2021-09-10', 4, 'Redhold', 'Quo Lux', 'It', 1, 1, 2, 97, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (185, 'Software engineer', '2020-07-18', 5, 'Gembucket', 'Mat Lam Tam', 'Fix San', 1, 4, 5, 62, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (186, 'mechanic', '2021-02-24', 4, 'Holdlamis', 'Temp', 'Regrant', 1, 3, 5, 15, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (187, 'Software engineer', '2020-05-02', 4, 'Bytecard', 'Bamity', 'Tempsoft', 1, 9, 1, 125, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (188, 'Software engineer', '2021-09-24', 1, 'Greenlam', 'Bytecard', 'Toughjoyfax', 1, 9, 6, 78, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (189, 'Software engineer', '2021-05-07', 2, 'Asoka', 'Sonsing', 'Y-Solowarm', 1, 6, 6, 153, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (190, 'mechanic', '2019-12-04', 4, 'Subin', 'Viva', 'Y-Solowarm', 1, 2, 3, 174, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (191, 'Software engineer', '2019-11-22', 5, 'Zamit', 'Zamit', 'Span', 1, 9, 6, 150, 'IV-77');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (192, 'Software engineer', '2021-01-31', 1, 'Job', 'Daltfresh', 'Fix San', 1, 8, 3, 76, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (193, 'Software engineer', '2020-08-31', 1, 'Opela', 'Tin', 'Y-Solowarm', 1, 6, 3, 68, 'IE-49');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (194, 'Software engineer', '2020-12-17', 1, 'Transcof', 'Viva', 'Voltsillam', 1, 8, 10, 125, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (195, 'mechanic', '2020-12-23', 3, 'Span', 'Konklab', 'Voyatouch', 1, 7, 5, 99, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (196, 'Software engineer', '2020-08-26', 5, 'Hatity', 'Alphazap', 'Otcom', 1, 4, 10, 82, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (197, 'mechanic', '2021-11-13', 4, 'Pannier', 'Veribet', 'Fintone', 1, 4, 3, 30, 'IV-77');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (198, 'Software engineer', '2020-07-29', 3, 'Tampflex', 'Sonsing', 'Zoolab', 1, 5, 3, 24, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (199, 'Software engineer', '2021-05-19', 3, 'Tampflex', 'Daltfresh', 'Zathin', 1, 3, 3, 12, 'IN-99');
insert into groups (id, specialty, creation, course, training_direction, education_level, qualification, admissionCourse, institute_id, faculty_id, curator_id, name) values (200, 'mechanic', '2020-05-06', 5, 'Gembucket', 'Sonair', 'Treeflex', 1, 8, 3, 76, 'IN-99');



SELECT teachers.last_name FROM teachers, schedules, groups
WHERE schedules.teacher_id = teachers.id AND
schedules.group_id = groups.id AND
groups.name = 'IE-49';

SELECT teachers.last_name AS "teacher",
            teachers.qualification_level
    FROM teachers;

SELECT distinct groups.name AS "group_name",
            groups.course AS "group_course"
    FROM groups;

SELECT students.last_name AS "student",
            groups.name AS "group"
    FROM students, groups
    WHERE students.group_id = groups.id;

SELECT subjects.name FROM teachers, schedules, subjects
WHERE schedules.teacher_id = teachers.id AND
schedules.subject_id = subjects.id AND
teachers.last_name = 'Zannutti';


SELECT days.day AS "day",
       days.study_week AS "week",
       hours.pair_number AS "pair",
       hours.beginning AS "beginning",
       hours.ending AS "end",
       subjects.name AS "subject", 
       teachers.last_name AS "teacher",
       places.corps AS "corps",
       places.audience AS "audience"
FROM schedules
INNER JOIN teachers ON
 schedules.teacher_id = teachers.id
INNER JOIN subjects ON
 schedules.subject_id = subjects.id
INNER JOIN groups ON
 schedules.group_id = groups.id
INNER JOIN hours ON
 schedules.hour_id = hours.id
INNER JOIN places ON
 schedules.place_id = places.id
INNER JOIN days ON
 schedules.day_id = days.id
WHERE groups.name = 'IN-99';


SELECT days.day AS "day",
       days.study_week AS "week",
       hours.pair_number AS "pair",
       hours.beginning AS "beginning",
       hours.ending AS "end",
       subjects.name AS "subject", 
       groups.name AS "group",
       places.corps AS "corps",
       places.audience AS "audience"
FROM schedules
INNER JOIN teachers ON
 schedules.teacher_id = teachers.id
INNER JOIN subjects ON
 schedules.subject_id = subjects.id
INNER JOIN groups ON
 schedules.group_id = groups.id
INNER JOIN hours ON
 schedules.hour_id = hours.id
INNER JOIN places ON
 schedules.place_id = places.id
INNER JOIN days ON
 schedules.day_id = days.id
WHERE teachers.id = 10;


SELECT evaluations.mark100 AS "mark in 100 balls system",
       evaluations.markword AS "mark in word",
       subjects.name AS "subject"
FROM evaluations
INNER JOIN subjects ON
 evaluations.subject_id = subjects.id
INNER JOIN students ON
 evaluations.student_id = students.id
WHERE students.id = 51 AND evaluations.study_semester = '2';



--DELETE FROM groups WHERE id <> 0;
-- INSERT INTO groups (name, faculty, institute, specialty, creation, course, curator_id) 
-- VALUES ('ІР-84', 'FICT', 'Kyiv Polytechnic Institute', 'Software engineer', '2018-09-01', '3', 1);

-- INSERT INTO groups (name, faculty, institute, specialty, creation, course, curator_id) 
-- VALUES ('ІР-89', 'FICT', 'Kyiv Polytechnic Institute', 'Software engineer', '2018-09-01', '3', 3);