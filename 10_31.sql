CREATE TABLE bookstores (
 store_id NUMBER(8),
 store_name VARCHAR2(30) NOT NULL,
 contact VARCHAR2(30),
 rep_id VARCHAR2(5),
 CONSTRAINT bookstores_store_name_uk UNIQUE (store_name));
 
 ALTER TABLE bookstores
  ADD CONSTRAINT bookstores_store_id_pk PRIMARY KEY (store_id);