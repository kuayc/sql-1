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
    (0, 'Product 1', 100, 2),
    (1, 'Product 2', 5, 1),
    (2, 'Product 3', 25, 10),
    (3, 'Product 4', 1, 100),
    (4, 'Product 5', 10, 40);

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
