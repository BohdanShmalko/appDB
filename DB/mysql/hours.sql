CREATE TABLE hours
(
    id INT(11) NOT NULL AUTO_INCREMENT UNIQUE,
    pair_number  INT(2)                          not null ,
    beginning    VARCHAR(10)             not null ,
    ending       VARCHAR(10)             not null 
);

INSERT INTO hours (id, pair_number, beginning, ending) VALUES (1, 1, '8:30', '10:05');
INSERT INTO hours (id, pair_number, beginning, ending) VALUES (2, 2, '10:25', '12:00');
INSERT INTO hours (id, pair_number, beginning, ending) VALUES (3, 3, '12:20', '13:55');
INSERT INTO hours (id, pair_number, beginning, ending) VALUES (5, 5, '16:10', '17:45');
INSERT INTO hours (id, pair_number, beginning, ending) VALUES (4, 4, '14:15', '15:50');