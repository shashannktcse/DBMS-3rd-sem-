create database if not exists InsuranceDB;
use InsuranceDB;

-- creating tables

create table Person(Driver_ID varchar(10), Name varchar(20), Address varchar(20), primary key(Driver_ID));

create table Car(Reg_num varchar(10), Model varchar(10), Year int, primary key(Reg_num));

create table Accident(Report_num int, Accident_date date, Location varchar(20), primary key(Report_num));

create table Owns(Driver_ID varchar(10), Reg_num varchar(10), primary key(Driver_ID,Reg_num), foreign key(Driver_ID) references Person(Driver_ID), foreign key(Reg_num) references Car(Reg_num));

create table Participated(Driver_ID varchar(10), Reg_num varchar(10), Report_num int, Damage_amount int, primary key(Driver_ID,Reg_num,Report_num), foreign key(Driver_ID) references Person(Driver_ID), foreign key(Reg_num) references Car(Reg_num), foreign key(Report_num) references Accident(Report_num));

desc Person;
desc Car;
desc Accident;
desc Owns;
desc Participated;

-- inserting inside Person table

insert into Person values('A01','Richard','Srinivas nagar');
insert into Person values('A02','Pradeep','Rajaji nagar');
insert into Person values('A03','Smith','Ashok nagar');
insert into Person values('A04','Venu','N R layout');
insert into Person values('A05','Jhon','Hanumanth nagar');

select * from Person;

-- inserting inside Car table

insert into Car values('KA052250','Indca',1990);
insert into Car values('KA031181','Lancer',1957);
insert into Car values('KA095477','Toyota',1998);
insert into Car values('KA053408','Honda',2008);
insert into Car values('KA041702','Audi',2005);

select * from Car;

-- inserting inside Owns table

insert into Owns values('A01','KA052250');
insert into Owns values('A02','KA031181');
insert into Owns values('A03','KA095477');
insert into Owns values('A04','KA053408');
insert into Owns values('A05','KA041702');

select * from Owns;
