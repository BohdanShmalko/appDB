--  id         | bigint                 |           | not null | nextval('students_authentications_id_seq'::regclass)
--  login      | character varying(100) |           | not null |
--  password   | character varying(100) |           | not null |
--  student_id | bigint                 |           | not null |

CREATE TABLE students_authentications
(
    id serial NOT NULL PRIMARY KEY,
    login       character varying(100)             not null unique,
    password    character varying(100)             not null unique,
    student_id  INT NOT NULL REFERENCES students (id)
);

--DELETE FROM students_authentications WHERE id <> 0;
--INSERT INTO students_authentications (id, ) VALUES (1, );

insert into students_authentications (id, login, password, student_id) values (1, '82urvuSN', 'tHh3hg', 81);
insert into students_authentications (id, login, password, student_id) values (2, 'd4MYIe', 'PY4jNI99L', 169);
insert into students_authentications (id, login, password, student_id) values (3, 'hkSEgmONP', 'IpBbFi1gC', 185);
insert into students_authentications (id, login, password, student_id) values (4, 'rGgXKr', '77s7VCGFOg5', 108);
insert into students_authentications (id, login, password, student_id) values (5, 'sT5EpQzG', 'CQF8xSSJFl', 109);
insert into students_authentications (id, login, password, student_id) values (6, 'XuBq266rzh4s', 'f80LHQPnaJEq', 41);
insert into students_authentications (id, login, password, student_id) values (7, 'bOhK028P', 'j8rW963', 152);
insert into students_authentications (id, login, password, student_id) values (8, '6u5yeW1ctLpR', 'yjh2tZYy', 60);
insert into students_authentications (id, login, password, student_id) values (9, 'pX8SzQYg', 'WdpuWi10', 122);
insert into students_authentications (id, login, password, student_id) values (10, 'qqnwn0D', 'OWRuoybLPYL', 189);
insert into students_authentications (id, login, password, student_id) values (11, 'A8qeDXw9', '0MKNvo', 131);
insert into students_authentications (id, login, password, student_id) values (12, 'qmjDuCYkga4A', 'go3Ix7', 41);
insert into students_authentications (id, login, password, student_id) values (13, 'KvAEw8TVx2s', '0mtesgQd', 102);
insert into students_authentications (id, login, password, student_id) values (14, 'QZFa88494XR', 'gRcGGA51n4xr', 67);
insert into students_authentications (id, login, password, student_id) values (15, 'T99X6xMnJnp', 'C2fcpzfbM', 116);
insert into students_authentications (id, login, password, student_id) values (16, 'OPqUcsFcEKa', '8DAfwsxR', 89);
insert into students_authentications (id, login, password, student_id) values (17, 'AXygqvf', 'vErInc', 58);
insert into students_authentications (id, login, password, student_id) values (18, 'qBf7Nh', 'ad5RTAnwe', 145);
insert into students_authentications (id, login, password, student_id) values (19, 'xFsQOa', '7O0gjaWcnO', 155);
insert into students_authentications (id, login, password, student_id) values (20, '5r5H8A', 'QTDDH4', 52);
insert into students_authentications (id, login, password, student_id) values (21, 'paRBiA', 'x4LsOm0yaAT0', 134);
insert into students_authentications (id, login, password, student_id) values (22, '4DY9sYm1AQSd', 'f5L1Mfk', 18);
insert into students_authentications (id, login, password, student_id) values (23, 'dCrkPZy0LQft', 'TGdVIN2', 130);
insert into students_authentications (id, login, password, student_id) values (24, '1r1lq6rbGjN4', 'x1Z6T4P8Eyaj', 99);
insert into students_authentications (id, login, password, student_id) values (25, 'rYjukLRQG2jS', 'KzL8wC', 123);
insert into students_authentications (id, login, password, student_id) values (26, 'pettR9Ubt', 'yBNQNZhhZHh', 16);
insert into students_authentications (id, login, password, student_id) values (27, '9XS5TXXIF', 'RW6Kl2bVUC0', 54);
insert into students_authentications (id, login, password, student_id) values (28, 'by1DCpmV', 'qZH6GwR9', 145);
insert into students_authentications (id, login, password, student_id) values (29, '1vPzgX', 'eD7RZ1F', 95);
insert into students_authentications (id, login, password, student_id) values (30, 'aTehAvn5', 'VVO5Gfxd', 117);
insert into students_authentications (id, login, password, student_id) values (31, 'XR2G40O', 'ffvpSv', 130);
insert into students_authentications (id, login, password, student_id) values (32, 'yMSJlLMR1B', 'hEi8ZnD', 129);
insert into students_authentications (id, login, password, student_id) values (33, 'q4TdkEdB', 'PCWjeoz', 1);
insert into students_authentications (id, login, password, student_id) values (34, 'aLPrzS1', 'HAKlo1M', 10);
insert into students_authentications (id, login, password, student_id) values (35, 'pXmcd9fKG26', 'fZz1HcopHu8', 200);
insert into students_authentications (id, login, password, student_id) values (36, '04UkfNnX8UZ8', 'xm9aVlGd', 64);
insert into students_authentications (id, login, password, student_id) values (37, 'iGxveJzQObzX', 'qZsSX6cLyYF', 43);
insert into students_authentications (id, login, password, student_id) values (38, '2RN9VqQjd6bT', 'QriBmJOhN3wr', 68);
insert into students_authentications (id, login, password, student_id) values (39, 'uV6bnDNf', 'Iyvv5TP', 143);
insert into students_authentications (id, login, password, student_id) values (40, 'rTzgpNdC', 'cOJ97DJ8UCR9', 193);
insert into students_authentications (id, login, password, student_id) values (41, 'fxtXylQPD', 'QQT3Q1wNDzl', 199);
insert into students_authentications (id, login, password, student_id) values (42, 'Rwh2mxL', '9DEgva', 119);
insert into students_authentications (id, login, password, student_id) values (43, 'SLw696', 'FOGtEO', 115);
insert into students_authentications (id, login, password, student_id) values (44, 'YFiAUypK42tv', '2lMduZIt', 92);
insert into students_authentications (id, login, password, student_id) values (45, 'S2fXPE', 'dgZf2Qv40', 127);
insert into students_authentications (id, login, password, student_id) values (46, 'hw7NpeCAxa', '435IHE0rP2C', 171);
insert into students_authentications (id, login, password, student_id) values (47, 'lGWcpjv4a', 'gygl1nh', 154);
insert into students_authentications (id, login, password, student_id) values (48, 'saBKV90', 'r0fCQXk', 166);
insert into students_authentications (id, login, password, student_id) values (49, '1p71kBb', '4dOQw0UB2Xf', 180);
insert into students_authentications (id, login, password, student_id) values (50, 'y7HD1p3VXyh', '8ynNaUL9u4iE', 7);
insert into students_authentications (id, login, password, student_id) values (51, 'kiLhRR4H', 'Q42DZ0wq4', 65);
insert into students_authentications (id, login, password, student_id) values (52, '5EfgifHHcf1', 'IBfsYIXv', 199);
insert into students_authentications (id, login, password, student_id) values (53, '2Vz20d', 'xksLjbj', 103);
insert into students_authentications (id, login, password, student_id) values (54, 'OPYqD3PTi', 'S8wWLim', 148);
insert into students_authentications (id, login, password, student_id) values (55, 'W1yfzb', '1a3vZIXyC', 3);
insert into students_authentications (id, login, password, student_id) values (56, '2u1sE2', 'VHoGi80PRT', 125);
insert into students_authentications (id, login, password, student_id) values (57, 'QDzC4QT1Uw4O', 'UPcFOorM', 16);
insert into students_authentications (id, login, password, student_id) values (58, '3smThpd', 'FQFGFqZS', 171);
insert into students_authentications (id, login, password, student_id) values (59, 'SvfbAsWR', 'xg8yUAz', 179);
insert into students_authentications (id, login, password, student_id) values (60, '0YZNic', 'rGkPzY', 125);
insert into students_authentications (id, login, password, student_id) values (61, 'adeMU2', 'TfaaMmzbY', 109);
insert into students_authentications (id, login, password, student_id) values (62, 'wcAcfYpEo', 'v84096uEK1', 81);
insert into students_authentications (id, login, password, student_id) values (63, '7xu0vJ3D', 'QCz6fG3TIY3', 95);
insert into students_authentications (id, login, password, student_id) values (64, 'tXJOv4', 'OEJI263JQ', 158);
insert into students_authentications (id, login, password, student_id) values (65, 'vZiVTt6v7', 'quzXhZycm3c3', 111);
insert into students_authentications (id, login, password, student_id) values (66, '2WoEh9MNh0N', 'XtfiTkFbOhvC', 169);
insert into students_authentications (id, login, password, student_id) values (67, 'JVqEqXN312l', 'bMAkrcmo', 80);
insert into students_authentications (id, login, password, student_id) values (68, 'QYihW2BlMV', 'kRObx6hTUz5', 131);
insert into students_authentications (id, login, password, student_id) values (69, 't4dwRL', 'cQzcmu', 132);
insert into students_authentications (id, login, password, student_id) values (70, 'T5Gsc7knc', '6OHEUN', 145);
insert into students_authentications (id, login, password, student_id) values (71, '5n4SR7Bx', 'U870T7EQiU', 78);
insert into students_authentications (id, login, password, student_id) values (72, 'Ca6TikzfjV5', '7x4kz3', 127);
insert into students_authentications (id, login, password, student_id) values (73, 'svwUSdk6Ix', 'MFfQELuBXnYi', 44);
insert into students_authentications (id, login, password, student_id) values (74, 'uFrngq', 'hT0uv9k', 37);
insert into students_authentications (id, login, password, student_id) values (75, 'G2W1CeENr', 'sQzH9CZcVZzZ', 6);
insert into students_authentications (id, login, password, student_id) values (76, 'BKFw3o5zTVuV', 'bCs0HnXK', 21);
insert into students_authentications (id, login, password, student_id) values (77, 'tBxCSC', 'QXB4TQFQmEUl', 35);
insert into students_authentications (id, login, password, student_id) values (78, 'wqbSrVVyf', 'c1yCdV2jg6bY', 11);
insert into students_authentications (id, login, password, student_id) values (79, '1WidKM', '3b7zcN8pZfO2', 194);
insert into students_authentications (id, login, password, student_id) values (80, 'fnPpYgs', 'y21mHnwEUlW', 56);
insert into students_authentications (id, login, password, student_id) values (81, 'b46GTfJfk22h', 'oi3Rw6gjgXI', 115);
insert into students_authentications (id, login, password, student_id) values (82, 'hZRIRPAq', 'RKRMF4WMeYkN', 196);
insert into students_authentications (id, login, password, student_id) values (83, 'mqsBN1v', 'AJfIywV', 88);
insert into students_authentications (id, login, password, student_id) values (84, 'InUocsfBDoGX', 'e6VgZIeZZb', 95);
insert into students_authentications (id, login, password, student_id) values (85, '4zZRCGwdN0Y', '00iCR5v', 35);
insert into students_authentications (id, login, password, student_id) values (86, 'hOscK3', 'JnmkVxa3', 144);
insert into students_authentications (id, login, password, student_id) values (87, 'bhQARb', 'DUjnlBlrP', 71);
insert into students_authentications (id, login, password, student_id) values (88, 'CptaEllk', '93rvyVkx', 52);
insert into students_authentications (id, login, password, student_id) values (89, '8eckYHfQ', 'nSeEo8lNSe', 54);
insert into students_authentications (id, login, password, student_id) values (90, 'wWuGZJn', 'JCiyOQzF', 94);
insert into students_authentications (id, login, password, student_id) values (91, '8JU5LDjDf', 'Wjd6qj57', 55);
insert into students_authentications (id, login, password, student_id) values (92, 'LrJicX', 'cu7rTOVr52b', 118);
insert into students_authentications (id, login, password, student_id) values (93, 'QoL3704S', 'HXzlCnLCwVT', 168);
insert into students_authentications (id, login, password, student_id) values (94, 'E4l4ddF', 'r422MvqXd', 35);
insert into students_authentications (id, login, password, student_id) values (95, 'phrr41wba0g', 'iKaoF1', 190);
insert into students_authentications (id, login, password, student_id) values (96, 'AyPbev5IE', 'eMV6qGvJ', 178);
insert into students_authentications (id, login, password, student_id) values (97, 'F3i1b6EfV', 'FBO6HabvoxK', 184);
insert into students_authentications (id, login, password, student_id) values (98, 'tpkrvCW', 'DrHQkdSOknE', 19);
insert into students_authentications (id, login, password, student_id) values (99, 'hP3NopNj', 'iWrV4O8ECer', 61);
insert into students_authentications (id, login, password, student_id) values (100, 'sC9ncn', 'HPsU78F', 94);
insert into students_authentications (id, login, password, student_id) values (101, 'lwfBCmrfR', 'aq5stQIn1Qd', 192);
insert into students_authentications (id, login, password, student_id) values (102, 'Vz4pAOJS1kY', 'PA02Uk', 176);
insert into students_authentications (id, login, password, student_id) values (103, 'BPWPLG', 'Wb0OGF2LFvoa', 164);
insert into students_authentications (id, login, password, student_id) values (104, 'AdW8y8VZuE3', 'JfZrrRmd', 44);
insert into students_authentications (id, login, password, student_id) values (105, 'rmI2OIf', 'prChB74', 48);
insert into students_authentications (id, login, password, student_id) values (106, 'Yt7jfksXadu1', 'EFlwBR8M', 18);
insert into students_authentications (id, login, password, student_id) values (107, 'j2g62fl', 'DGRYPA65LW', 23);
insert into students_authentications (id, login, password, student_id) values (108, '6d5AGahbYC', '3hTgjuIrwnAn', 150);
insert into students_authentications (id, login, password, student_id) values (109, 'TKM0qlb4Cl', '9EJll2mI', 186);
insert into students_authentications (id, login, password, student_id) values (110, 'KoJPxRB7Hrw', 'bmmqHbmcwQ', 5);
insert into students_authentications (id, login, password, student_id) values (111, 'MJVPZnxDRp', 'lxgkPM', 163);
insert into students_authentications (id, login, password, student_id) values (112, '6UGyiIQkraOj', 'bC7YtfY', 17);
insert into students_authentications (id, login, password, student_id) values (113, 'YIXTqe', 'sU6PGBOkv', 84);
insert into students_authentications (id, login, password, student_id) values (114, 'yCSFjqt5LMe', 'X4ndlA9hCZ', 111);
insert into students_authentications (id, login, password, student_id) values (115, 'bsF8dBms', 'St4ovQjLJcE7', 108);
insert into students_authentications (id, login, password, student_id) values (116, 'iiyNiTyXCrvf', 'ep8n4IadLJ1', 41);
insert into students_authentications (id, login, password, student_id) values (117, 'mYpxxnW2yB', '2Wy7f9pQgv', 185);
insert into students_authentications (id, login, password, student_id) values (118, 'bsXhAjA7Sc', 'w0DbXolCHgk', 35);
insert into students_authentications (id, login, password, student_id) values (119, 'f3nUjDfaO', 'DevNtSOJs', 153);
insert into students_authentications (id, login, password, student_id) values (120, 'QDAhijS8b5G', 'b5SP3g7YB', 136);
insert into students_authentications (id, login, password, student_id) values (121, 'ih0JPX40rz', 'VienZEz', 175);
insert into students_authentications (id, login, password, student_id) values (122, 's9M9OKrpVSOZ', 'vVKttehshYp', 33);
insert into students_authentications (id, login, password, student_id) values (123, 'bHzI30FRpYOk', 'W14XfQy', 177);
insert into students_authentications (id, login, password, student_id) values (124, 'kQzqY8', 'WuFuJNX15', 55);
insert into students_authentications (id, login, password, student_id) values (125, 'vmdyFMX', '11m1SoHc4lW', 52);
insert into students_authentications (id, login, password, student_id) values (126, 'WP4Pm8Ud', 'St6hya8z', 178);
insert into students_authentications (id, login, password, student_id) values (127, 'dvf5M7YhTq', 'DnQk7lSiDskk', 125);
insert into students_authentications (id, login, password, student_id) values (128, 'NjYBwhtPztH', 'I9Cr2mTQDT', 63);
insert into students_authentications (id, login, password, student_id) values (129, 'aOOJpflgD', 'F8eDmM', 198);
insert into students_authentications (id, login, password, student_id) values (130, '6Kh6TAR', 'yjCL9qZrhF5w', 63);
insert into students_authentications (id, login, password, student_id) values (131, 'NDeZFiz', 'QCw83X5HA8', 120);
insert into students_authentications (id, login, password, student_id) values (132, 'z2jdPzPe1Jvu', 'TVNL1S1AgkN', 28);
insert into students_authentications (id, login, password, student_id) values (133, 'C7KjTv', 'vrfzP6p8UUza', 36);
insert into students_authentications (id, login, password, student_id) values (134, 'kjHAzXze', '1G0j4gNX1CkR', 116);
insert into students_authentications (id, login, password, student_id) values (135, '2OQ2XU0Qbz6M', 'nOHvGHOkoZG', 5);
insert into students_authentications (id, login, password, student_id) values (136, 'cJ5KiLP', 'ronZ4U55RQUF', 52);
insert into students_authentications (id, login, password, student_id) values (137, 'bdjt1jAz0r1X', 'nWj4H4a9nvd', 160);
insert into students_authentications (id, login, password, student_id) values (138, '6H4Vj9K', 'tMTNseZS9mJg', 29);
insert into students_authentications (id, login, password, student_id) values (139, 'jrzMK9', 'cKDrpA', 134);
insert into students_authentications (id, login, password, student_id) values (140, '2npH1uC', 'Eqmb4w6dxSaF', 147);
insert into students_authentications (id, login, password, student_id) values (141, 'jAZENri63', '5f1RggFOMYc', 158);
insert into students_authentications (id, login, password, student_id) values (142, 'Q8mbmtrd8Z', 'pdbVi90', 58);
insert into students_authentications (id, login, password, student_id) values (143, 'BeonkEib6EN', 'CaMmMV', 193);
insert into students_authentications (id, login, password, student_id) values (144, 'MaAG4z', 'mbfO4SgYb', 99);
insert into students_authentications (id, login, password, student_id) values (145, '6gplBBRk7', 'HnT0IUZzFk7', 73);
insert into students_authentications (id, login, password, student_id) values (146, 'HcI9b6', 'HPpx6X', 10);
insert into students_authentications (id, login, password, student_id) values (147, '0JvbeK', 'HJ94Cu', 32);
insert into students_authentications (id, login, password, student_id) values (148, 'esFWmIwNip', '7C5jRt5Wd2F', 155);
insert into students_authentications (id, login, password, student_id) values (149, 'KD4FKTNU2p', 'Zmmz1pCqLc5', 96);
insert into students_authentications (id, login, password, student_id) values (150, 'XDhvA1ht', 'JplHShtt', 87);
insert into students_authentications (id, login, password, student_id) values (151, 'ICfp2r', 'O8b49teyk', 200);
insert into students_authentications (id, login, password, student_id) values (152, 'nHYN4XxXr', 'UPokaz', 73);
insert into students_authentications (id, login, password, student_id) values (153, 'keQ1zMZ', 'sxMNVMOv', 164);
insert into students_authentications (id, login, password, student_id) values (154, 'aS7DEOoMvD5', '8hv8sw', 154);
insert into students_authentications (id, login, password, student_id) values (155, 'oq6m3DiL', 'PHIzQDntp', 158);
insert into students_authentications (id, login, password, student_id) values (156, 'ChSs7D', '76xDG9abahX', 176);
insert into students_authentications (id, login, password, student_id) values (157, 'yQN0giAD', 'DkBdTzVe', 62);
insert into students_authentications (id, login, password, student_id) values (158, '5ZztAyR6zVRO', '4eRFZgab', 146);
insert into students_authentications (id, login, password, student_id) values (159, '4CQ1uQ1MgO', '6wJw4TB', 199);
insert into students_authentications (id, login, password, student_id) values (160, 'GsrsSb', '6NELb9A', 29);
insert into students_authentications (id, login, password, student_id) values (161, 'xMThwTzVq', 'B883vf6r', 11);
insert into students_authentications (id, login, password, student_id) values (162, 'iZJ4usYOfo', 'kNmXCYFJLm', 185);
insert into students_authentications (id, login, password, student_id) values (163, 'wiKROpoJEO', 'stMBiQ', 77);
insert into students_authentications (id, login, password, student_id) values (164, 'M3enWsasPY', 'NZ0QEX', 32);
insert into students_authentications (id, login, password, student_id) values (165, 'Xjd7cny', 'WUSW24', 79);
insert into students_authentications (id, login, password, student_id) values (166, 'PIbn5Q', 'eI9mrNs', 185);
insert into students_authentications (id, login, password, student_id) values (167, 'qvxowMbBPLL', 'qwAVS2ES9Q', 115);
insert into students_authentications (id, login, password, student_id) values (168, 'sAq5xag', '4LtVuPt', 128);
insert into students_authentications (id, login, password, student_id) values (169, 'c59MVAm5MD', 'NfOXCVk', 170);
insert into students_authentications (id, login, password, student_id) values (170, '3HbPhCY', 'FQNnmFsp', 18);
insert into students_authentications (id, login, password, student_id) values (171, 'OnzWdRW5X6', 'j7Go5bXP', 77);
insert into students_authentications (id, login, password, student_id) values (172, '3kABe44h', 'PB1KdDzj2', 93);
insert into students_authentications (id, login, password, student_id) values (173, 'OjfD0XT', 'hDJml2Pzh6g', 130);
insert into students_authentications (id, login, password, student_id) values (174, 'GCvjv4G1hCF', 'mYo8wX07Xo', 141);
insert into students_authentications (id, login, password, student_id) values (175, 'f0ocgiW', 'QNpcfO', 127);
insert into students_authentications (id, login, password, student_id) values (176, 'rnrgSlCWZhMP', 'aYxkP08asaQY', 85);
insert into students_authentications (id, login, password, student_id) values (177, 'ZfwfYIQ5Jj6P', '4g2dBY2c8U', 145);
insert into students_authentications (id, login, password, student_id) values (178, 'K4TxmssN', '3AMJ7g', 165);
insert into students_authentications (id, login, password, student_id) values (179, '4SaZIfd6', '1GjAey0o0oS', 7);
insert into students_authentications (id, login, password, student_id) values (180, 'V246WWR', 'p9Jk47rs', 153);
insert into students_authentications (id, login, password, student_id) values (181, 'BxfBw7Sv', 'Bx0dC3gKG', 139);
insert into students_authentications (id, login, password, student_id) values (182, 'h1lHNxDqbu9A', 'fPjYawrc', 57);
insert into students_authentications (id, login, password, student_id) values (183, 'h5o6a97K', 'DbqkPAbAkji', 187);
insert into students_authentications (id, login, password, student_id) values (184, 'wtc24OLCx', 'gzSt70', 111);
insert into students_authentications (id, login, password, student_id) values (185, '3HMNHC8', 'Kfp6DS', 121);
insert into students_authentications (id, login, password, student_id) values (186, 'Jzy9mWcPwyih', 'wAgZEz', 189);
insert into students_authentications (id, login, password, student_id) values (187, 'qNAJQdK', 'VJDFVjr', 184);
insert into students_authentications (id, login, password, student_id) values (188, 'OmxCBgNlLqHm', 'WOXlX7MrC', 68);
insert into students_authentications (id, login, password, student_id) values (189, 'B8fEiO58', '8b8cg7uEKAY', 152);
insert into students_authentications (id, login, password, student_id) values (190, 'YDdJAPZ', 'WjaRuDRn1X', 159);
insert into students_authentications (id, login, password, student_id) values (191, '9BnjVK3', 'X2lfSFk', 140);
insert into students_authentications (id, login, password, student_id) values (192, 'eLxGT6', 'qYupsrUpcFgi', 2);
insert into students_authentications (id, login, password, student_id) values (193, 'zktb9Rxz3c3', 'h6Jt1YZib', 128);
insert into students_authentications (id, login, password, student_id) values (194, 'Mwf0zaxBLWB4', 'nAXKSWUx', 1);
insert into students_authentications (id, login, password, student_id) values (195, 'u24Ro9qJC', '8g1YlFnXj4P', 10);
insert into students_authentications (id, login, password, student_id) values (196, '0o8aat5B', 'xZJStCtLR', 151);
insert into students_authentications (id, login, password, student_id) values (197, 'PfBrvzS', 'idqSnT', 146);
insert into students_authentications (id, login, password, student_id) values (198, 'kMUKYEZ', 'PRw5PGXlo', 31);
insert into students_authentications (id, login, password, student_id) values (199, 'i5uVzyp', '3dxlm3R0H', 128);
insert into students_authentications (id, login, password, student_id) values (200, 'unBL5x', 'AWIoeZa', 111);
