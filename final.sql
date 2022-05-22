create table Movies
(
    id           int auto_increment
        primary key,
    title        varchar(30) null,
    release_year varchar(4)  null,
    genre        varchar(20) null,
    movieId      int         not null,
    actorsId     int         not null,
    constraint id
        unique (id)
);

create table Actors
(
    id         int auto_increment,
    first_name varchar(20) null,
    last_name  varchar(20) null,
    movieId    int         not null,
    constraint id
        unique (id),
    constraint actors_ibfk_1
        foreign key (movieId) references Movies (id)
);

create index movieId
    on Actors (movieId);

create table Directors
(
    id         int auto_increment,
    first_name varchar(20) null,
    last_name  varchar(20) null,
    movieId    int         not null,
    constraint id
        unique (id),
    constraint directors_ibfk_1
        foreign key (movieId) references Movies (id)
);

create index movieId
    on Directors (movieId);


