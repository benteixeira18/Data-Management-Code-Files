CREATE TABLE store_reps
(rep_ID NUMBER (5),
lastName VARCHAR2 (15),
firstName VARCHAR2 (10),
comm CHAR(1));

ALTER TABLE store_reps
ADD CONSTRAINT store_reps_rep_ID_pk PRIMARY KEY (rep_ID);
ALTER TABLE store_reps
MODIFY comm DEFAULT 'Y';

ALTER TABLE store_reps
MODIFY (lastName CONSTRAINT store_reps_lastName_nn NOT NULL);
ALTER TABLE store_reps
MODIFY (firstName CONSTRAINT store_reps_firstName_nn NOT NULL);

ALTER TABLE store_reps
ADD CONSTRAINT store_reps_comm_ck CHECK (comm IN ('Y','N'));

ALTER TABLE store_reps
ADD Base_salary NUMBER(7,2);
ALTER TABLE store_reps
ADD CONSTRAINT store_reps_Base_salary_ck CHECK (Base_salary > 0);




