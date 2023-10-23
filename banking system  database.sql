CREATE DATABASE bank;
USE bank;
CREATE TABLE tbl_customer
   (
       customer_id VARCHAR(6),
       first_name VARCHAR(30),
       middle_name VARCHAR(30),
       last_name VARCHAR(30),
       city VARCHAR(15),
       mobile_no VARCHAR(10),
       occupation VARCHAR(10),
       date_of_birth DATE,
      CONSTRAINT customer_customer_id_pk PRIMARY KEY(customer_id)   
   );

CREATE TABLE tbl_branch
   (
    branch_id VARCHAR(6),
    branch_name VARCHAR(30),
    branch_city VARCHAR(30),
    CONSTRAINT branch_bid_pk PRIMARY KEY(bid) 
   );

   CREATE TABLE tbl_account
   (
      account_number VARCHAR(6),
      customer_id  VARCHAR(6),
      branch_id VARCHAR(6),
      opening_balance INT,
      account_opening_date DATE,
      account_type VARCHAR(10),
      account_status VARCHAR(10),
      CONSTRAINT account_account_number_pk PRIMARY KEY(acnumber),
      CONSTRAINT account_customer_id_fk FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
      CONSTRAINT account_branch_id_fk FOREIGN KEY(branch_id) REFERENCES branch(bid) 
    );

	CREATE TABLE tbl_trandetails
    (   
     transaction_number VARCHAR(6),
     account_number VARCHAR(6),
     date_of_transaction DATE,
     medium_of_transaction VARCHAR(20),
     transaction_type VARCHAR(20),
     transaction_amount INT,    
     CONSTRAINT trandetails_transaction_number_pk PRIMARY KEY(transaction_number),
     CONSTRAINT trandetails_account_number_fk FOREIGN KEY(account_number) REFERENCES account(account_number)  
    );

	CREATE TABLE tbl_loan
   (
   
    customer_id VARCHAR(6),
    branch_id VARCHAR(6),
    loan_amount INT,
    CONSTRAINT loan_customer_custid_branch_id_pk PRIMARY KEY(customer_id,branch_id),
    CONSTRAINT loan_customer_id_fk FOREIGN KEY(customer_id) REFERENCES  customer(customer_id),
    CONSTRAINT loan_branch_id_fk FOREIGN KEY(branch_id) REFERENCES  branch(branch_id)
   );

INSERT INTO tbl_customer VALUES('C00001','Ramesh','Chandra','Sharma','Delhi','9543198345','Service','1976-12-06');
INSERT INTO tbl_customer VALUES('C00002','Avinash','Sunder','Minha','Delhi','9876532109','Service','1974-10-16');
INSERT INTO tbl_customer VALUES('C00003','Rahul',null,'Rastogi','Delhi','9765178901','Student','1981-09-26');
INSERT INTO tbl_customer VALUES('C00004','Parul',null,'Gandhi','Delhi','9876532109','Housewife','1976-11-03');
INSERT INTO tbl_customer VALUES('C00005','Naveen','Chandra','Aedekar','Mumbai','8976523190','Service','1976-09-19');
INSERT INTO tbl_customer VALUES('C00006','Chitresh',null,'Barwe','Mumbai','7651298321','Student','1992-11-06');
INSERT INTO tbl_customer VALUES('C00007','Amit','Kumar','Borkar','Mumbai','9875189761','Student','1981-09-06');
INSERT INTO tbl_customer VALUES('C00008','Nisha',null,'Damle','Mumbai','7954198761','Service','1975-12-03');
INSERT INTO tbl_customer VALUES('C00009','Abhishek',null,'Dutta','Kolkata','9856198761','Service','1973-05-22');
INSERT INTO tbl_customer  VALUES('C00010','Shankar',null,'Nair','Chennai','8765489076','Service','1976-07-12');


INSERT INTO tbl_branch VALUES('B00001','Asaf ali road','Delhi');
INSERT INTO tbl_branch VALUES('B00002','New delhi main branch','Delhi');
INSERT INTO tbl_branch VALUES('B00003','Delhi cantt','Delhi');
INSERT INTO tbl_branch VALUES('B00004','Jasola','Delhi');
INSERT INTO tbl_branch VALUES('B00005','Mahim','Mumbai');
INSERT INTO tbl_branch VALUES('B00006','Vile parle','Mumbai');
INSERT INTO tbl_branch VALUES('B00007','Mandvi','Mumbai');
INSERT INTO tbl_branch VALUES('B00008','Jadavpur','Kolkata');
INSERT INTO tbl_branch VALUES('B00009','Kodambakkam','Chennai');
