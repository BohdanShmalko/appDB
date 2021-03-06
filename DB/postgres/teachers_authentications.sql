--  id         | bigint                |           | not null | nextval('teachers_authentications_id_seq'::regclass)
--  login      | character varying(50) |           | not null |
--  password   | character varying(50) |           | not null |
--  teacher_id | bigint                |           | not null |


-- DROP TABLE teachers_authentications;

CREATE TABLE teachers_authentications
(
    id serial NOT NULL PRIMARY KEY,
    login VARCHAR(100)  NOT NULL unique,
    password VARCHAR(100)  NOT NULL unique,
    teacher_id INT NOT NULL REFERENCES teachers (id)
);

--DELETE FROM teachers_authentications WHERE id <> 0;
--INSERT INTO teachers_authentications (id, ) VALUES (1, );
insert into MOCK_DATA (id, login, password, teacher_id) values (1, 'WhrkVE', 'dG5Z0CLOHH', 61);
insert into MOCK_DATA (id, login, password, teacher_id) values (2, '9uGXLj', 'jdJ8dxmw2v', 8);
insert into MOCK_DATA (id, login, password, teacher_id) values (3, 'OaGg6XKG', 'IenOXaR0', 138);
insert into MOCK_DATA (id, login, password, teacher_id) values (4, 'k1Cgbck', 'ydhZDzSKT5tn', 185);
insert into MOCK_DATA (id, login, password, teacher_id) values (5, '7MMmOG3bdr', '2fCiZnsD', 78);
insert into MOCK_DATA (id, login, password, teacher_id) values (6, 'S481JcX8vu', 'K4svZNYOIoT', 132);
insert into MOCK_DATA (id, login, password, teacher_id) values (7, 'RQv4jsWoR', 'u5g2BE', 66);
insert into MOCK_DATA (id, login, password, teacher_id) values (8, 'ni0tL5VnfydV', 'WlFR7MBVVz', 64);
insert into MOCK_DATA (id, login, password, teacher_id) values (9, 'oMUVqS4QtiHj', 'xrtVG19F5bJk', 175);
insert into MOCK_DATA (id, login, password, teacher_id) values (10, '3NLBHTk46', 'CQBQeguLUdgO', 180);
insert into MOCK_DATA (id, login, password, teacher_id) values (11, 'URifWBhle', '4j19PEikx3Al', 137);
insert into MOCK_DATA (id, login, password, teacher_id) values (12, '65pyy1g', '32prnzMVf', 92);
insert into MOCK_DATA (id, login, password, teacher_id) values (13, 'PUBuvzXPI30E', 'vgQ2xHCvjlw', 54);
insert into MOCK_DATA (id, login, password, teacher_id) values (14, 'jXouUH', 'T0wWfRkRHXT', 64);
insert into MOCK_DATA (id, login, password, teacher_id) values (15, '0J1uW8HUtL', 'yTB0cUbV1', 71);
insert into MOCK_DATA (id, login, password, teacher_id) values (16, 'wegXV3kA9u', 'Rau3uKh', 132);
insert into MOCK_DATA (id, login, password, teacher_id) values (17, 'edrEktm1C', 'ccPTqyqQCau', 191);
insert into MOCK_DATA (id, login, password, teacher_id) values (18, '8zUHD5', 'NM0ntcPEj', 166);
insert into MOCK_DATA (id, login, password, teacher_id) values (19, 'k3BRaBk9ZJN', 'GApq4Xn4vu', 127);
insert into MOCK_DATA (id, login, password, teacher_id) values (20, 'U6xGA54d', 'ES9aZWVK', 140);
insert into MOCK_DATA (id, login, password, teacher_id) values (21, 'xhRJcFKcz', 'HQpGE8D7oe', 175);
insert into MOCK_DATA (id, login, password, teacher_id) values (22, '6wO4YMBMV', 'gF5vVRwNu', 195);
insert into MOCK_DATA (id, login, password, teacher_id) values (23, '44F5scESJ', 'qcyUajdqhboA', 99);
insert into MOCK_DATA (id, login, password, teacher_id) values (24, 'zKtu5Lsy2S6', 'CZ95yqqTEfE', 152);
insert into MOCK_DATA (id, login, password, teacher_id) values (25, 'KPYWvE', 'hcXzHcIfLPTu', 86);
insert into MOCK_DATA (id, login, password, teacher_id) values (26, '6NZQLD', 'H5rv0K6QMMoN', 75);
insert into MOCK_DATA (id, login, password, teacher_id) values (27, 'asqPhDRjhRx', 'mFdrLpf', 100);
insert into MOCK_DATA (id, login, password, teacher_id) values (28, 'jzQmb0O', 'UlD7Pcz', 29);
insert into MOCK_DATA (id, login, password, teacher_id) values (29, 'uaMa1C', 'rQHaxoW', 156);
insert into MOCK_DATA (id, login, password, teacher_id) values (30, 'eV35dC', 'ZlZY3wV5StLe', 105);
insert into MOCK_DATA (id, login, password, teacher_id) values (31, 'TiNunHE3', 'snu6EpasWpY', 20);
insert into MOCK_DATA (id, login, password, teacher_id) values (32, 'OxmIqJUG', 'bbvXweNk', 178);
insert into MOCK_DATA (id, login, password, teacher_id) values (33, '34TfDuVoDVN', '97KlVLD9R', 14);
insert into MOCK_DATA (id, login, password, teacher_id) values (34, 'aGlc7db8', 'zTfYaP', 117);
insert into MOCK_DATA (id, login, password, teacher_id) values (35, 'n7FkpN', 'sR42KY', 31);
insert into MOCK_DATA (id, login, password, teacher_id) values (36, '7U1vnLYf2x', 'haZR6G6jDq', 65);
insert into MOCK_DATA (id, login, password, teacher_id) values (37, 'kV7pSb5', 'GXhRWCHicI', 193);
insert into MOCK_DATA (id, login, password, teacher_id) values (38, 'fIkjacYn', '9gxjW5A2', 57);
insert into MOCK_DATA (id, login, password, teacher_id) values (39, 'EhOMjiUKP', 'lkOyTws', 176);
insert into MOCK_DATA (id, login, password, teacher_id) values (40, 'LebKLk4H', '6rJEQhQC', 49);
insert into MOCK_DATA (id, login, password, teacher_id) values (41, 'hGtVh5Doo', 'UXbxqYO', 25);
insert into MOCK_DATA (id, login, password, teacher_id) values (42, '9r66oo', 'AUdFpL', 62);
insert into MOCK_DATA (id, login, password, teacher_id) values (43, 'RMybsgOJh', 'SwtJCk', 128);
insert into MOCK_DATA (id, login, password, teacher_id) values (44, 'hY5Twn', 'WODtolyOCKv', 132);
insert into MOCK_DATA (id, login, password, teacher_id) values (45, 'aAHyfLW1U5pD', 'k0Fbmn', 190);
insert into MOCK_DATA (id, login, password, teacher_id) values (46, 'oEv8WES34few', 'Y8HDZzjpnfR', 75);
insert into MOCK_DATA (id, login, password, teacher_id) values (47, 'WCDARNxd', 'XNNXVnfm', 38);
insert into MOCK_DATA (id, login, password, teacher_id) values (48, 'uE1ASG', '7xDtA0166', 172);
insert into MOCK_DATA (id, login, password, teacher_id) values (49, 'UBKaRU', 'vObfUT4OmWOs', 86);
insert into MOCK_DATA (id, login, password, teacher_id) values (50, 'CCLSEC6tviw', 'cMTZIiMMal', 29);
insert into MOCK_DATA (id, login, password, teacher_id) values (51, 'rM6kIOw4', '4isIbMZ2OQxT', 178);
insert into MOCK_DATA (id, login, password, teacher_id) values (52, 'dxtKqo', 'TCGame2r6o', 74);
insert into MOCK_DATA (id, login, password, teacher_id) values (53, 'N71T4pLz9', 'UNTzgs', 187);
insert into MOCK_DATA (id, login, password, teacher_id) values (54, 'XBqKdM', 'oCjbyteAkz3X', 185);
insert into MOCK_DATA (id, login, password, teacher_id) values (55, 'FjIWTNJp', 'xDwy7k', 176);
insert into MOCK_DATA (id, login, password, teacher_id) values (56, 'EzIonQ8Ussn', 'jnilIcOlJjJ', 103);
insert into MOCK_DATA (id, login, password, teacher_id) values (57, 'u6PjffBoK', 'rNkcDr21bg', 13);
insert into MOCK_DATA (id, login, password, teacher_id) values (58, '3sPBDEaNWRS', 'y1TdgN', 173);
insert into MOCK_DATA (id, login, password, teacher_id) values (59, 'vwuS2AY', 'BlvFLK9a', 84);
insert into MOCK_DATA (id, login, password, teacher_id) values (60, '3Z4bWVcgPkrd', 'WRJ62A4f', 88);
insert into MOCK_DATA (id, login, password, teacher_id) values (61, 'L33SCYqFvS', 'rtPpw3oE3U', 75);
insert into MOCK_DATA (id, login, password, teacher_id) values (62, 'fIlrwlU', 'hNNvUHJKvsNB', 143);
insert into MOCK_DATA (id, login, password, teacher_id) values (63, 'NycAkwDV', 'lUUaVxP', 151);
insert into MOCK_DATA (id, login, password, teacher_id) values (64, 'RyL4TW4', 'Kho9GrHS', 163);
insert into MOCK_DATA (id, login, password, teacher_id) values (65, 'KuTMdCrzWx', 'g93EGPEKD', 70);
insert into MOCK_DATA (id, login, password, teacher_id) values (66, 'U3IUqzX', 'MaIE8s', 192);
insert into MOCK_DATA (id, login, password, teacher_id) values (67, '0deGVL6', '3lT6tdL', 175);
insert into MOCK_DATA (id, login, password, teacher_id) values (68, '1Zisut6Ieao1', 'aqlmJm', 25);
insert into MOCK_DATA (id, login, password, teacher_id) values (69, 'BM7TJWhlj', 'sWk73kCF', 25);
insert into MOCK_DATA (id, login, password, teacher_id) values (70, 'kHiPFRou', 'OGyCfV', 1);
insert into MOCK_DATA (id, login, password, teacher_id) values (71, 'op72W3fHZdth', 'ps9CXhBIJ', 31);
insert into MOCK_DATA (id, login, password, teacher_id) values (72, '1gtKWW6pw', '6RbfG4WEbxa', 76);
insert into MOCK_DATA (id, login, password, teacher_id) values (73, 't4vS43', 'jO5N28wBI', 117);
insert into MOCK_DATA (id, login, password, teacher_id) values (74, 'Jvg3rD', 'dKht1Dd', 150);
insert into MOCK_DATA (id, login, password, teacher_id) values (75, 'PgDgWw5mVf0q', 'PUc6UzM', 59);
insert into MOCK_DATA (id, login, password, teacher_id) values (76, 'g1sUryAfIN2', 'ji5NcSY7', 35);
insert into MOCK_DATA (id, login, password, teacher_id) values (77, 'QZytaNtKph42', 'aKmVRgbnZ9b', 145);
insert into MOCK_DATA (id, login, password, teacher_id) values (78, '3tj4svgxFDSh', 'AUieMqQPpE', 15);
insert into MOCK_DATA (id, login, password, teacher_id) values (79, 'uOHGw03zylIp', '1XecDp', 107);
insert into MOCK_DATA (id, login, password, teacher_id) values (80, 'OZeZt9YmBXU', 'gRbU8D129', 104);
insert into MOCK_DATA (id, login, password, teacher_id) values (81, 'mzcqBkHFQNb', '64xE1gQ69Jh', 178);
insert into MOCK_DATA (id, login, password, teacher_id) values (82, '6SpTmX', 'WpTWzKRJS', 18);
insert into MOCK_DATA (id, login, password, teacher_id) values (83, 't7OTHiCQIiLs', 'O0fs4qE5fd', 81);
insert into MOCK_DATA (id, login, password, teacher_id) values (84, 'kniZA6', 'cXz6ISd', 112);
insert into MOCK_DATA (id, login, password, teacher_id) values (85, 'S2V91gxo', 'aauzM5oohK', 71);
insert into MOCK_DATA (id, login, password, teacher_id) values (86, '5I5wvOYP9nG', 'jjKHMDmn', 156);
insert into MOCK_DATA (id, login, password, teacher_id) values (87, 'q06zpZSl', '79jwkn', 190);
insert into MOCK_DATA (id, login, password, teacher_id) values (88, 'byz590xPM', 'jMhwOcIZ', 171);
insert into MOCK_DATA (id, login, password, teacher_id) values (89, '6ixAkbJ9', 'D3TTBHkgyM', 146);
insert into MOCK_DATA (id, login, password, teacher_id) values (90, 'PvNdx12', 'KauyWtgy', 124);
insert into MOCK_DATA (id, login, password, teacher_id) values (91, 'N9rrUYBO96', 'tQenbwYc5Ps', 108);
insert into MOCK_DATA (id, login, password, teacher_id) values (92, 'XbHktVuG3at7', '39fEoRRiX', 61);
insert into MOCK_DATA (id, login, password, teacher_id) values (93, 'LZqkcxIArel', 'OoJsTYu', 156);
insert into MOCK_DATA (id, login, password, teacher_id) values (94, '2kMUbO', '6OZDyH', 163);
insert into MOCK_DATA (id, login, password, teacher_id) values (95, 'TB1Wn0GFU73', 'jfXHLDvdV', 161);
insert into MOCK_DATA (id, login, password, teacher_id) values (96, 'QIbC7nNe', 'dR4yNpR0Z', 131);
insert into MOCK_DATA (id, login, password, teacher_id) values (97, 'JOZemdCF', '5exHYoT', 165);
insert into MOCK_DATA (id, login, password, teacher_id) values (98, 'MT8Nfy', 'h2aJ9t', 120);
insert into MOCK_DATA (id, login, password, teacher_id) values (99, 'VCwBso1FBx2', 'lXXdLKhQN', 192);
insert into MOCK_DATA (id, login, password, teacher_id) values (100, 'DHIVbvb8M0', 'Pc8f2E', 101);
insert into MOCK_DATA (id, login, password, teacher_id) values (101, 'lylPpFDiDgk', 'TPYqJm', 89);
insert into MOCK_DATA (id, login, password, teacher_id) values (102, 'COAyKiA', 'gObDrI0qVLu', 153);
insert into MOCK_DATA (id, login, password, teacher_id) values (103, 'SkyUlHGsx3lE', 'WZ9CJdfq5F', 79);
insert into MOCK_DATA (id, login, password, teacher_id) values (104, 'lpxLwaSoLVl', 'fKBfd3', 144);
insert into MOCK_DATA (id, login, password, teacher_id) values (105, 'dVc4yrq3WSW', '1KXn6DS38t', 51);
insert into MOCK_DATA (id, login, password, teacher_id) values (106, 'OT1506', 'S0nZwfLT4a', 77);
insert into MOCK_DATA (id, login, password, teacher_id) values (107, 'EtJpTbb', 'P5e0vO9i4a', 179);
insert into MOCK_DATA (id, login, password, teacher_id) values (108, 'WZZRQs', 'YTLwRZ2EuUog', 45);
insert into MOCK_DATA (id, login, password, teacher_id) values (109, 'j2Jpw1YM9MJA', '7emu0L', 3);
insert into MOCK_DATA (id, login, password, teacher_id) values (110, 'lVN7PciQQ1', 'lFmymYCR', 184);
insert into MOCK_DATA (id, login, password, teacher_id) values (111, 'KaD3bxbe', 'FFvKY9Wv', 200);
insert into MOCK_DATA (id, login, password, teacher_id) values (112, 'lqMYiN7n7L', 'wba5rmma5aka', 138);
insert into MOCK_DATA (id, login, password, teacher_id) values (113, 'zAman0oc', 'OdkSCf1qZC', 193);
insert into MOCK_DATA (id, login, password, teacher_id) values (114, '9cG1hPiu', 'no17eYd', 95);
insert into MOCK_DATA (id, login, password, teacher_id) values (115, 'wtNLHt10', 'kztONFezLYdW', 73);
insert into MOCK_DATA (id, login, password, teacher_id) values (116, 'XFdCTFYrq8', 'vzzftxMTIgrQ', 148);
insert into MOCK_DATA (id, login, password, teacher_id) values (117, 'zKWPy4d', 'ewLGDW', 136);
insert into MOCK_DATA (id, login, password, teacher_id) values (118, '7qLtNu', '2wENST', 81);
insert into MOCK_DATA (id, login, password, teacher_id) values (119, 'AN23M2dj9Pms', 'k4fzbpidSZ', 87);
insert into MOCK_DATA (id, login, password, teacher_id) values (120, 'Vig0jo7A', '9c0XCvynnF', 120);
insert into MOCK_DATA (id, login, password, teacher_id) values (121, '8KuQDM0Ewy', 'lEMequGZvi', 72);
insert into MOCK_DATA (id, login, password, teacher_id) values (122, 'gwnZdgo55Ts', 'pOrkmYar', 123);
insert into MOCK_DATA (id, login, password, teacher_id) values (123, 'IY8VEiQyAA', 'G64GuyGAQ7', 100);
insert into MOCK_DATA (id, login, password, teacher_id) values (124, 'fNaRwbOBHRe', 'ctFJj4bePV', 99);
insert into MOCK_DATA (id, login, password, teacher_id) values (125, 'tqJYspX', 'XSylgUw4T9A', 95);
insert into MOCK_DATA (id, login, password, teacher_id) values (126, 'TXBlUUGOpx', 'gl18wKERNi', 73);
insert into MOCK_DATA (id, login, password, teacher_id) values (127, 'B4wiT4maA', '5T2DskE8', 165);
insert into MOCK_DATA (id, login, password, teacher_id) values (128, 'qbttt27nw', '0PSsVNL4uq', 179);
insert into MOCK_DATA (id, login, password, teacher_id) values (129, '9mqqmSRGTZZm', 'zkWSkBFkQuuu', 181);
insert into MOCK_DATA (id, login, password, teacher_id) values (130, 'Fp9Akd', 'rrBova', 18);
insert into MOCK_DATA (id, login, password, teacher_id) values (131, 'wgFUnkhhr', 'wTS10FETTY', 187);
insert into MOCK_DATA (id, login, password, teacher_id) values (132, '7XJU22UkVq', '6rmqFYt', 2);
insert into MOCK_DATA (id, login, password, teacher_id) values (133, 'kJdIFx3dM8k', 'DzhLStrCLu2X', 34);
insert into MOCK_DATA (id, login, password, teacher_id) values (134, 'ApFq1k', 'YNbEL00ti7', 11);
insert into MOCK_DATA (id, login, password, teacher_id) values (135, 'QQreRE9llcpO', 'FvaeD4WAfu9', 41);
insert into MOCK_DATA (id, login, password, teacher_id) values (136, 'yvlP4y1S', 'RgXG5zJDY6R', 138);
insert into MOCK_DATA (id, login, password, teacher_id) values (137, 'X5ofJhd9', 'MXwZylvBz', 171);
insert into MOCK_DATA (id, login, password, teacher_id) values (138, '0a6zwEwwcCh', 'OTtgIsmdxfy6', 9);
insert into MOCK_DATA (id, login, password, teacher_id) values (139, 'VE6PK3Ri', 'EcT9vjXAVU', 2);
insert into MOCK_DATA (id, login, password, teacher_id) values (140, '0gLWp5', '2M9bgY', 183);
insert into MOCK_DATA (id, login, password, teacher_id) values (141, 'ci496NSysFsp', 'YBTHFur3awM', 124);
insert into MOCK_DATA (id, login, password, teacher_id) values (142, 't7N5Aj', '7SiaeZohrJTQ', 165);
insert into MOCK_DATA (id, login, password, teacher_id) values (143, '3fWrJ8Snu', 'QT2d30S', 177);
insert into MOCK_DATA (id, login, password, teacher_id) values (144, '1HOJ0x1KHZ', 'YROBSd0Je', 73);
insert into MOCK_DATA (id, login, password, teacher_id) values (145, 'dOlEyK0KVO', 'yNAJ8z', 177);
insert into MOCK_DATA (id, login, password, teacher_id) values (146, 'coQowpPLhfX8', 'Omp0SiEr', 89);
insert into MOCK_DATA (id, login, password, teacher_id) values (147, 'aDfPru20G7', 'aPhbzEGeGLL', 96);
insert into MOCK_DATA (id, login, password, teacher_id) values (148, '3bZzvi', 'FJYeoH', 27);
insert into MOCK_DATA (id, login, password, teacher_id) values (149, 'mp5RvRqGx', 'Y94PusjbSbZ', 8);
insert into MOCK_DATA (id, login, password, teacher_id) values (150, 'HV8OPtkZniR', 'hC6L8JTvaA', 176);
insert into MOCK_DATA (id, login, password, teacher_id) values (151, '5tVERwhqJWJo', 'uCsahZfwjtXu', 14);
insert into MOCK_DATA (id, login, password, teacher_id) values (152, 'JspwmMvB0h', 'G92kHgDJGNO', 136);
insert into MOCK_DATA (id, login, password, teacher_id) values (153, 'xzkBwURJ0r3v', 'TOATPIHN', 178);
insert into MOCK_DATA (id, login, password, teacher_id) values (154, '4EvwKpIw6rDL', 'Z8PvonAvun0', 143);
insert into MOCK_DATA (id, login, password, teacher_id) values (155, '5ehLahn6Xst', 'ejwHlSFkAjLr', 121);
insert into MOCK_DATA (id, login, password, teacher_id) values (156, 'mCOWWo', 'swm5MMIlfFp', 180);
insert into MOCK_DATA (id, login, password, teacher_id) values (157, '6WXHRWZQ9KE', 'vQ3xKjP5x', 175);
insert into MOCK_DATA (id, login, password, teacher_id) values (158, 'VFy298', 'EbmedX3YGJD', 84);
insert into MOCK_DATA (id, login, password, teacher_id) values (159, 'yGbAfLHS0FB8', '14TrfoW', 55);
insert into MOCK_DATA (id, login, password, teacher_id) values (160, 'cPZlFKL5M4t', 'iZ1mXj7G78a', 22);
insert into MOCK_DATA (id, login, password, teacher_id) values (161, 'w81cVPCHM', 'HMB9RdiKKsoV', 194);
insert into MOCK_DATA (id, login, password, teacher_id) values (162, 'O6wwQN3B', 'wk1JYKR5a', 84);
insert into MOCK_DATA (id, login, password, teacher_id) values (163, '5DNaQhhalSy', 'F3Yoo8p0xK', 131);
insert into MOCK_DATA (id, login, password, teacher_id) values (164, 'paneUFc95VH', '2X8ZJ1CHKe', 163);
insert into MOCK_DATA (id, login, password, teacher_id) values (165, 'IZffHW', '2fBRszC', 18);
insert into MOCK_DATA (id, login, password, teacher_id) values (166, 'rkJiQfO', 'CJOqCUQ0', 6);
insert into MOCK_DATA (id, login, password, teacher_id) values (167, 'G2xWlMl', '9O3fCTFzby8', 95);
insert into MOCK_DATA (id, login, password, teacher_id) values (168, 'u62Oma', 'NiWm2IXj1', 190);
insert into MOCK_DATA (id, login, password, teacher_id) values (169, 'iJrHpPfx1Fw', 'QavcWd', 31);
insert into MOCK_DATA (id, login, password, teacher_id) values (170, 'TaF2j0', '0Ju6mZ1TO', 121);
insert into MOCK_DATA (id, login, password, teacher_id) values (171, '4VXJw3cdu', 'byFQdg', 55);
insert into MOCK_DATA (id, login, password, teacher_id) values (172, 'WJvWj5TWVp', 'rlMpyv2', 138);
insert into MOCK_DATA (id, login, password, teacher_id) values (173, 'FL4XyBEd', 'AKw1SITU4tip', 144);
insert into MOCK_DATA (id, login, password, teacher_id) values (174, 'uGX0vdh', 'CcHGNw7g', 124);
insert into MOCK_DATA (id, login, password, teacher_id) values (175, 'SqgtkRokK', 'bqK6gHMY', 30);
insert into MOCK_DATA (id, login, password, teacher_id) values (176, 'RR7i1djfA1E9', 'suqQD9SRj', 99);
insert into MOCK_DATA (id, login, password, teacher_id) values (177, 'rli6fd', 'S3tiCp5N1', 7);
insert into MOCK_DATA (id, login, password, teacher_id) values (178, 'pBlarDDA', 'hOR8ba', 141);
insert into MOCK_DATA (id, login, password, teacher_id) values (179, 'p2hIFxSgbu', '6dupna', 42);
insert into MOCK_DATA (id, login, password, teacher_id) values (180, '2OGfAR', 'xzd9Du2', 20);
insert into MOCK_DATA (id, login, password, teacher_id) values (181, 'EJVEIemz', 'sUBkrfUfN', 25);
insert into MOCK_DATA (id, login, password, teacher_id) values (182, 'q6ZPzw97T', 'AHGHnwicbYk', 146);
insert into MOCK_DATA (id, login, password, teacher_id) values (183, 'anEyIamwtQ', '0oag8O9YUd', 17);
insert into MOCK_DATA (id, login, password, teacher_id) values (184, 'r47abfeZq', '2Pwi3RGox', 184);
insert into MOCK_DATA (id, login, password, teacher_id) values (185, 'zHrxgKKFUG', 'ltRjvh', 118);
insert into MOCK_DATA (id, login, password, teacher_id) values (186, 'XisEXdEto', 'YznbFaEvviv', 200);
insert into MOCK_DATA (id, login, password, teacher_id) values (187, 'phu7e8a6DMg', 'gkwrtrnN', 132);
insert into MOCK_DATA (id, login, password, teacher_id) values (188, 'H0X3hR1TQR2m', 'RAq4FBn6q', 198);
insert into MOCK_DATA (id, login, password, teacher_id) values (189, 'L7KiZSI', 'UisGER2fcJSx', 61);
insert into MOCK_DATA (id, login, password, teacher_id) values (190, 'HMn7hCJ9Ty3', 'F9sQJXY8S3', 35);
insert into MOCK_DATA (id, login, password, teacher_id) values (191, 'hRkNRpq7', 'dlPKpz', 40);
insert into MOCK_DATA (id, login, password, teacher_id) values (192, 'vpyW0ti', 'L8Sbrm54', 12);
insert into MOCK_DATA (id, login, password, teacher_id) values (193, 'IuSr1oTBY', 'OVuFGmYGunHc', 179);
insert into MOCK_DATA (id, login, password, teacher_id) values (194, 'Qw8k0p5U0', 'gySHV5yk', 10);
insert into MOCK_DATA (id, login, password, teacher_id) values (195, 'JxS32qdQ', 'u2mB2a6Ffzmx', 61);
insert into MOCK_DATA (id, login, password, teacher_id) values (196, 'S14HDIKk', 'MiZGc9Y', 194);
insert into MOCK_DATA (id, login, password, teacher_id) values (197, 'rl6h2fvm', 'OZh6m7MNk4hn', 109);
insert into MOCK_DATA (id, login, password, teacher_id) values (198, '6SOlo9a0GAa', 'ohQ7CRe', 77);
insert into MOCK_DATA (id, login, password, teacher_id) values (199, 'SMwSFHya06oJ', 'XxrTjhlL0k', 85);
insert into MOCK_DATA (id, login, password, teacher_id) values (200, 'dt5ZcE', 'U7ukphEyx0d', 119);

