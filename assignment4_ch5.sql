INSERT INTO orders (order#,customer#,orderdate)
VALUES (1022,2000,'06-AUG-09');

INSERT INTO orders (order#,customer#)
VALUES (1023,1009);

UPDATE books
SET cost = '&Cost'
WHERE isbn = '&ISBN';
ROLLBACK;

DELETE FROM orderitems
WHERE order# = 1005;
DELETE FROM orders
WHERE order# = 1005;
ROLLBACK;
ROLLBACK;





