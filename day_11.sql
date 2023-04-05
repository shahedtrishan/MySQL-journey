-- section 13
-- left join

use relations;

SELECT 
    *
FROM
    customers
        LEFT JOIN
    orders ON orders.id = customers.id;

SELECT 
    first_name, last_name, IFNULL(SUM(amount), 0) AS money_spent
FROM
    customers
        LEFT JOIN
    orders ON customers.id = orders.customer_id
GROUP BY first_name , last_name;

-- exercise

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50)
);
 
 
CREATE TABLE students_1 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50)
);

CREATE TABLE papers (
    title VARCHAR(50),
    grade INT,
    student_id INT,
    FOREIGN KEY (student_id)
        REFERENCES students_1 (id)
        ON DELETE CASCADE
);

INSERT INTO students_1 (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);
 
 
SELECT 
    *
FROM
    papers;
SELECT 
    *
FROM
    students_1;
 
SELECT 
    first_name, title, grade
FROM
    students_1
        JOIN
    papers ON papers.student_id = students_1.id
ORDER BY grade DESC;
 
SELECT 
    first_name, IFNULL(title, 'MISSING'), IFNULL(grade, 0)
FROM
    students_1
        LEFT JOIN
    papers ON papers.student_id = students_1.id;

SELECT 
    first_name,
    IFNULL(AVG(grade), 0) AS average,
    CASE
        WHEN IFNULL(AVG(grade), 0) >= 75 THEN 'passing'
        ELSE 'failing'
    END AS passing_status
FROM
    students_1
        LEFT JOIN
    papers ON students_1.id = papers.student_id
GROUP BY first_name
ORDER BY average DESC;
