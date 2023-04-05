-- section 13
-- relational database

show tables;
create database Relations;
use Relations;

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(40),
    last_name VARCHAR(40),
    email VARCHAR(50)
);

CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    amount DECIMAL(8 , 2 ),
    customer_id INT,
    FOREIGN KEY (customer_id)
        REFERENCES customers (id)
);

show tables;
desc customers;
desc orders;

INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);
       
SELECT 
    *
FROM
    customers;
SELECT 
    *
FROM
    orders;

INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 3);

SELECT 
    *
FROM
    orders
WHERE
    customer_id = 3;
SELECT 
    *
FROM
    orders
WHERE
    customer_id = (SELECT 
            id
        FROM
            customers
        WHERE
            last_name = 'George');







