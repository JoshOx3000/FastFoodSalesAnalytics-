# FastFoodSalesAnalytics-
is a repository dedicated to storing data and analysis pertaining to fast food sales.

 Fast Food Sales Analytics

 Dataset Source
[Fast Food Sales Report](https://www.kaggle.com/datasets/rajatsurana979/fast-food-sales-report)

 Overview
This repository contains data and analysis related to fast food sales. The dataset was sourced from Kaggle and includes information on transaction details within the fast food industry.

#### Data Preparation
- Downloaded CSV dataset from Kaggle.
- Conducted data cleaning process to address missing values and removed unnecessary columns.
- Reset dates to the date format YYYY-MM-DD for easy import into MySQL.
- Filled in missing dates starting from January 1, 2021.
- Identified and removed records with missing values in the `transaction_type` column.

#### Database Creation
- Created a MySQL database titled "foodsalesdata".
- Constructed a table named "sales" with appropriate columns, utilizing researched data types and constraints.

#### Table Structure

| Column Name       | Description             | Data Type   | Constraints |
|-------------------|-------------------------|-------------|-------------|
| order_id          | Order ID                | INT         | NOT NULL    |
| transaction_date  | Date of Transaction     | DATE        | NOT NULL    |
| item_name         | Item Name               | VARCHAR(30) | NOT NULL    |
| item_type         | Type of Item            | VARCHAR(30) | NOT NULL    |
| item_price        | Price                   | DECIMAL(10,2)| NOT NULL    |
| Quantity          | Quantity                | INT         | NOT NULL    |
| transaction_amount| Transaction Amount      | DECIMAL(10,2)| NOT NULL    |
| transaction_type  | Transaction Type        | VARCHAR(30) | NOT NULL    |
| time_of_sale      | Time of Sale            | VARCHAR(30) | NOT NULL    |

#### SQL Code for Table Creation
```sql
CREATE TABLE sales (
	order_id INT NOT NULL PRIMARY KEY,
    transaction_date DATE NOT NULL,
    item_name VARCHAR(30) NOT NULL,
    item_type VARCHAR(30) NOT NULL,
    item_price DECIMAL(10,2) NOT NULL,
    Quantity INT NOT NULL,
    transaction_amount DECIMAL(10,2) NOT NULL,
    transaction_type VARCHAR(30) NOT NULL,
    time_of_sale VARCHAR(30) NOT NULL
);
```

#### Data Analysis
- Utilized SQL queries to perform data evaluation and generate insights.
- Analyzed total revenue by date, total quantity sold by item type, average transaction amount by transaction type, and more.

#### Insights
- Top-selling item identified as Cold Coffee or Iced Coffee, suggesting potential for expanding flavor variety.
- Majority of transactions are cash purchases, indicating an opportunity to promote online orders to enhance customer experience and reduce wait time.
- Fast food items outsell beverages; bundling drinks with items may increase profit margins per order.
  
#### Conclusion
This analysis provides valuable insights for optimizing sales strategies and enhancing customer satisfaction within the fast food industry. Adjustments such as expanding beverage options, promoting online ordering, and bundling items with drinks can contribute to increased profitability and improved customer experience.
