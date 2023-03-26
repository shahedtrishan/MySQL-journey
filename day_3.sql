create database shirts_db;
show databases;
use shirts_db;


CREATE TABLE shirts (
    shirt_id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    article VARCHAR(20),
    color VARCHAR(20),
    shirt_size VARCHAR(4),
    last_worn INT
);

desc shirts;

insert into shirts(article, color, shirt_size, last_worn)
values
	('t-shirt', 'white', 'S', 10),
	('t-shirt', 'green', 'S', 200),
	('polo shirt', 'black', 'M', 10),
	('tank top', 'blue', 'S', 50),
	('t-shirt', 'pink', 'S', 0),
	('polo shirt', 'red', 'M', 5),
	('tank top', 'white', 'S', 200),
	('tank top', 'blue', 'M', 15);
 
 
DELETE FROM shirts 
WHERE
    last_worn = 50;
 
 update shirts set shirt_size='XS', color='off white' where color='white'
 select * from shirts;
 
DELETE FROM shirts;
 
 -- string
 
 create database book_shop;
 use book_shop;
 
CREATE TABLE books (
    book_id INT AUTO_INCREMENT,
    title VARCHAR(100),
    author_fname VARCHAR(100),
    author_lname VARCHAR(100),
    released_year INT,
    stock_quantity INT,
    pages INT,
    PRIMARY KEY (book_id)
);
    desc books;
 
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

-- concat/cancat-ws

SELECT 
    *
FROM
    books;
SELECT 
    CONCAT(author_fname, ' ', author_lname)
FROM
    books;
SELECT 
    CONCAT(author_fname, ' ', author_lname) AS author_name
FROM
    books;
SELECT 
    CONCAT_WS('-', author_fname, author_lname) AS author_name
FROM
    books;

-- substring

SELECT 
    SUBSTRING(author_fname, 1, 4) AS four
FROM
    books;
SELECT 
    CONCAT(SUBSTRING(title, 1, 10), ' ', 'YOOO') AS calm
FROM
    books;
SELECT 
    CONCAT(SUBSTRING(author_fname, 1, 1),
            '.',
            SUBSTRING(author_lname, 1, 1),
            '.') AS ShortName
FROM
    books;
SELECT 
    CONCAT(SUBSTRING(author_fname, 1, 1),
            '|',
            SUBSTRING(author_lname, 1, 1),
            '|') AS NEWNAMES
FROM
    books;
    
select replace(author_fname, 'David', 'Mia') as newnames from books;
select reverse(author_fname)from books;
select length(author_fname)from books;
select char_length(author_fname)from books;
select upper(author_fname) from books;
select lower(author_fname) as lowercase from books;



    
