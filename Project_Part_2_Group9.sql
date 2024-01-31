/********PHASE 4********/

/*******************IF TABLES EXIST ALREADY*******************/

DROP TABLE Customers CASCADE CONSTRAINTS;
DROP TABLE Cars CASCADE CONSTRAINTS;
DROP TABLE Salesperson CASCADE CONSTRAINTS;
DROP TABLE Sales_Transactions CASCADE CONSTRAINTS;
DROP TABLE Financing CASCADE CONSTRAINTS;
DROP TABLE Cash CASCADE CONSTRAINTS;
DROP TABLE Leasing CASCADE CONSTRAINTS;
DROP TABLE Loan CASCADE CONSTRAINTS;

/*******************CREATING TABLES AND INSERTING VALUES *******************/

CREATE TABLE Customers 
(
Customer_ID VARCHAR2 (10),
FirstName VARCHAR2 (15) NOT NULL,
LastName VARCHAR2 (15) NOT NULL,
Email VARCHAR2 (20) NOT NULL,
Phone VARCHAR2 (12) NOT NULL,
CONSTRAINT customers_ID_pk PRIMARY KEY (Customer_ID)
);

INSERT INTO Customers
VALUES (00001,'John','Smith','johnsmith@gmail.com',1234567890);
INSERT INTO Customers
VALUES (00002,'Jack','Smith','jacksmith@gmail.com',2234567890);
INSERT INTO Customers
VALUES (00003,'Jude','Smith','judesmith@gmail.com',2234567770);
INSERT INTO Customers
VALUES (00031,'Joe','Smith','joesmith@gmail.com',3234567890);

CREATE TABLE Cars
(
VIN VARCHAR2 (10),
Make VARCHAR2 (15) NOT NULL,
Car_Model VARCHAR2 (10) NOT NULL,
Year_Made NUMBER (4) NOT NULL,
Color VARCHAR2 (10) NOT NULL,
Price NUMBER (10,2) NOT NULL,
CONSTRAINT cars_vin_pk PRIMARY KEY (VIN)
);

INSERT INTO Cars
VALUES ('4K1234','Bugatti','Veyron',2020,'Red',10000000);
INSERT INTO Cars
VALUES ('4K1235','Ferarri','LaFerrari',2022,'Gold',15000000);
INSERT INTO Cars
VALUES ('4K1236','Maybach','Exelero',2021,'Black',20000000);

CREATE TABLE Salesperson
(
Staff_ID VARCHAR2 (10),
FirstName VARCHAR2 (15) NOT NULL,
LastName VARCHAR2 (15) NOT NULL,
Email_ID VARCHAR2 (20) NOT NULL,
Phone_No VARCHAR2 (12) NOT NULL,
Address VARCHAR2 (50) NOT NULL,
CONSTRAINT salesperson_staffID_pk PRIMARY KEY (Staff_ID)
);

INSERT INTO Salesperson
VALUES ('0000000001','Jane','Doe','janedoe@gmail.com','1234567899',
'1 Hill Ave, Boston, MA 02120');
INSERT INTO Salesperson
VALUES ('0000000002','Jill','Doe','jilldoe@gmail.com','1234567889',
'2 Hill Ave, Boston, MA 02120');
INSERT INTO Salesperson
VALUES ('0000000003','Judie','Doe','judiedoe@gmail.com','2234567889',
'3 Hill Ave, Boston, MA 02120');

CREATE TABLE Sales_Transactions
(
Customer_ID VARCHAR2 (10),
VIN VARCHAR2 (10),
Final_Price NUMBER (10,2) NOT NULL,
Date_Sold DATE NOT NULL,
Staff_ID  VARCHAR2 (10),
CONSTRAINT sales_customer_vin_pk PRIMARY KEY (Customer_ID, VIN),
CONSTRAINT staff_id_fk FOREIGN KEY (Staff_ID)
REFERENCES Salesperson (Staff_ID)
);

INSERT INTO Sales_Transactions
VALUES (00001,'4K1234',10000000,'06-AUG-2023','0000000001');
INSERT INTO Sales_Transactions
VALUES (00002,'4K1235',15000000,'07-AUG-2023','0000000002');
INSERT INTO Sales_Transactions
VALUES (00031,'4K1236',18000000,'08-AUG-2023','0000000003');

CREATE TABLE Financing
(
Account_ID VARCHAR2 (10),
InsuranceName VARCHAR2 (15) NOT NULL,
Customer_ID VARCHAR2 (10),
CONSTRAINT financing_accountID_pk PRIMARY KEY (Account_ID),
CONSTRAINT customer_id_fk FOREIGN KEY (Customer_ID)
REFERENCES Customers (Customer_ID)
);

INSERT INTO Financing
VALUES ('012345K','Insurance_1',00001);
INSERT INTO Financing
VALUES ('012346K','Insurance_2',00002);
INSERT INTO Financing
VALUES ('012347K','Insurance_3',00031);

CREATE TABLE Cash_Financing
(
Cash_Account_ID VARCHAR2 (10),
Bank_Name VARCHAR2 (10) NOT NULL,
Account_No NUMBER (12) NOT NULL,
Routing_No NUMBER (8) NOT NULL,
CONSTRAINT cash_account_ID_pk PRIMARY KEY (Cash_Account_ID)
);

INSERT INTO Cash_Financing
VALUES ('012345K','BigMoney','123456789012','12345678');
INSERT INTO Cash_Financing
VALUES ('012346K','RichMoney','123456789013','12345679');
INSERT INTO Cash_Financing
VALUES ('012347K','DumbMoney','123456789014','12245678');

CREATE TABLE Lease_Financing
(
Lease_Account_ID VARCHAR2 (10),
Monthly_Payment NUMBER (10,2) NOT NULL,
Lease_Payment NUMBER (10,2) NOT NULL,
CONSTRAINT lease_accountID_pk PRIMARY KEY (Lease_Account_ID)
);

INSERT INTO Lease_Financing
VALUES ('012345K',99999.99,59999.99);
INSERT INTO Lease_Financing
VALUES ('012346K',89999.99,69999.99);
INSERT INTO Lease_Financing
VALUES ('012347K',99999.99,59999.99);

CREATE TABLE Loan_Financing
(
Loan_Account_ID VARCHAR2 (10),
Down_Payment NUMBER (10,2) NOT NULL,
Interest_Rate NUMBER (6,2) NOT NULL,
Loan_Period VARCHAR (10) NOT NULL,
CONSTRAINT loan_accountID_pk PRIMARY KEY (Loan_Account_ID)
);

INSERT INTO Loan_Financing
VALUES ('012345K',5000000,5.99,'5 years');
INSERT INTO Loan_Financing
VALUES ('012346K',7000000,4.99,'5 years');
INSERT INTO Loan_Financing
VALUES ('012347K',4000000,8.99,'5 years');

/********PHASE 5********/

/*************LOADING QUERIES*************/
SELECT * FROM Cash_Financing
WHERE Bank_Name = 'BigMoney';

SELECT Make Mk, Car_Model Mo FROM Cars
WHERE Price > 10000000;

ALTER TABLE Cars
ADD (condition VARCHAR(10));
ALTER TABLE Cars
MODIFY (condition NOT NULL);
UPDATE Cars SET condition = 'Brand New';
Select * From Cars;

SELECT c.Customer_ID, c.FirstName, c.LastName, s.Final_Price
FROM Customers c, Sales_Transactions s
WHERE c.Customer_ID = s.Customer_ID;











