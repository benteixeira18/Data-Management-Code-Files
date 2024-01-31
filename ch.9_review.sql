SELECT title, authorid FROM books, bookauthor;

SELECT title, name
FROM books CROSS JOIN publisher;

SELECT title, gift
FROM books NATURAL JOIN promotion;

SELECT title, authorid FROM books, bookauthor
WHERE books.isbn = bookauthor.isbn AND retail > 20;

SELECT title, gift FROM books, promotion 
WHERE retail >= minretail AND retail <= maxretail;

SELECT title, order#, quantity 
FROM books FULL JOIN orderitems 
ON books.isbn = orderitems.isbn;

SELECT b.title, b.retail, o.quantity
FROM books b, orderitems o
WHERE o.isbn = b.isbn
AND o.order# = 1005;

SELECT name, title FROM books NATURAL JOIN publisher
WHERE category =  'FITNESS';

SELECT b.isbn, p.name
FROM books b NATURAL JOIN publisher p;

SELECT title FROM books NATURAL JOIN publisher
WHERE name = 'PRINTING IS US';

SELECT isbn FROM books MINUS 
SELECT isbn FROM orderitems;

SELECT title, name
FROM books NATURAL JOIN publisher;

SELECT name, title
FROM books b, publisher p
WHERE b.pubid = p.pubid
AND
(retail > 25 OR retail-cost > 18.95);

SELECT books.title, orderitems.quantity
FROM books JOIN orderitems
ON books.isbn = orderitems.isbn;

