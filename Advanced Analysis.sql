 Advanced Analysis:

--6.1: Create a View of Active Loans with Payments Greater than $1000

         CREATE VIEW active_loans AS
         SELECT l.loan_id, p.payment_amount
         FROM loans_data l
         JOIN loan_payments p ON l.loan_id = p.loan_id
         WHERE p.payment_amount > 1000;
  

--6.2: Create an Index on transaction_date


       CREATE INDEX idx_transaction_date ON transactions_data(transaction_date);
  
