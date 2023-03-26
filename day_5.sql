show databases;
use book_shop;
SELECT 
    *
FROM
    books;

SELECT 
    LENGTH(author_fname)
FROM
    books;

-- count

SELECT 
    COUNT(DISTINCT author_lname)
FROM
    books;

-- group by

SELECT 
    author_lname
FROM
    books
GROUP BY author_lname;
SELECT 
    author_lname, COUNT(*) AS books_written
FROM
    books
GROUP BY author_lname;
SELECT 
    author_lname, COUNT(*) AS books_written
FROM
    books
GROUP BY author_lname
ORDER BY books_written DESC;

-- max-min

SELECT 
    MAX(pages), MIN(pages)
FROM
    books;
SELECT 
    title, pages, released_year
FROM
    books
WHERE
    pages = (SELECT 
            MAX(pages)
        FROM
            books);
SELECT 
    title, released_year
FROM
    books
WHERE
    released_year = (SELECT 
            MIN(released_year)
        FROM
            books);

SELECT 
    author_lname,
    COUNT(*) AS books_written,
    MAX(released_year) AS latest_release,
    MIN(released_year) AS earliest_release,
    MAX(pages) AS longest_page_count
FROM
    books
GROUP BY author_lname;

-- sum

SELECT 
    SUM(pages)
FROM
    books;
SELECT 
    SUM(pages)
FROM
    books
GROUP BY author_lname;

-- AVG

SELECT 
    AVG(pages)
FROM
    books;
SELECT 
    AVG(released_year)
FROM
    books;
SELECT 
    released_year, AVG(stock_quantity)
FROM
    books
GROUP BY released_year;
SELECT 
    COUNT(title)
FROM
    books;
SELECT 
    released_year, COUNT(title)
FROM
    books AS total
GROUP BY released_year;
SELECT 
    AVG(released_year)
FROM
    books
GROUP BY author_fname , author_lname;
SELECT 
    CONCAT(author_fname, ' ', author_lname), pages
FROM
    books
WHERE
    pages = (SELECT 
            MAX(pages)
        FROM
            books);
SELECT 
    released_year, COUNT(title), AVG(pages)
FROM
    books
GROUP BY released_year
ORDER BY released_year;