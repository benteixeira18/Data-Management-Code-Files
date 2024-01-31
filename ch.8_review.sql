SELECT address || city || state || zip "Address" FROM customers
WHERE lastname = 'SMITH';

SELECT * FROM publisher ORDER BY contact;

SELECT address, city, state, zip FROM customers
WHERE lastname = 'SMITH';

SELECT order# FROM orders WHERE shipdate IS NULL;

SELECT firstname, lastname FROM customers
ORDER BY state desc, city desc;

SELECT lastname FROM customers WHERE lastname > 'R';
SELECT * FROM customers WHERE lastname < 'V';

SELECT * FROM books WHERE pubid = 1 AND retail >= 25;

SELECT * FROM books WHERE pubid = 2 AND retail >= 35.00;
SELECT * FROM books WHERE pubid = 2 AND NOT retail < 35;
SELECT * FROM books WHERE pubid IN (1, 2, 5) AND retail NOT BETWEEN
1 AND 29.99;

SELECT * FROM customers WHERE firstname LIKE '%N%';

SELECT * FROM books WHERE title LIKE 'H_N_C%';

SELECT * FROM books WHERE pubdate > '20-MAR-05';

SELECT * FROM books WHERE category = 'FITNESS' OR pubid = 4
AND pubdate < '06-FEB-2004';

SELECT * FROM orders WHERE orderdate < '05-APR-09'
AND shipdate IS NULL;

SELECT * FROM books WHERE retail-cost >= 12.00;
SELECT * FROM books WHERE retail-cost > 12;

SELECT title, retail-cost profit FROM books
WHERE retail-cost >= 10.00
ORDER BY "PROFIT" desc;

SELECT * FROM books WHERE title LIKE '%AS_E%';





