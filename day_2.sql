-- Yesterday's practice
show databases;
use trishan_shahed;
show tables; 
desc my_mind;
show tables from trishan_shahed;
select * from my_mind;
insert into my_mind(
name,color,age)
values("Stu", "Yellow",2),
		("Nimo", "Brown",4);
        SELECT 
    *
FROM
    my_mind;
        
        
-- day_2

create table people(
first_name varchar(20),
last_name varchar(20),
age int);
show tables;
desc people;
insert into people(
first_name,
last_name,
age)
values("Tina", "Belcher", 13);
select * from people;
insert into people(
first_name,
last_name,
age)
values("Bob","Belcher", 42);
insert into people(
first_name,
last_name,
age)
values("Linda", "Belcher", 45),
	  ("Philip", "Frond", 38),
      ("Calvin", "Fischoeder", 70);
SELECT 
    *
FROM
    people;
    
desc people;

-- not null
create table not_empty(
first_name varchar(40) not null,
last_name varchar(40) not null,
age int not null);
desc not_empty;
desc people;

-- default value
create table people_2(
first_name varchar(20) not null default 'Crazy',
last_name varchar(20) not null default 'WoW',
age int not null default 23);
desc people_2;

insert into people_2 ()
values();
select * from people_2;
insert into people_2 (first_name)
values('Kev\'s Mom');
select * from people_2;
desc people_2;

-- Primary Key
create table people_3(
Id int not null primary key,
first_name varchar(90),
last_name varchar(90),
age int);
desc people_3;

insert into people_3(
Id,
first_name,
last_name,
age)
values(
51, 'Shahed', 'Trishan', 25);
select * from people_3;
desc people_3;

-- auto increment
create table people_4(
Id int primary key auto_increment,
first_name varchar(20),
last_name varchar(20),
age int);
desc people_4;
insert into people_4(
first_name,
last_name,
age)
values(
'Gubu', 'Haha', 23),
('Hubu', 'Haha', 25);
select * from people_4;

create table Employees(
Id int primary key auto_increment,
Last_Name varchar(30) not null,
First_Name varchar(30) not null,
Middle_Name varchar(30),
age int not null,
Current_Status varchar(30) not null default 'Employed');
desc Employees;
Insert into Employees(
Last_Name,
First_Name,
Middle_Name,
age,
Current_Status)
values(
'Hossain', 'Mia', 'Khan', 55, 'Unemployed');
select * from Employees;

-- CRUD

CREATE TABLE cats (
   cat_id INT AUTO_INCREMENT,
   name VARCHAR(100),
   breed VARCHAR(100),
   age INT,
   PRIMARY KEY (cat_id)
);
INSERT INTO cats(name, breed, age)
VALUES ('Ringo', 'Tabby', 4),
      ('Cindy', 'Maine Coon', 10),
      ('Dumbledore', 'Maine Coon', 11),
      ('Egg', 'Persian', 4),
      ('Misty', 'Tabby', 13),
      ('George Michael', 'Ragdoll', 9),
      ('Jackson', 'Sphynx', 7);
select * from cats;
desc cats;
select name from cats;
select name, age from cats;
select age from cats where name='Misty';
select name,breed,age from cats where age=cat_id;

-- update


update Employees set Current_Status='Fired';
select * from Employees;
update Employees set Current_Status='Call'where Last_Name='Hossain';
insert into Employees(
Last_Name,
First_Name,
Middle_Name,
age,
Current_Status)
values(
'Im Hossain', 'Mia', 'Khan', 95, 'Unemployed');
select * from Employees;
update employees set Current_Status = 'Out' where Id=2;
update cats set name = 'Jack' where name='Jackson';
select * from cats;


-- delete


delete from cats where age=4;
delete from cats where cat_id=age;

