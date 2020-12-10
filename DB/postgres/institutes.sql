CREATE TABLE institutes
(
    id serial NOT NULL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    rector_name VARCHAR(50) NOT NULL,
    rector_lastname VARCHAR(50) NOT NULL,
    rector_fathername VARCHAR(50) NOT NULL
);

insert into institutes (id, name, rector) values (1, 'Thoughtbridge', 'Pobjay');
insert into institutes (id, name, rector) values (2, 'Thoughtstorm', 'Yarrell');
insert into institutes (id, name, rector) values (3, 'Thoughtstorm', 'Boles');
insert into institutes (id, name, rector) values (4, 'Vimbo', 'Niblo');
insert into institutes (id, name, rector) values (5, 'Fivechat', 'Causton');
insert into institutes (id, name, rector) values (6, 'Zoovu', 'Widdup');
insert into institutes (id, name, rector) values (7, 'Feedfire', 'Veque');
insert into institutes (id, name, rector) values (8, 'Yodo', 'Keely');
insert into institutes (id, name, rector) values (9, 'Fadeo', 'Fancutt');
insert into institutes (id, name, rector) values (10, 'Linkbuzz', 'Delves');