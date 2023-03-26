-- creating a table
-- adding columns
create table my_mind(
name varchar(15),
color varchar(20),
age int
);
-- show whats in the table
show tables;
-- description 
show columns from my_mind;
desc my_space;
show tables;
desc my_space;
-- deleting a table
drop table my_space;
show tables;
create table cakes (
name varchar(50),
quantity int
);
desc table cakes;
show tables;
drop table cakes;

-- inserting in a table
select tables;
insert into my_mind (name, age)
values("Billu", 11);
desc my_mind;
select * from my_mind;
insert into my_mind(color)
values ("Red");
select* from my_mind;

-- multi insert
insert into my_mind(name, color, age)
values ("Mimo", "Orange", 6),
		("Dimo", "Pink", 3),
        ("Fimo", "Grey", 7);
SELECT 
    *
FROM
    my_mind;