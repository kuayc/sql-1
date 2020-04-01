--Table= invoice
--1

SELECT count(*) FROM invoice
WHERE billing_country = 'USA';

--2
SELECT * FROM invoice
ORDER BY total DESC LIMIT 1;

--3
SELECT * FROM invoice
ORDER BY total ASC LIMIT 1;

--4
SELECT count(*) FROM invoice
WHERE total > 5;

--5
SELECT count(*) FROM invoice
WHERE total < 5;

--6
SELECT count(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

--7
SELECT avg(total) FROM invoice;

--8
SELECT sum(total) FROM invoice;