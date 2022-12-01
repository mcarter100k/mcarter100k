-- Databricks notebook source
SELECT *
FROM bank_churners
WHERE customer_age >=58

UNION

SELECT *
FROM bank_churners
WHERE customer_age BETWEEN 42



-- COMMAND ----------

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
WHERE customer_age <42



-- COMMAND ----------

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

WHERE customer_age <42




-- COMMAND ----------

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
attrition_flag= 'Attrited Customer' 

AND 

customer_age <42



-- COMMAND ----------

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

SELECT
customer_age, 
gender,
income_category,
marital_status, 
months_on_book
FROM bank_churners
WHERE customer_age  >=58

-- COMMAND ----------

SELECT
customer_age, 
gender,
income_category,
marital_status, 
months_on_book
FROM bank_churners
WHERE customer_age  <58

-- COMMAND ----------

SELECT
customer_age, 
gender,
income_category,
marital_status, 
months_on_book
FROM bank_churners
WHERE customer_age  <42


-- COMMAND ----------

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

SELECT *
From bank_churners


