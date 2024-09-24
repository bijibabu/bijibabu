Aggregation and Insights:



 -- 5.1: Calculate the total balance across all accounts for each customer:
  
          SELECT c.first_name, c.last_name, SUM(a.balance) AS total_balance
          FROM customers_data c
          JOIN accounts_data a ON c.customer_id = a.customer_id
          GROUP BY c.first_name, c.last_name;


 -- 5.2: Calculate the average loan amount for each loan term:
        
        SELECT loan_term, AVG(loan_amount) AS average_loan_amount
        FROM loans_data
        GROUP BY loan_term;
  
      
  --5.3: Find the total loan amount and interest across all loans:

          SELECT SUM(loan_amount) AS total_loan_amount, SUM(interest_rate * loan_amount) AS total_interest
          FROM loans_data;
  
   --5.4: Find the most frequent transaction type:
   
          SELECT transaction_type, COUNT(*) AS transaction_count
          FROM transactions_data
          GROUP BY transaction_type
          ORDER BY transaction_count DESC;
  

   --5.5: Analyze transactions by account and transaction type:

           SELECT a.account_id, t.transaction_type, COUNT(*) AS transaction_count
           FROM accounts_data a
           JOIN transactions_data t ON a.account_id = t.account_id
           GROUP BY a.account_id, t.transaction_type;
  




  