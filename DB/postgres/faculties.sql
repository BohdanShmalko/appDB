CREATE TABLE faculties
(
    id serial NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dean_name VARCHAR(50) NOT NULL,
    dean_lastname VARCHAR(50) NOT NULL,
    dean_fathername VARCHAR(50) NOT NULL
);

insert into faculties (id, name, dean) values (1, 'kscrowton0', 'Kincaid');
insert into faculties (id, name, dean) values (2, 'mputtick1', 'Mikol');
insert into faculties (id, name, dean) values (3, 'adreus2', 'Antin');
insert into faculties (id, name, dean) values (4, 'acassell3', 'Alexandros');
insert into faculties (id, name, dean) values (5, 'hgrellis4', 'Heall');
insert into faculties (id, name, dean) values (6, 'ljagiela5', 'Lorelle');
insert into faculties (id, name, dean) values (7, 'hpirt6', 'Hatti');
insert into faculties (id, name, dean) values (8, 'khanshawe7', 'Katinka');
insert into faculties (id, name, dean) values (9, 'snortheast8', 'Stefano');
insert into faculties (id, name, dean) values (10, 'dcharker9', 'Daniela');