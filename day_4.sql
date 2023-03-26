show databases;
desc books;
SELECT 
    *
FROM
    books;

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);

-- distinct

SELECT 
    author_lname
FROM
    books;
SELECT DISTINCT
    author_lname
FROM
    books;
SELECT DISTINCT
    author_fname, author_lname AS Full_Name
FROM
    books;

-- order

SELECT DISTINCT
    author_fname, author_lname AS Full_Name
FROM
    books
ORDER BY author_fname;
SELECT 
    *
FROM
    books
ORDER BY author_lname DESC;
SELECT 
    *
FROM
    books
ORDER BY 6 DESC;

-- limit

SELECT 
    *
FROM
    books
ORDER BY 6 DESC
LIMIT 5;
SELECT 
    *
FROM
    books
LIMIT 5;
SELECT 
    *
FROM
    books
LIMIT 5 , 3;
SELECT 
    *
FROM
    books
LIMIT 5 , 3;

-- like

SELECT 
    *
FROM
    books
WHERE
    author_lname LIKE '%egg%';
SELECT 
    *
FROM
    books
WHERE
    author_lname LIKE '%____%';

-- excercise

SELECT 
    title
FROM
    books
WHERE
    title LIKE '%stories%';
SELECT 
    title, released_year
FROM
    books
ORDER BY released_year DESC
LIMIT 3;
SELECT 
    *
FROM
    books
WHERE
    author_lname LIKE '% %';
SELECT 
    title, released_year, stock_quantity
FROM
    books
ORDER BY stock_quantity
LIMIT 3;
SELECT 
    title, author_lname
FROM
    books
ORDER BY author_lname , title;
SELECT 
    CONCAT(UPPER('MY fav author is '),
            UPPER(author_fname),
            ' ',
            UPPER(author_lname),
            '!')
FROM
    books AS yell
ORDER BY author_lname;

