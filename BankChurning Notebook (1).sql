-- Databricks notebook source
-- Bank Churners Dataset (10,127)

SELECT *
From bank_churners



-- COMMAND ----------

--Pulling certian demographics to find solution

SELECT Customer_age,
gender,
dependent_count,
marital_status,
income_category,
credit_limit,
Total_Relationship_Count,
Months_on_book,
attrition_flag

FROM bank_churners

-- COMMAND ----------

-- Showing Demographics of all 'Millinnials' generation

SELECT
customer_age, 
gender,
income_category,
marital_status, 
months_on_book
FROM bank_churners
WHERE customer_age  <42


-- COMMAND ----------

-- Showing Demographics of all 'GenX' generation

SELECT
customer_age, 
gender,
income_category,
marital_status, 
months_on_book
FROM bank_churners
WHERE customer_age BETWEEN 42 AND 57

-- COMMAND ----------

--Showing Demographics of all 'Boomers' generation

SELECT
customer_age, 
gender,
income_category,
marital_status, 
months_on_book
FROM bank_churners
WHERE customer_age  >=58

-- COMMAND ----------

-- Combining both Customers types grouped by generation (Millinnials)

SELECT 
Customer_age,
gender,
dependent_count,
marital_status,
income_category,
credit_limit,
Months_on_book,
attrition_flag,
Education_Level

FROM bank_churners



WHERE 
attrition_flag = 'Existing Customer' 
AND 
Customer_age <42

UNION 

SELECT 
Customer_age,
gender,
dependent_count,
marital_status,
income_category,
credit_limit,
Months_on_book,
attrition_flag,
Education_Level

FROM bank_churners
WHERE attrition_flag = 'Attrited Customer'
AND 
Customer_age <42



-- COMMAND ----------

-- Combining both Customers types grouped by generation (GenX)

SELECT 
Customer_age,
gender,
dependent_count,
marital_status,
income_category,
credit_limit,
Months_on_book,
attrition_flag,
Education_Level

FROM bank_churners



WHERE 
attrition_flag = 'Existing Customer' 
AND 
Customer_age BETWEEN 42 AND 57

UNION 

SELECT 
Customer_age,
gender,
dependent_count,
marital_status,
income_category,
credit_limit,
Months_on_book,
attrition_flag,
Education_Level

FROM bank_churners
WHERE attrition_flag = 'Attrited Customer'
AND 
Customer_age  BETWEEN 42 AND 57


-- COMMAND ----------

-- Combining both Customers types grouped by generation (Boomers)

SELECT 
Customer_age,
gender,
dependent_count,
marital_status,
income_category,
credit_limit,
Months_on_book,
attrition_flag,
Education_Level

FROM bank_churners



WHERE 
attrition_flag = 'Existing Customer' 
AND 
Customer_age >=58

UNION 

SELECT 
Customer_age,
gender,
dependent_count,
marital_status,
income_category,
credit_limit,
Months_on_book,
attrition_flag,
Education_Level

FROM bank_churners
WHERE attrition_flag = 'Attrited Customer'
AND 
Customer_age >=58


-- COMMAND ----------

-- Showing only Attrited customers by generation (Millinnials)

SELECT 
Customer_age,
gender,
dependent_count,
marital_status,
income_category,
credit_limit,
Total_Relationship_Count,
Months_on_book,
attrition_flag

FROM bank_churners

WHERE attrition_flag = 'Attrited Customer'

AND 

Customer_age <42



-- COMMAND ----------

-- Showing only Attrited customers by generation (GenX)

SELECT 
Customer_age,
gender,
dependent_count,
marital_status,
income_category,
credit_limit,
Total_Relationship_Count,
Months_on_book,
attrition_flag

FROM bank_churners

WHERE attrition_flag = 'Attrited Customer'

AND 

Customer_age BETWEEN 42 AND 57


-- COMMAND ----------

-- Showing only Attrited customers by generation (Boomers)

SELECT 
Customer_age,
gender,
dependent_count,
marital_status,
income_category,
credit_limit,
Total_Relationship_Count,
Months_on_book,
attrition_flag

FROM bank_churners

WHERE attrition_flag = 'Attrited Customer'

AND 

Customer_age >=58

