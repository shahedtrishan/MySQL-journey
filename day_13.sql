-- section 15
-- views

use tvseries;

CREATE VIEW imp AS
    SELECT 
        first_name,
        last_name,
        COUNT(rating),
        IFNULL(MIN(rating), 0),
        IFNULL(MAX(rating), 0),
        IFNULL(ROUND(AVG(rating), 2), 0),
        CASE
            WHEN COUNT(rating) > 0 THEN 'Active'
            ELSE 'Inactive'
        END AS Stat
    FROM
        reviewers
            LEFT JOIN
        reviews ON reviewers.id = reviews.reviewer_id
    GROUP BY first_name , last_name;

show tables;
SELECT 
    *
FROM
    imp;

CREATE VIEW imp_new AS
    SELECT 
        first_name,
        last_name,
        COUNT(rating) AS rating,
        IFNULL(MIN(rating), 0) AS min,
        IFNULL(MAX(rating), 0) AS max,
        IFNULL(ROUND(AVG(rating), 2), 0) AS avg,
        CASE
            WHEN COUNT(rating) > 0 THEN 'Active'
            ELSE 'Inactive'
        END AS Stat
    FROM
        reviewers
            LEFT JOIN
        reviews ON reviewers.id = reviews.reviewer_id
    GROUP BY first_name , last_name;

show tables;
SELECT 
    *
FROM
    imp_new;
    
    -- having clause
    
SELECT 
    AVG(rating), COUNT(rating) AS review_count
FROM
    imp_new
GROUP BY rating
HAVING COUNT(rating) > 1;