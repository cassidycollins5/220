create table class
(
    id            int auto_increment,
    class_subject varchar(10) not null,
    constraint id
        unique (id)
);

create table grade
(
    id        int auto_increment
        primary key,
    grade_num int not null,
    constraint id
        unique (id)
);

create table student
(
    id        int auto_increment
        primary key,
    firstname varchar(20) null,
    lastname  varchar(20) null,
    email     varchar(20) null,
    classId   int         null,
    constraint id
        unique (id),
    constraint student_ibfk_1
        foreign key (classId) references grade (id)
);

create index classId
    on student (classId);

create table student_address
(
    id        int auto_increment
        primary key,
    street    varchar(15) not null,
    num       int         not null,
    town      varchar(15) null,
    zip       smallint    null,
    studentId int         not null,
    constraint id
        unique (id),
    constraint student_address_ibfk_1
        foreign key (studentId) references student (id)
);

create index studentId
    on student_address (studentId);

create table student_class_association
(
    studentId int not null,
    classId   int not null
);


