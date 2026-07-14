USE verilink_crm_db;

DESCRIBE verilink_customers;

USE verilink_crm_db;

-- Query 1: Overall Customer and Churn Summary
-- Purpose: Gives management a quick health check of the customer base

SELECT
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn_Status = 'Yes' THEN 1 ELSE 0 END) AS Total_Churned,
    SUM(CASE WHEN Churn_Status = 'No' THEN 1 ELSE 0 END) AS Total_Active,
    ROUND(
        SUM(CASE WHEN Churn_Status = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        1
    ) AS Churn_Rate_Percentage
FROM verilink_customers;

-- Query 2: Churn Rate by Contract Type

SELECT
    Contract_Type,
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn_Status = 'Yes' THEN 1 ELSE 0 END) AS Churned,
    SUM(CASE WHEN Churn_Status = 'No' THEN 1 ELSE 0 END) AS Active,
    ROUND(
        SUM(CASE WHEN Churn_Status = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        1
    ) AS Churn_Rate_Percentage
FROM verilink_customers
GROUP BY Contract_Type
ORDER BY Churn_Rate_Percentage DESC;

-- Query 3: Churn Rate by Customer Tenure Group

SELECT
    CASE
        WHEN Tenure_Months BETWEEN 0 AND 12 THEN 'New (0-12 Months)'
        WHEN Tenure_Months BETWEEN 13 AND 24 THEN 'Growing (13-24 Months)'
        WHEN Tenure_Months BETWEEN 25 AND 48 THEN 'Established (25-48 Months)'
        ELSE 'Loyal (49+ Months)'
    END AS Tenure_Group,

    COUNT(*) AS Total_Customers,

    SUM(CASE WHEN Churn_Status='Yes' THEN 1 ELSE 0 END) AS Churned,

    ROUND(
        SUM(CASE WHEN Churn_Status='Yes' THEN 1 ELSE 0 END) *100.0/COUNT(*),
        1
    ) AS Churn_Rate_Percentage

FROM verilink_customers

GROUP BY Tenure_Group

ORDER BY Churn_Rate_Percentage DESC;

-- Query 4: Monthly Revenue by Churn Status

SELECT
    Churn_Status,
    COUNT(*) AS Customer_Count,
    ROUND(SUM(Monthly_Charges),2) AS Total_Monthly_Revenue,
    ROUND(AVG(Monthly_Charges),2) AS Average_Monthly_Charge
FROM verilink_customers
GROUP BY Churn_Status
ORDER BY Total_Monthly_Revenue DESC;

-- Query 5: High Risk Customer Identification

SELECT
    Customer_ID,
    Contract_Type,
    Tenure_Months,
    Monthly_Charges,
    Internet_Service,
    Phone_Service,
    Churn_Status
FROM verilink_customers
WHERE
    Contract_Type='Month-to-month'
    AND Tenure_Months <12
    AND Monthly_Charges >65
    AND Churn_Status='No'
ORDER BY Monthly_Charges DESC
LIMIT 20;