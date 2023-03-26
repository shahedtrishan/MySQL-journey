show databases;
show tables;

create table people_2(
name varchar(20),
birthday date,
birthtime time,
birthdate datetime
);

desc people_2;

insert into people_2 (
name,
birthday,
birthtime,
birthdate)
 values
('Joe', '1982-07-11', '12:21:25', '1982-07-11 12:21:25'),
('Mo', '1989-07-11', '11:21:25', '1989-07-11 12:21:25');

select * from people_2;
select curtime();
select current_date();

insert into people_2 (
name,
birthday,
birthtime,
birthdate)
 values
('Suso', curdate(), curtime(), now());