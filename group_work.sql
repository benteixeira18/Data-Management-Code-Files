SELECT title, lname, fname FROM books, author
WHERE lname = 'ADAMS';

SELECT p.gift, b.title FROM books b, promotion p
WHERE b.retail BETWEEN p.minretail and p.maxretail
AND b.title = 'SHORTEST POEMS';

SELECT oi.item#, o.customer#
FROM orderitems oi JOIN orders o USING (order#)
WHERE o.shipdate IS NULL
ORDER BY o.customer#;

