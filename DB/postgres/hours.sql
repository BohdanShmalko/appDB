--  id          | bigint                |           | not null | nextval('hours_id_seq'::regclass)
--  pair_number | smallint              |           | not null |
--  beginning   | character varying(10) |           | not null |
--  ending      | character varying(10) |           | not null |

CREATE TABLE hours
(
    id serial NOT NULL PRIMARY KEY,
    pair_number  smallint                          not null unique,
    beginning    char(5)             not null unique,
    ending       char(5)             not null unique
);

--DELETE FROM hours WHERE id <> 0;
INSERT INTO hours (id, pair_number, beginning, ending) VALUES (1, 1, '8:30', '10:05');
INSERT INTO hours (id, pair_number, beginning, ending) VALUES (2, 2, '10:25', '12:00');
INSERT INTO hours (id, pair_number, beginning, ending) VALUES (3, 3, '12:20', '13:55');
INSERT INTO hours (id, pair_number, beginning, ending) VALUES (5, 5, '16:10', '17:45');
INSERT INTO hours (id, pair_number, beginning, ending) VALUES (4, 4, '14:15', '15:50');