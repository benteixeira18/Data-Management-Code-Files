DESCRIBE author

SELECT LNAME || ', ' || FNAME FROM author;

SELECT order#,item#,isbn,quantity,paideach,quantity*paideach AS "Item Total"
FROM orderitems;

CREATE TABLE EMPLOYEES3
(
 Emp# NUMBER(5),
 Lastname VARCHAR2(20),
 Firstname VARCHAR2(20),
 Job_class VARCHAR(4)
 );
 
ALTER TABLE EMPLOYEES3
ADD (EmpDate DATE DEFAULT SYSDATE,
EndDate DATE);

ALTER TABLE EMPLOYEES3
MODIFY (Job_class VARCHAR(2));

ALTER TABLE EMPLOYEES3
DROP COLUMN EndDate;

RENAME EMPLOYEES3 TO JL_EMPS;

DESCRIBE JL_EMPS;
 
