-- section 17
-- working with the inserted data

use ig_clone;
show tables;

SELECT 
    *
FROM
    comments;

-- finding top 5 oldest users
SELECT 
    *
FROM
    users
ORDER BY created_at
LIMIT 5;

-- find most sign up in a single day
SELECT 
    DAYNAME(created_at) AS day, COUNT(*) AS total
FROM
    users
GROUP BY day
ORDER BY total DESC
LIMIT 1;

-- find who never posts
SELECT 
    username
FROM
    users
        LEFT JOIN
    photos ON users.id = photos.user_id
WHERE
    photos.id IS NULL
ORDER BY username ASC;

-- find how mant time an avarege user posts
SELECT 
    (SELECT 
            COUNT(*)
        FROM
            photos) / (SELECT 
            COUNT(*)
        FROM
            users) AS ava;

-- 5 most liked post
SELECT 
     username, photos.id, photos.image_url, COUNT(*) AS most_liked
FROM
    photos
        INNER JOIN
    likes ON photos.id = likes.photo_id
    inner join users on users.id = photos.user_id
GROUP BY photo_id
ORDER BY most_liked DESC
LIMIT 5;
 
 
 -- find 5 popular tags
SELECT 
    tag_name, COUNT(*) AS total_tags
FROM
    tags
        JOIN
    photo_tags ON tags.id = photo_tags.tag_id
GROUP BY tag_name
ORDER BY total_tags DESC
LIMIT 5;

-- find the bots
SELECT username, 
       Count(*) AS num_likes 
FROM   users 
       INNER JOIN likes 
               ON users.id = likes.user_id 
GROUP  BY likes.user_id 
HAVING num_likes = (SELECT Count(*) 
                    FROM   photos); 


