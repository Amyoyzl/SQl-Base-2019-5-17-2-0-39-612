create database student_exanmination_sys;

use student_exanmination_sys;

create table if not exists student (
    id char(3) primary key,
    name varchar(20) not null,
    age int check (age>=0 and age<=150),
    sex enum('男','女') not null
);
insert into student values('001','张三',18,'男');
insert into student values('002','李四',20,'女');

create table if not exists subject (
    id char(4) primary key,
    subject varchar(10),
    teacher varchar(20),
    description varchar(255)
);
insert into subject values('1001','语文','王老师','本次考试比较简单');
insert into subject values('1002','数学','刘老师','本次考试比较难');

create table if not exists score (
    id int auto_increment,
    student_id char(3),
    subject_id char(4),
    score decimal(3,1),
    primary key (id),
    foreign key (student_id) references student(id),
    foreign key (subject_id) references subject(id)
);
insert into score values(1,'001','1001',80);
insert into score values(2,'002','1002',60);
insert into score values(3,'001','1001',70);
insert into score values(4,'002','1002',60.5);
