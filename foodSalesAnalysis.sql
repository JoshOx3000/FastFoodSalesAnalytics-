-- Question 1 --  
-- What is the total revenue by date ---- 

SELECT transaction_date, SUM(transaction_amount) AS total_revenue 
FROM sales
GROUP BY transaction_date;


-- Total Quantity Sold by Item Type --- 
SELECT item_type, SUM(quantity) AS total_qty_sold
FROM sales
GROUP BY item_type

-- Average Transaction Amount by Transaction Type ---

SELECT transaction_type, AVG(transaction_amount) AS Avg_Trans_Amt
FROM sales
GROUP BY transaction_type;


-- Top Selling Items -- 

SELECT  item_name, SUM(quantity) AS qty_sold
FROM sales
GROUP BY item_name
ORDER BY qty_sold DESC;

-- Average transaction amount by transaction type ---

SELECT  transaction_type,  AVG(transaction_amount) AS Avg_trans_amt
FROM sales
GROUP BY transaction_type
ORDER BY Avg_trans_amt DESC;





