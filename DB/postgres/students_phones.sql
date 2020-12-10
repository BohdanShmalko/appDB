--  id           | bigint                |           | not null | nextval('students_phones_id_seq'::regclass)
--  phone_number | character varying(13) |           | not null |
--  sign         | text                  |           | not null |
--  student_id   | bigint                |           | not null |

CREATE TABLE students_phones
(
    id serial NOT NULL PRIMARY KEY,
    phone_number  CHAR(10)             not null unique,
    sign          varchar(50)                   null,
    student_id    INT NOT NULL REFERENCES students (id)
);

--DELETE FROM students_phones WHERE id <> 0;
-- INSERT INTO students_phones (phone_number, sign, student_id ) 
-- VALUES ('0959305377', 'work', 1);

insert into student_id (id, phone_number, sign, student_id) values (1, '2577255901', 'Mauris lacinia sapien quis libero.', 76);
insert into student_id (id, phone_number, sign, student_id) values (2, '8634978955', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 137);
insert into student_id (id, phone_number, sign, student_id) values (3, '5697389845', 'Praesent id massa id nisl venenatis lacinia.', 8);
insert into student_id (id, phone_number, sign, student_id) values (4, '7732897251', 'Vestibulum rutrum rutrum neque.', 44);
insert into student_id (id, phone_number, sign, student_id) values (5, '7555130614', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.', 87);
insert into student_id (id, phone_number, sign, student_id) values (6, '3235004522', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante.', 18);
insert into student_id (id, phone_number, sign, student_id) values (7, '9874856840', 'Suspendisse potenti. Nullam porttitor lacus at turpis.', 197);
insert into student_id (id, phone_number, sign, student_id) values (8, '3042557613', 'Proin interdum mauris non ligula pellentesque ultrices.', 137);
insert into student_id (id, phone_number, sign, student_id) values (9, '9981230978', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.', 155);
insert into student_id (id, phone_number, sign, student_id) values (10, '4286105387', 'Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 79);
insert into student_id (id, phone_number, sign, student_id) values (11, '6057602288', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.', 112);
insert into student_id (id, phone_number, sign, student_id) values (12, '4751315589', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 157);
insert into student_id (id, phone_number, sign, student_id) values (13, '2503977840', 'Nam tristique tortor eu pede.', 129);
insert into student_id (id, phone_number, sign, student_id) values (14, '4189328005', 'Cras pellentesque volutpat dui.', 138);
insert into student_id (id, phone_number, sign, student_id) values (15, '6488570516', 'Proin at turpis a pede posuere nonummy.', 114);
insert into student_id (id, phone_number, sign, student_id) values (16, '1175655381', 'Morbi vel lectus in quam fringilla rhoncus. Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', 180);
insert into student_id (id, phone_number, sign, student_id) values (17, '6718034311', 'Pellentesque at nulla. Suspendisse potenti.', 199);
insert into student_id (id, phone_number, sign, student_id) values (18, '4071904777', 'Aliquam quis turpis eget elit sodales scelerisque.', 192);
insert into student_id (id, phone_number, sign, student_id) values (19, '3338941615', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 68);
insert into student_id (id, phone_number, sign, student_id) values (20, '9739116111', 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.', 59);
insert into student_id (id, phone_number, sign, student_id) values (21, '4596619833', 'Maecenas pulvinar lobortis est.', 97);
insert into student_id (id, phone_number, sign, student_id) values (22, '7027886657', 'Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 174);
insert into student_id (id, phone_number, sign, student_id) values (23, '9816467282', 'In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 97);
insert into student_id (id, phone_number, sign, student_id) values (24, '9966107777', 'In sagittis dui vel nisl.', 78);
insert into student_id (id, phone_number, sign, student_id) values (25, '8382042932', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 160);
insert into student_id (id, phone_number, sign, student_id) values (26, '5207715442', 'Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor.', 173);
insert into student_id (id, phone_number, sign, student_id) values (27, '8084847202', 'Integer ac neque.', 81);
insert into student_id (id, phone_number, sign, student_id) values (28, '7295707412', 'Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante.', 93);
insert into student_id (id, phone_number, sign, student_id) values (29, '1408351864', 'Aenean lectus. Pellentesque eget nunc.', 72);
insert into student_id (id, phone_number, sign, student_id) values (30, '8603280329', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 149);
insert into student_id (id, phone_number, sign, student_id) values (31, '2374278694', 'Integer non velit.', 174);
insert into student_id (id, phone_number, sign, student_id) values (32, '4049082191', 'Aliquam sit amet diam in magna bibendum imperdiet.', 127);
insert into student_id (id, phone_number, sign, student_id) values (33, '9633107125', 'Morbi quis tortor id nulla ultrices aliquet.', 9);
insert into student_id (id, phone_number, sign, student_id) values (34, '5502620008', 'In congue.', 27);
insert into student_id (id, phone_number, sign, student_id) values (35, '1582998969', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', 135);
insert into student_id (id, phone_number, sign, student_id) values (36, '1534157755', 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.', 100);
insert into student_id (id, phone_number, sign, student_id) values (37, '9682885271', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 39);
insert into student_id (id, phone_number, sign, student_id) values (38, '7509250520', 'Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc.', 102);
insert into student_id (id, phone_number, sign, student_id) values (39, '5451388779', 'Morbi ut odio. Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo.', 91);
insert into student_id (id, phone_number, sign, student_id) values (40, '6269060503', 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', 178);
insert into student_id (id, phone_number, sign, student_id) values (41, '3085572284', 'Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi.', 111);
insert into student_id (id, phone_number, sign, student_id) values (42, '5577781673', 'Vivamus vel nulla eget eros elementum pellentesque. Quisque porta volutpat erat.', 120);
insert into student_id (id, phone_number, sign, student_id) values (43, '8319581097', 'Nulla nisl. Nunc nisl.', 185);
insert into student_id (id, phone_number, sign, student_id) values (44, '9472474943', 'Morbi a ipsum. Integer a nibh.', 128);
insert into student_id (id, phone_number, sign, student_id) values (45, '9511347358', 'Duis bibendum.', 111);
insert into student_id (id, phone_number, sign, student_id) values (46, '9958755343', 'Sed accumsan felis.', 46);
insert into student_id (id, phone_number, sign, student_id) values (47, '8455740545', 'Donec quis orci eget orci vehicula condimentum. Curabitur in libero ut massa volutpat convallis.', 109);
insert into student_id (id, phone_number, sign, student_id) values (48, '3125472814', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 75);
insert into student_id (id, phone_number, sign, student_id) values (49, '7064367363', 'Nulla facilisi.', 96);
insert into student_id (id, phone_number, sign, student_id) values (50, '4871141138', 'Vivamus tortor.', 60);
insert into student_id (id, phone_number, sign, student_id) values (51, '7061868988', 'Sed ante.', 117);
insert into student_id (id, phone_number, sign, student_id) values (52, '7653374075', 'Cras in purus eu magna vulputate luctus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 44);
insert into student_id (id, phone_number, sign, student_id) values (53, '2535864643', 'Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl.', 199);
insert into student_id (id, phone_number, sign, student_id) values (54, '1858962728', 'In est risus, auctor sed, tristique in, tempus sit amet, sem.', 168);
insert into student_id (id, phone_number, sign, student_id) values (55, '1512298577', 'Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', 68);
insert into student_id (id, phone_number, sign, student_id) values (56, '6647881492', 'Phasellus sit amet erat.', 190);
insert into student_id (id, phone_number, sign, student_id) values (57, '2653516324', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 118);
insert into student_id (id, phone_number, sign, student_id) values (58, '9075861358', 'Duis bibendum. Morbi non quam nec dui luctus rutrum.', 84);
insert into student_id (id, phone_number, sign, student_id) values (59, '3607993879', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', 177);
insert into student_id (id, phone_number, sign, student_id) values (60, '1742255981', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', 149);
insert into student_id (id, phone_number, sign, student_id) values (61, '3482333114', 'Sed ante.', 145);
insert into student_id (id, phone_number, sign, student_id) values (62, '1271961553', 'Ut tellus.', 197);
insert into student_id (id, phone_number, sign, student_id) values (63, '5835960276', 'Proin risus.', 94);
insert into student_id (id, phone_number, sign, student_id) values (64, '9981520104', 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam. Nam tristique tortor eu pede.', 35);
insert into student_id (id, phone_number, sign, student_id) values (65, '9845089777', 'Proin at turpis a pede posuere nonummy.', 134);
insert into student_id (id, phone_number, sign, student_id) values (66, '7615559039', 'Ut tellus. Nulla ut erat id mauris vulputate elementum.', 112);
insert into student_id (id, phone_number, sign, student_id) values (67, '1746896087', 'Morbi ut odio.', 11);
insert into student_id (id, phone_number, sign, student_id) values (68, '5246059354', 'Aenean lectus.', 30);
insert into student_id (id, phone_number, sign, student_id) values (69, '8968300411', 'Integer non velit.', 70);
insert into student_id (id, phone_number, sign, student_id) values (70, '2681665914', 'Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis. Fusce posuere felis sed lacus.', 156);
insert into student_id (id, phone_number, sign, student_id) values (71, '1498469432', 'Praesent blandit lacinia erat.', 89);
insert into student_id (id, phone_number, sign, student_id) values (72, '7724194834', 'Aenean sit amet justo. Morbi ut odio.', 125);
insert into student_id (id, phone_number, sign, student_id) values (73, '8593939227', 'Aenean sit amet justo. Morbi ut odio.', 182);
insert into student_id (id, phone_number, sign, student_id) values (74, '5068016472', 'Praesent id massa id nisl venenatis lacinia.', 85);
insert into student_id (id, phone_number, sign, student_id) values (75, '1787112880', 'Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.', 173);
insert into student_id (id, phone_number, sign, student_id) values (76, '2867546602', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 125);
insert into student_id (id, phone_number, sign, student_id) values (77, '4846756834', 'Curabitur convallis. Duis consequat dui nec nisi volutpat eleifend.', 58);
insert into student_id (id, phone_number, sign, student_id) values (78, '7274358456', 'Nulla justo.', 94);
insert into student_id (id, phone_number, sign, student_id) values (79, '7811950112', 'Nunc nisl.', 83);
insert into student_id (id, phone_number, sign, student_id) values (80, '7178597071', 'Vivamus vestibulum sagittis sapien.', 3);
insert into student_id (id, phone_number, sign, student_id) values (81, '8374986266', 'Quisque ut erat.', 48);
insert into student_id (id, phone_number, sign, student_id) values (82, '9221690050', 'Nulla suscipit ligula in lacus. Curabitur at ipsum ac tellus semper interdum.', 126);
insert into student_id (id, phone_number, sign, student_id) values (83, '7283073561', 'Aliquam erat volutpat. In congue.', 193);
insert into student_id (id, phone_number, sign, student_id) values (84, '2821995537', 'Etiam justo.', 41);
insert into student_id (id, phone_number, sign, student_id) values (85, '4724014173', 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 105);
insert into student_id (id, phone_number, sign, student_id) values (86, '5133985446', 'Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.', 160);
insert into student_id (id, phone_number, sign, student_id) values (87, '1077933080', 'Proin at turpis a pede posuere nonummy.', 25);
insert into student_id (id, phone_number, sign, student_id) values (88, '4042752106', 'Integer a nibh.', 81);
insert into student_id (id, phone_number, sign, student_id) values (89, '2578344349', 'Nulla ut erat id mauris vulputate elementum. Nullam varius.', 194);
insert into student_id (id, phone_number, sign, student_id) values (90, '6175823451', 'Curabitur convallis.', 55);
insert into student_id (id, phone_number, sign, student_id) values (91, '4092441727', 'Praesent blandit lacinia erat.', 195);
insert into student_id (id, phone_number, sign, student_id) values (92, '6684362559', 'Integer non velit.', 178);
insert into student_id (id, phone_number, sign, student_id) values (93, '5931246687', 'Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.', 100);
insert into student_id (id, phone_number, sign, student_id) values (94, '1331454624', 'Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 37);
insert into student_id (id, phone_number, sign, student_id) values (95, '1992336326', 'Curabitur gravida nisi at nibh. In hac habitasse platea dictumst.', 68);
insert into student_id (id, phone_number, sign, student_id) values (96, '8346473396', 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 21);
insert into student_id (id, phone_number, sign, student_id) values (97, '6299421186', 'Duis ac nibh.', 61);
insert into student_id (id, phone_number, sign, student_id) values (98, '8366670922', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', 74);
insert into student_id (id, phone_number, sign, student_id) values (99, '7284368247', 'Mauris ullamcorper purus sit amet nulla.', 172);
insert into student_id (id, phone_number, sign, student_id) values (100, '3257313092', 'Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.', 37);
insert into student_id (id, phone_number, sign, student_id) values (101, '7288199950', 'Curabitur gravida nisi at nibh.', 96);
insert into student_id (id, phone_number, sign, student_id) values (102, '1469112227', 'Nullam molestie nibh in lectus. Pellentesque at nulla.', 67);
insert into student_id (id, phone_number, sign, student_id) values (103, '7577342997', 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 60);
insert into student_id (id, phone_number, sign, student_id) values (104, '9872765504', 'In sagittis dui vel nisl.', 138);
insert into student_id (id, phone_number, sign, student_id) values (105, '7188417991', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 188);
insert into student_id (id, phone_number, sign, student_id) values (106, '3958962468', 'Integer tincidunt ante vel ipsum.', 47);
insert into student_id (id, phone_number, sign, student_id) values (107, '8112104230', 'In est risus, auctor sed, tristique in, tempus sit amet, sem. Fusce consequat.', 178);
insert into student_id (id, phone_number, sign, student_id) values (108, '6355234853', 'Nam nulla.', 158);
insert into student_id (id, phone_number, sign, student_id) values (109, '8224445293', 'Etiam vel augue.', 80);
insert into student_id (id, phone_number, sign, student_id) values (110, '9754203417', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', 196);
insert into student_id (id, phone_number, sign, student_id) values (111, '3627716539', 'Sed vel enim sit amet nunc viverra dapibus.', 88);
insert into student_id (id, phone_number, sign, student_id) values (112, '7788831008', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est.', 26);
insert into student_id (id, phone_number, sign, student_id) values (113, '1736864991', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 56);
insert into student_id (id, phone_number, sign, student_id) values (114, '4409095462', 'Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.', 158);
insert into student_id (id, phone_number, sign, student_id) values (115, '8385210832', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 148);
insert into student_id (id, phone_number, sign, student_id) values (116, '9457698726', 'Nulla tempus.', 97);
insert into student_id (id, phone_number, sign, student_id) values (117, '7084555339', 'Fusce consequat.', 78);
insert into student_id (id, phone_number, sign, student_id) values (118, '5353389116', 'Nunc nisl. Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 114);
insert into student_id (id, phone_number, sign, student_id) values (119, '7004517076', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', 137);
insert into student_id (id, phone_number, sign, student_id) values (120, '4493237005', 'In hac habitasse platea dictumst.', 5);
insert into student_id (id, phone_number, sign, student_id) values (121, '2863277623', 'Morbi porttitor lorem id ligula.', 6);
insert into student_id (id, phone_number, sign, student_id) values (122, '3321822676', 'Integer tincidunt ante vel ipsum.', 136);
insert into student_id (id, phone_number, sign, student_id) values (123, '7887240512', 'Etiam justo.', 12);
insert into student_id (id, phone_number, sign, student_id) values (124, '6255833903', 'Morbi porttitor lorem id ligula.', 101);
insert into student_id (id, phone_number, sign, student_id) values (125, '7516303121', 'Integer ac leo.', 145);
insert into student_id (id, phone_number, sign, student_id) values (126, '2642548493', 'Donec ut dolor.', 62);
insert into student_id (id, phone_number, sign, student_id) values (127, '5693705772', 'In eleifend quam a odio.', 156);
insert into student_id (id, phone_number, sign, student_id) values (128, '7663165604', 'Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.', 39);
insert into student_id (id, phone_number, sign, student_id) values (129, '5257873674', 'Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.', 110);
insert into student_id (id, phone_number, sign, student_id) values (130, '1588376545', 'In hac habitasse platea dictumst.', 66);
insert into student_id (id, phone_number, sign, student_id) values (131, '6686412263', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.', 174);
insert into student_id (id, phone_number, sign, student_id) values (132, '8447195886', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis.', 118);
insert into student_id (id, phone_number, sign, student_id) values (133, '5778093329', 'Ut tellus. Nulla ut erat id mauris vulputate elementum.', 106);
insert into student_id (id, phone_number, sign, student_id) values (134, '1725982763', 'Integer a nibh.', 7);
insert into student_id (id, phone_number, sign, student_id) values (135, '8293172593', 'Donec quis orci eget orci vehicula condimentum.', 166);
insert into student_id (id, phone_number, sign, student_id) values (136, '1918272093', 'In hac habitasse platea dictumst. Etiam faucibus cursus urna.', 64);
insert into student_id (id, phone_number, sign, student_id) values (137, '8804977757', 'In congue. Etiam justo.', 127);
insert into student_id (id, phone_number, sign, student_id) values (138, '9429091957', 'In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', 88);
insert into student_id (id, phone_number, sign, student_id) values (139, '7892133061', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.', 116);
insert into student_id (id, phone_number, sign, student_id) values (140, '4397162596', 'Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci.', 119);
insert into student_id (id, phone_number, sign, student_id) values (141, '9595775025', 'Donec dapibus.', 169);
insert into student_id (id, phone_number, sign, student_id) values (142, '9924392280', 'Nunc rhoncus dui vel sem. Sed sagittis.', 67);
insert into student_id (id, phone_number, sign, student_id) values (143, '3982459790', 'Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', 9);
insert into student_id (id, phone_number, sign, student_id) values (144, '8887936311', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 14);
insert into student_id (id, phone_number, sign, student_id) values (145, '8485144151', 'Cras in purus eu magna vulputate luctus.', 137);
insert into student_id (id, phone_number, sign, student_id) values (146, '4617173821', 'Nullam molestie nibh in lectus. Pellentesque at nulla.', 158);
insert into student_id (id, phone_number, sign, student_id) values (147, '8049322024', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus.', 144);
insert into student_id (id, phone_number, sign, student_id) values (148, '3857851189', 'In quis justo.', 21);
insert into student_id (id, phone_number, sign, student_id) values (149, '1673438386', 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 183);
insert into student_id (id, phone_number, sign, student_id) values (150, '1848240482', 'Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci.', 116);
insert into student_id (id, phone_number, sign, student_id) values (151, '3621326636', 'Nam tristique tortor eu pede.', 95);
insert into student_id (id, phone_number, sign, student_id) values (152, '1413223831', 'Vivamus tortor.', 99);
insert into student_id (id, phone_number, sign, student_id) values (153, '7811777301', 'In quis justo.', 73);
insert into student_id (id, phone_number, sign, student_id) values (154, '1505336020', 'Aenean auctor gravida sem.', 33);
insert into student_id (id, phone_number, sign, student_id) values (155, '9194701079', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus.', 160);
insert into student_id (id, phone_number, sign, student_id) values (156, '6635312644', 'Aliquam erat volutpat.', 26);
insert into student_id (id, phone_number, sign, student_id) values (157, '3356986934', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa.', 135);
insert into student_id (id, phone_number, sign, student_id) values (158, '3257716010', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis.', 71);
insert into student_id (id, phone_number, sign, student_id) values (159, '2199996935', 'In est risus, auctor sed, tristique in, tempus sit amet, sem.', 119);
insert into student_id (id, phone_number, sign, student_id) values (160, '4525207846', 'Nullam porttitor lacus at turpis.', 1);
insert into student_id (id, phone_number, sign, student_id) values (161, '4561340330', 'Sed ante. Vivamus tortor.', 97);
insert into student_id (id, phone_number, sign, student_id) values (162, '1007876944', 'In sagittis dui vel nisl.', 48);
insert into student_id (id, phone_number, sign, student_id) values (163, '4137787649', 'In quis justo.', 44);
insert into student_id (id, phone_number, sign, student_id) values (164, '3453432272', 'Integer a nibh. In quis justo.', 96);
insert into student_id (id, phone_number, sign, student_id) values (165, '4547256594', 'Fusce consequat. Nulla nisl.', 138);
insert into student_id (id, phone_number, sign, student_id) values (166, '9662672565', 'Morbi non quam nec dui luctus rutrum.', 163);
insert into student_id (id, phone_number, sign, student_id) values (167, '2344111668', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien.', 76);
insert into student_id (id, phone_number, sign, student_id) values (168, '3096670602', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 16);
insert into student_id (id, phone_number, sign, student_id) values (169, '4253810108', 'In eleifend quam a odio. In hac habitasse platea dictumst.', 150);
insert into student_id (id, phone_number, sign, student_id) values (170, '9948258693', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 15);
insert into student_id (id, phone_number, sign, student_id) values (171, '1706902225', 'Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue.', 179);
insert into student_id (id, phone_number, sign, student_id) values (172, '7957983895', 'Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.', 174);
insert into student_id (id, phone_number, sign, student_id) values (173, '3613620957', 'Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla.', 83);
insert into student_id (id, phone_number, sign, student_id) values (174, '9022256977', 'Etiam justo.', 86);
insert into student_id (id, phone_number, sign, student_id) values (175, '6339183113', 'Praesent lectus.', 21);
insert into student_id (id, phone_number, sign, student_id) values (176, '5174360157', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio.', 196);
insert into student_id (id, phone_number, sign, student_id) values (177, '6856091781', 'Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus.', 104);
insert into student_id (id, phone_number, sign, student_id) values (178, '7501288206', 'Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 187);
insert into student_id (id, phone_number, sign, student_id) values (179, '2421803525', 'In est risus, auctor sed, tristique in, tempus sit amet, sem.', 99);
insert into student_id (id, phone_number, sign, student_id) values (180, '5135690782', 'In hac habitasse platea dictumst. Maecenas ut massa quis augue luctus tincidunt.', 190);
insert into student_id (id, phone_number, sign, student_id) values (181, '6153719700', 'Donec vitae nisi. Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla.', 57);
insert into student_id (id, phone_number, sign, student_id) values (182, '7072461217', 'In quis justo.', 127);
insert into student_id (id, phone_number, sign, student_id) values (183, '8354550017', 'Maecenas ut massa quis augue luctus tincidunt.', 69);
insert into student_id (id, phone_number, sign, student_id) values (184, '9798316909', 'Suspendisse ornare consequat lectus.', 154);
insert into student_id (id, phone_number, sign, student_id) values (185, '1368753738', 'Suspendisse potenti. Cras in purus eu magna vulputate luctus.', 97);
insert into student_id (id, phone_number, sign, student_id) values (186, '1831607018', 'Integer non velit. Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue.', 123);
insert into student_id (id, phone_number, sign, student_id) values (187, '8699264134', 'Quisque id justo sit amet sapien dignissim vestibulum.', 85);
insert into student_id (id, phone_number, sign, student_id) values (188, '2343016948', 'Nulla tempus.', 191);
insert into student_id (id, phone_number, sign, student_id) values (189, '5716758497', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo.', 121);
insert into student_id (id, phone_number, sign, student_id) values (190, '4308766430', 'Nulla suscipit ligula in lacus.', 44);
insert into student_id (id, phone_number, sign, student_id) values (191, '9152827285', 'Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.', 93);
insert into student_id (id, phone_number, sign, student_id) values (192, '5494242654', 'Ut at dolor quis odio consequat varius.', 179);
insert into student_id (id, phone_number, sign, student_id) values (193, '3438666784', 'Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.', 86);
insert into student_id (id, phone_number, sign, student_id) values (194, '7424368871', 'Suspendisse potenti.', 76);
insert into student_id (id, phone_number, sign, student_id) values (195, '4083922543', 'Fusce posuere felis sed lacus.', 126);
insert into student_id (id, phone_number, sign, student_id) values (196, '4006642694', 'Proin leo odio, porttitor id, consequat in, consequat ut, nulla.', 68);
insert into student_id (id, phone_number, sign, student_id) values (197, '5204780773', 'Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.', 135);
insert into student_id (id, phone_number, sign, student_id) values (198, '3434898641', 'Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem. Integer tincidunt ante vel ipsum.', 188);
insert into student_id (id, phone_number, sign, student_id) values (199, '2164021792', 'Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.', 36);
insert into student_id (id, phone_number, sign, student_id) values (200, '3545080516', 'Curabitur in libero ut massa volutpat convallis.', 74);
