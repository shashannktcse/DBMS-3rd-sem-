create database NewDB;
use NewDB;

create table student(fname varchar(255), age int, dob date, gender char);

insert into student values('Jhon',25,'2007-8-18','m');
insert into student values('Sam',25,'2007-6-30','m');
insert into student values('Shashi',26,'2005-12-02','f');

select* from student;

