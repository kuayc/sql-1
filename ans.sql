--Table= person
--1

CREATE TABLE person
(
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    height INT NOT NULL,
    city VARCHAR(255) NOT NULL,
    favorite_color VARCHAR(255) NOT NULL
);

--2
INSERT INTO person
    (name, age, height, city, favorite_color)
VALUES
    ('Tina Turner', 71, 168, 'Los Angeles', 'green'),
    ('Sam Spade', 44, 181, 'New York', 'blue'),
    ('Danny Smith', 28, 171, 'Houston', 'purple'),
    ('Cassidy Long', 27, 166, 'Dallas', 'violet'),
    ('Shawn Garcia', 33, 182, 'Chicago', 'white');

--3
SELECT *
FROM person
ORDER BY height DESC;

--4
SELECT *
FROM person
ORDER BY height ASC;

--5
SELECT *
FROM person
ORDER BY age DESC;

--6
SELECT *
FROM person
WHERE age >= 20;

--7
SELECT *
FROM person
WHERE age = 18;

--8
SELECT *
FROM person
WHERE age < 20 AND age > 30;

--9
SELECT *
FROM person
WHERE age != 27;

--10
SELECT *
FROM person
WHERE favorite_color != 'red';

--11
SELECT *
FROM person
WHERE favorite_color NOT IN ('red', 'blue');

--12
SELECT *
FROM person
WHERE favorite_color IN ('orange', 'green');

--13
SELECT *
FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

--14
SELECT *
FROM person
WHERE favorite_color IN ('yellow', 'purple');

--------------------------------------------------

--Table-orders
--1
CREATE TABLE orders
(
    order_id SERIAL PRIMARY KEY,
    person_id INT NOT NULL,
    product_name VARCHAR(255),
    product_price INT NOT NULL,
    quantity INT NOT NULL
);

--2
INSERT INTO orders
    (person_id ,product_name, product_price, quantity)
VALUES
    (0, 'Product 1', 5, 20),
    (1, 'Product 2', 4, 1),
    (2, 'Product 3', 40, 10),
    (3, 'Product 4', 1, 200),
    (4, 'Product 5', 10, 90);

--3
SELECT *
FROM orders;

--4
SELECT sum(quantity)
FROM orders;

--5
SELECT sum(product_price * quantity)
FROM orders;

--6
SELECT sum(product_price*quantity)
FROM orders
WHERE person_id = 1;
