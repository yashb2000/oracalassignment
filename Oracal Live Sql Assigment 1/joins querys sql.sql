
CREATE TABLE CUSTOMERS(  
    CUSTOMERID NUMBER,  
    FIRSTNAME VARCHAR2(50),  
    LASTNAME VARCHAR2(50),  
    EMAIL VARCHAR2(50),  
    PHONENUMBER VARCHAR(20),  
    PRIMARY KEY (CUSTOMERID)  
);

INSERT INTO CUSTOMERS VALUES(101,'AKSHAY','DESHPANDE','AKSHAY123@GMAIL.COM',7054825014);

INSERT INTO CUSTOMERS VALUES(102,'AAKASH','DESHMUKH','AAKASH23@GMAIL.COM',7854855884);

INSERT INTO CUSTOMERS VALUES(103,'SAMIR','KULKARNI','SAMIR83@GMAIL.COM',9874525014);

INSERT INTO CUSTOMERS VALUES(104,'SATISH','SOMNATHE','SATISH53@GMAIL.COM',9632585014);

INSERT INTO CUSTOMERS VALUES(105,'KUNAL','RAHULKAR','KUNAL87@GMAIL.COM',7894825258);

INSERT INTO CUSTOMERS VALUES(106,'YASH','BAJAJ','YASH6480@GMAIL.COM',7058716480);

select * from customers;

CREATE TABLE ORDERS(  
    ORDERID NUMBER(10) PRIMARY KEY,  
    CUSTOMERID NUMBER(10),  
    ORDERDATE DATE,  
    PRODUCTNAME VARCHAR2(20),  
    QUANTITY INT,  
    TOTALAMOUNT DECIMAL(10,2),  
    CONSTRAINT fk_customer FOREIGN KEY (CUSTOMERID) REFERENCES CUSTOMERS(CUSTOMERID)  
);

INSERT INTO ORDERS VALUES(1001, 101, TO_DATE('2023-01-13', 'YYYY-MM-DD'), 'SAYABIN OIL', 2, 1200) 
INSERT INTO ORDERS VALUES(1002, 102, TO_DATE('2023-01-18', 'YYYY-MM-DD'), 'COCONUT OIL', 1, 1000) 
INSERT INTO ORDERS VALUES(1003, 103, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'MUSTARD OIL', 5, 1500) 
INSERT INTO ORDERS VALUES(1004, 104, TO_DATE('2023-01-19', 'YYYY-MM-DD'), 'PINAT OIL', 1, 1400) 
INSERT INTO ORDERS VALUES(1005, 105, TO_DATE('2023-01-17', 'YYYY-MM-DD'), 'SUNFLOWER OIL', 1, 2200) 
INSERT INTO ORDERS VALUES(1006, 106, TO_DATE('2023-01-12', 'YYYY-MM-DD'), 'SUGAR', 2, 1200) 
INSERT INTO ORDERS VALUES(1007, 105, TO_DATE('2023-01-14', 'YYYY-MM-DD'), 'TATA SALT', 3, 200) 
INSERT INTO ORDERS VALUES(1008, 104, TO_DATE('2023-02-13', 'YYYY-MM-DD'), 'CHANA BESAN', 4, 2500) 
INSERT INTO ORDERS VALUES(1009, 103, TO_DATE('2023-03-15', 'YYYY-MM-DD'), 'ROSE WATER', 5, 200) 
INSERT INTO ORDERS VALUES(1010, 102, TO_DATE('2023-02-10', 'YYYY-MM-DD'), 'GULAB JAMUN MIX', 2, 500) 
INSERT INTO ORDERS VALUES(1011, 101, TO_DATE('2023-01-30', 'YYYY-MM-DD'), 'RAVA', 3, 600) 
INSERT INTO ORDERS VALUES(1012, 102, TO_DATE('2023-02-26', 'YYYY-MM-DD'), 'MAIDA', 2, 700) 
;

INSERT INTO ORDERS VALUES(1001, 101, TO_DATE('2023-01-13', 'YYYY-MM-DD'), 'SAYABIN OIL', 2, 1200);

INSERT INTO ORDERS VALUES(1002, 102, TO_DATE('2023-01-18', 'YYYY-MM-DD'), 'COCONUT OIL', 1, 1000);

INSERT INTO ORDERS VALUES(1003, 103, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 'MUSTARD OIL', 5, 1500);

INSERT INTO ORDERS VALUES(1004, 104, TO_DATE('2023-01-19', 'YYYY-MM-DD'), 'PINAT OIL', 1, 1400);

INSERT INTO ORDERS VALUES(1005, 105, TO_DATE('2023-01-17', 'YYYY-MM-DD'), 'SUNFLOWER OIL', 1, 2200);

INSERT INTO ORDERS VALUES(1006, 106, TO_DATE('2023-01-12', 'YYYY-MM-DD'), 'SUGAR', 2, 1200);

INSERT INTO ORDERS VALUES(1007, 105, TO_DATE('2023-01-14', 'YYYY-MM-DD'), 'TATA SALT', 3, 200);

INSERT INTO ORDERS VALUES(1008, 104, TO_DATE('2023-02-13', 'YYYY-MM-DD'), 'CHANA BESAN', 4, 2500);

INSERT INTO ORDERS VALUES(1009, 103, TO_DATE('2023-03-15', 'YYYY-MM-DD'), 'ROSE WATER', 5, 200) 
INSERT INTO ORDERS VALUES(1010, 102, TO_DATE('2023-02-10', 'YYYY-MM-DD'), 'GULAB JAMUN MIX', 2, 500);

INSERT INTO ORDERS VALUES(1011, 101, TO_DATE('2023-01-30', 'YYYY-MM-DD'), 'RAVA', 3, 600);

INSERT INTO ORDERS VALUES(1012, 102, TO_DATE('2023-02-26', 'YYYY-MM-DD'), 'MAIDA', 2, 700);

select * from orders;

SELECT O.ORDERID, O.ORDERDATE, O.PRODUCTNAME, O.QUANTITY, O.TOTALAMOUNT, 
C.CUSTOMERID, C.FIRSTNAME, C.LASTNAME, C.EMAIL, C.PHONENUMBER 
FROM ORDERS O 
INNER JOIN CUSTOMERS C ON O.CUSTOMERID = C.CUSTOMERID;

SELECT C.CUSTOMERID, C.FIRSTNAME, C.LASTNAME, C.EMAIL, C.PHONENUMBER 
FROM CUSTOMERS C 
LEFT JOIN ORDERS O ON C.CUSTOMERID = O.CUSTOMERID 
WHERE O.CUSTOMERID IS NULL;

