data exploration:

  
   --4.1: Write query to retrieve all customer information:
        
       SELECT * from customers_data;



   -- 4.2: Query accounts for a specific customer:

         SELECT * FROM accounts_data WHERE customer_id = 1;
  

   --4.3: Find the customer name and account balance for each account
          
          SELECT c.first_name, c.last_name, a.balance
          FROM customers_data c
          JOIN accounts_data a ON c.customer_id = a.customer_id;



    --4.4: Analyze customer loan balances:

          SELECT c.first_name, c.last_name, l.loan_amount
           FROM customers_data c
           JOIN loans_data l ON c.customer_id = l.customer_id;
  


    -- 4.5: List all customers who have made a transaction in the 2024-03

           SELECT DISTINCT c.first_name, c.last_name
           FROM customers_data c
           JOIN accounts_data a ON c.customer_id = a.customer_id
           JOIN transactions_data t ON a.account_id = t.account_id
           WHERE t.transaction_date BETWEEN '2024-03-01' AND '2024-03-31';
  

