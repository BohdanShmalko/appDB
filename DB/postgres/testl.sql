CREATE TABLE teachers_phones
(
    id serial NOT NULL UNIQUE PRIMARY KEY,
    phone_number  character varying(13)             not null,
    sign          text                              not null,
    teacher_id   INT NOT NULL REFERENCES teachers (id)
);


CREATE TABLE States
(
    id serial NOT NULL UNIQUE PRIMARY KEY,
    name character varying(255) unique not null,
    percentage_army_GDP int not null,
    sign character varying(100) not null,
    population int not null
);

CREATE TABLE manufacturers
(
    id serial NOT NULL UNIQUE PRIMARY KEY,
    name character varying(255) not null,
    activity character varying(255) not null,
    id_state INT NOT NULL REFERENCES States (id)
);

CREATE TABLE militaryUnits
(
    id serial NOT NULL UNIQUE PRIMARY KEY,
    location_region character varying(255) not null,
    budget int not null,
    id_state INT NOT NULL REFERENCES States (id)
);

CREATE TABLE machinery
(
    id serial NOT NULL UNIQUE PRIMARY KEY,
    name character varying(255) not null,
    usage character varying(100) not null,
    use_qualification character varying(100) not null,
    id_manufacturers INT NOT NULL REFERENCES manufacturers (id)
);

CREATE TABLE militaryPersonnels
(
    id serial NOT NULL UNIQUE PRIMARY KEY,
    rank character varying(50) not null,
    service int not null,
    qualification character varying(100) not null,
    early_career date not null,
    id_unit INT NOT NULL REFERENCES militaryUnits (id)
);

CREATE TABLE belonging
(
    id serial NOT NULL UNIQUE PRIMARY KEY,
    id_person INT NOT NULL REFERENCES militaryPersonnels (id),
    id_machinery INT NOT NULL REFERENCES machinery (id)
);
