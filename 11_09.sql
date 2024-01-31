CREATE TABLE class_table_1107
(
Person_ID NUMBER GENERATED AS IDENTITY PRIMARY KEY,
Person_FName VARCHAR(10) NOT NULL,
Person_LName VARCHAR(10)NOT NULL,
DOB VARCHAR(10),
Height_inches NUMBER (5,2) NOT NULL,
Favorite_Food VARCHAR(15) NOT NULL,
Surfs_Up_Fan_Y_N VARCHAR(3) NOT NULL,
Money NUMBER(10,2)
);

CREATE SEQUENCE class1107_PersonID_seq
 INCREMENT BY 10
 START WITH 20
 MAXVALUE 5000
 MINVALUE 0
 NOCYCLE
 NOCACHE;
 
SELECT *
FROM user_sequences;

CREATE SYNONYM ctb FOR class_table_1107;

INSERT INTO ctb (Person_FName, Person_LName, DOB, Height_inches,
Favorite_Food, Surfs_Up_Fan_Y_N, Money)
 VALUES ('Jake', 'Joe', 21-11-00, class_table_PersonID_seq.NEXTVAL,
 'Pizza','Y',2345.3);
 
INSERT INTO ctb (Person_FName, Person_LName, DOB, Height_inches,
Favorite_Food, Surfs_Up_Fan_Y_N, Money)
 VALUES ('Joe', 'Jake', 23-12-00, class_table_PersonID_seq.CURRVAL,
 'Pie','N',3412.7);
 
CREATE TABLE test_default
(col1 NUMBER DEFAULT CLASS1107_PERSONID_SEQ.nextval,
 col2 number);

ALTER SEQUENCE class1107_PersonID_seq
 INCREMENT BY 10;
 
DROP SEQUENCE class1107_PersonID_seq;

CREATE INDEX customers_zip_idx
 ON customers (zip);
 
CREATE INDEX books_profit_idx
 ON books (retail-cost);
 
SELECT table_name, index_name, index_type
FROM user_indexes 
    WHERE table_name = 'books';
    
DROP INDEX books_profit_idx;
    

 
 







