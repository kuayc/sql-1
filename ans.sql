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

    