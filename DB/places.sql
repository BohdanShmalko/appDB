--  id       | bigint                |           | not null | nextval('places_id_seq'::regclass)
--  corps    | character varying(10) |           | not null |
--  audience | character varying(10) |           | not null |

DELETE FROM places WHERE id <> 0;
INSERT INTO places (id, corps, audience) VALUES (1, 18, 101);
INSERT INTO places (id, corps, audience) VALUES (2, 18, 102);
INSERT INTO places (id, corps, audience) VALUES (3, 18, 103);
INSERT INTO places (id, corps, audience) VALUES (4, 18, 104);
INSERT INTO places (id, corps, audience) VALUES (5, 18, 105);
INSERT INTO places (id, corps, audience) VALUES (6, 18, 106);
INSERT INTO places (id, corps, audience) VALUES (7, 18, 107);
INSERT INTO places (id, corps, audience) VALUES (8, 18, 108);