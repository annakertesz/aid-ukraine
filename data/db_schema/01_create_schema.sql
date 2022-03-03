DROP TABLE IF EXISTS person_language;
DROP TABLE IF EXISTS accomodation;
DROP TABLE IF EXISTS transportation;
DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS language;
DROP TABLE IF EXISTS status;


create table language
(
    id   serial
        constraint language_pk
            primary key,
    name varchar not null
);

create unique index language_id_uindex
    on language (id);

create table status
(
    id          serial
        constraint status_pk
            primary key,
    description varchar not null
);

create table person
(
    id             serial
        constraint person_pk
            primary key,
    name           varchar,
    email          varchar,
    phone          integer,
    night_call     boolean,
    status         integer not null
        constraint person_status_id_fk
            references status,
    status_comment varchar
);

create unique index person_id_uindex
    on person (id);

create unique index person_phone_uindex
    on person (phone);

create table accomodation
(
    id             serial
        constraint accomodation_pk
            primary key,
    person         integer not null
        constraint accomodation_person_id_fk
            references person
            on update cascade on delete cascade,
    city           varchar,
    max            integer,
    male           boolean,
    female         boolean,
    kids           boolean,
    animals        boolean,
    available_from date default CURRENT_DATE,
    transport      boolean,
    comment        varchar,
    status         integer not null
        constraint accomodation_status_id_fk
            references status,
    status_comment varchar
);

create unique index accomodation_id_uindex
    on accomodation (id);

create table transportation
(
    id             serial
        constraint transportation_pk
            primary key,
    person         integer not null
        constraint transportation_person_id_fk
            references person
            on update cascade on delete cascade,
    seats          integer,
    departure      varchar,
    kid_seat       integer,
    animals        boolean,
    available_from date default CURRENT_DATE,
    comment        varchar,
    status         integer not null
        constraint transportation_status_id_fk
            references status,
    status_comment integer
);

create unique index transportation_id_uindex
    on transportation (id);

create table person_language
(
    person   integer not null
        constraint person_language_person_id_fk
            references person,
    language integer not null
        constraint person_language_language_id_fk
            references language
);

create unique index status_id_uindex
    on status (id);

