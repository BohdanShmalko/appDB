--  id       | bigint                |           | not null | nextval('places_id_seq'::regclass)
--  corps    | character varying(10) |           | not null |
--  audience | character varying(10) |           | not null |

CREATE TABLE places
(
    id serial NOT NULL PRIMARY KEY,
    corps     character varying(10)             not null,
    audience  character varying(10)             not null 
);

--DELETE FROM places WHERE id <> 0;
INSERT INTO places (id, corps, audience) VALUES (1, 18, 101);
INSERT INTO places (id, corps, audience) VALUES (2, 18, 102);
INSERT INTO places (id, corps, audience) VALUES (3, 18, 103);
INSERT INTO places (id, corps, audience) VALUES (4, 18, 104);
INSERT INTO places (id, corps, audience) VALUES (5, 18, 105);
INSERT INTO places (id, corps, audience) VALUES (6, 18, 106);
INSERT INTO places (id, corps, audience) VALUES (7, 18, 107);
INSERT INTO places (id, corps, audience) VALUES (8, 18, 108);
INSERT INTO places (id, corps, audience) VALUES (9, 19, 104);
INSERT INTO places (id, corps, audience) VALUES (10, 19, 105);
INSERT INTO places (id, corps, audience) VALUES (11, 20, 106);
INSERT INTO places (id, corps, audience) VALUES (12, 21, 307);
INSERT INTO places (id, corps, audience) VALUES (13, 20, 408);
INSERT INTO places (id, corps, audience) VALUES (14, 19, 304);
INSERT INTO places (id, corps, audience) VALUES (15, 19, 305);
INSERT INTO places (id, corps, audience) VALUES (16, 20, 306);
INSERT INTO places (id, corps, audience) VALUES (17, 21, 307);
INSERT INTO places (id, corps, audience) VALUES (18, 20, 308);


-- UPDATE schedules SET place_id = 2 WHERE schedules.place_id = 1;

-- DELETE FROM places WHERE corps = '18';