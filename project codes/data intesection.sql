-- cretaing tables for customers_data

CREATE TABLE customers_data (
     customer_id INT PRIMARY KEY,
     first_name VARCHAR(50),
     last_name VARCHAR(50),
     address VARCHAR(100),
     city VARCHAR(50),
     state VARCHAR(50),
     zip VARCHAR(20)
   );

INSERT INTO customers_data (customer_id, first_name, last_name, address, city, state, zip)
   VALUES
          (1, 'John', 'Doe', '123 elm St', 'Toronto', 'on', 'M4B1B3'),
          (2,'Jane', 'Jane', '456 Maple Ave', 'Ottawa', 'on', 'K1A0B1'),
          (3, 'Michael', 'Johnson', '789 oak Dr', 'Montreal', 'QC', 'H1A1A1'),
          (4,'Emily', 'Davis', '101 pine Rd', 'Calgary', 'AB', 'T2A0A1'),
          (5,'David','wilson','202 Birch Blvd','vancouver','BC','V5K0A1');

select * from customers_data;



--creating a table for accounts _data

CREATE TABLE accounts_data (
     account_id INT PRIMARY KEY,
     customer_id INT,
     account_type VARCHAR(50),
     balance DECIMAL(10, 2),
     FOREIGN KEY (customer_id) REFERENCES customers_data (customer_id)
   );

    INSERT INTO accounts_data (account_id,customer_id,account_type,balance)
   VALUES
        ( 1,1,'Savings',1000.50),
        ( 2,2,'Checking',2500.75),
        ( 3,3,'Savings',1500.00),
        ( 4,4,'Checking',3000.25),
        (5,5,'Savings',500.00);

    select * from  accounts_data;

        --creating for transaction_data

    CREATE TABLE transactions_data (
     transaction_id INT PRIMARY KEY,
     account_id INT,
     transaction_date DATE,
     transaction_amount DECIMAL(10, 2),
     transaction_type VARCHAR(50),
     FOREIGN KEY (account_id) REFERENCES accounts_data(account_id)
   );

   INSERT INTO  transactions_data ( transaction_id,account_id,transaction_date,transaction_amount,transaction_type)
   VALUES( 1,1,'2024-01-01',100.50,'Deposit'),
         ( 2,2,'2024-01-02',200.75,'Withdrawal'),
         (3,3,'2024-01-03',150.00,'Deposit'),
         ( 4,4,'2024-01-04',300.25,'Withdrawal'),
         (5,5,'2024-01-05',250.00,'Deposit');

select * from transactions_data; 

--creating table for loans


CREATE TABLE loans_data (
     loan_id INT PRIMARY KEY,
     customer_id INT,
     loan_amount DECIMAL(10, 2),
     interest_rate DECIMAL(5, 2),
     loan_term INT,
     FOREIGN KEY (customer_id) REFERENCES customers_data(customer_id)
   );


INSERT INTO loans_data(loan_id,customer_id,loan_amount,interest_rate,loan_term)
values
      (1,1,10000.50,5.5,36),
      (2,2,20000.75,4.5,48),
      (3,3,15000.00,6.0,60),
      (4,4,30000.25,3.5,24),
      (5,5,25000.00,5.0,36);

select * from loans_data;


--creating  for loan payment

CREATE TABLE loan_payments_data (
     payment_id INT PRIMARY KEY,
     loan_id INT,
     payment_date DATE,
     payment_amount DECIMAL(10, 2),
     FOREIGN KEY (loan_id) REFERENCES loans_data(loan_id)
   );

INSERT INTO loan_payments_data(payment_id, loan_id, payment_date, payment_amount)

VALUES
       (1,1,'2024-01-01',100.00),
       (2,2,'2024-01-02',150.00),
       (3,3,'2024-01-03',200.00),
       (4,4,'2024-01-04',250.00),
       (5,5,'2024-01-05',300.00);


select * from loan_payments_data;

