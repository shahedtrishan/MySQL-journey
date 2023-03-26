-- section_11

show tables;
SELECT 
    *
FROM
    books;

SELECT 
    title
FROM
    books
WHERE
    author_fname LIKE '%ke%';
SELECT 
    title
FROM
    books
WHERE
    author_fname NOT LIKE '%ea%';

-- greater_than

SELECT 
    *
FROM
    books
WHERE
    released_year > 2000;
SELECT 
    *
FROM
    books
WHERE
    released_year > 2005;

-- less_than

SELECT 
    *
FROM
    books
WHERE
    pages < 300;
SELECT 
    *
FROM
    books
WHERE
    pages < 200;

-- greater/less equal

SELECT 
    *
FROM
    books
WHERE
    pages = 291;
SELECT 
    *
FROM
    books
WHERE
    pages <= 201;

-- logical and/or

SELECT 
    CHAR_LENGTH(title)
FROM
    books;
SELECT 
    title, pages
FROM
    books
WHERE
    CHAR_LENGTH(title) > 30 AND pages > 400;

SELECT 
    title, author_lname, released_year
FROM
    books
WHERE
    author_lname = 'Eggers'
        OR released_year > 2010;

-- between/not between

SELECT 
    *
FROM
    books
WHERE
    pages BETWEEN 400 AND 500;
SELECT 
    *
FROM
    books
WHERE
    pages BETWEEN 300 AND 400;

SELECT 
    *
FROM
    books
WHERE
    pages NOT BETWEEN 300 AND 400;

-- in/not in

SELECT 
    title, released_year
FROM
    books
WHERE
    released_year IN (2001 , 2003, 2013);
SELECT 
    title, released_year
FROM
    books
WHERE
    released_year NOT IN (2001 , 2003, 2013);

-- case

SELECT 
    *,
    CASE
        WHEN stock_quantity BETWEEN 1 AND 40 THEN 'EHH'
        WHEN stock_quantity BETWEEN 41 AND 60 THEN 'WOW'
        WHEN stock_quantity BETWEEN 61 AND 70 THEN 'WOOW'
        WHEN stock_quantity BETWEEN 71 AND 90 THEN 'WOOOW'
        WHEN stock_quantity BETWEEN 91 AND 140 THEN 'WOOOOW'
        ELSE 'damn'
    END AS Credit
FROM
    books;
    
-- Exercise

SELECT 
    *
FROM
    books
WHERE
    released_year < 1980;
SELECT 
    title, author_fname, author_lname
FROM
    books
WHERE
    author_lname = 'Eggers'
        OR author_lname = 'Chabon';
SELECT 
    *
FROM
    books
WHERE
    author_lname = 'Lahiri'
        AND released_year >= 2000;
SELECT 
    *
FROM
    books
WHERE
    pages BETWEEN 100 AND 200;

SELECT 
    *,
    CASE
        WHEN title LIKE '%stories%' THEN 'Sort_Stories'
        WHEN title = 'Just Kids' THEN 'Memoir'
        WHEN title LIKE '%A Heartbreaking Work%' THEN 'Memoir;'
        ELSE 'Novel'
    END AS 'Type'
FROM
    books;

SELECT 
    *
FROM
    books;
select author_fname, author_lname from books 

-- section_12

create TABLE contacts (
	name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
);
 
 show tables;
 desc contacts;
INSERT INTO contacts (name, phone)
VALUES ('billybob', '8781213455');
SELECT 
    *
FROM
    contacts;

CREATE TABLE users (
    username VARCHAR(20) NOT NULL,
    age INT CHECK (age > 0)
);

CREATE TABLE palindromes (
    word VARCHAR(100) CHECK (REVERSE(word) = word)
)










