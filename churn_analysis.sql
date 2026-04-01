CREATE DATABASE churn_analysis;
USE churn_analysis;

CREATE TABLE churn (
	RowNumber INT,
    CustomerId BIGINT,
    Surname VARCHAR(50),
    CreditScore INT,
    Geography VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Tenure INT,
    Balance DECIMAL(15,2),
    NumOfProducts INT,
    HasOfCard INT,
    IsActiveMember INT,
    EstimatedSalary DECIMAL(15,2),
    Exited INT
    );
    
    SELECT count(*) FROM churn;
    
    SELECT * FROM churn LIMIT 5;
    
-- Query 1 — Overall Churn Rate
-- Business question: What % of customers actually churned?

SELECT
	COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    round(SUM(Exited) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM churn;

/* 20.37% of customers churned — that means 1 in 
5 customers left the bank. In real banking, 
anything above 15% is considered a serious problem!*/

-- Query 2 — Churn by Geography
-- Business question: Which country has the highest churn rate?

SELECT
    Geography,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    round(sum(Exited) * 100.0 / Count(*), 2) AS churn_rate_percent
FROM churn
GROUP BY Geography
ORDER BY churn_rate_percent DESC;

/* Germany has double the churn rate of France 
and Spain! This is a major red flag for the bank 
something is clearly wrong with customer 
retention in Germany specifically. Could be 
competition, pricing, or service quality. */

-- Query 3 — Churn by Gender
-- Business question: Do male or female customers churn more?

SELECT
    Gender,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churn_customers,
    round(SUM(Exited) * 100 / COUNT(*), 2) AS churn_rate_percent
FROM churn
GROUP BY Gender 
ORDER BY churn_rate_percent DESC;

/*Female customers churn more than male customers! 
This suggests the bank's products or services 
may not be meeting the needs of female customers 
as well as male customers.*/

-- Query 4 — Churn by Age Group
-- Business question: Which age group churns the most?

SELECT
    CASE
        WHEN Age < 30 THEN 'Under 30'
        WHEN Age BETWEEN 30 AND 45 THEN '30-45'
        WHEN Age BETWEEN 46 AND 60 THEN '46-60'
        ELSE 'Above 60'
	END AS age_group,
    COUNT(*) AS total_customers, 
    SUM(Exited) AS churned_customers,
    round(SUM(exited) * 100 / COUNT(*), 2) AS churn_rate_percent
FROM churn
GROUP BY age_group
ORDER BY churn_rate_percent DESC;

/* Middle-aged customers (46-60) are churning at 51% */

-- Query 5 — Churn by Active Membership
-- Business question: Do inactive members churn more than active members?

SELECT 
     CASE WHEN IsActicveMember = 1 THEN 'Active' ELSE 'Inactive' END AS member_status,
     count(*) AS total_customers,
     sum(Exited) AS churned_customers,
     round(sum(Exited) * 100 / count(*), 2) AS churn_rate_percent
	FROM churn 
    GROUP BY IsActicveMember
    ORDER BY churn_rate_percent DESC;
    
    /* Inactive members churn at almost double the rate of 
    active members (26.85% vs 14.27%)! */
    
-- Query 6 — Churn by Number of Products
-- Business question: Do customers with more bank products stay longer?
    
SELECT
	NumOfProducts,
    COUNT(*) AS total_customers,
    SUM(Exited) AS churned_customers,
    ROUND(SUM(Exited) * 100 / COUNT(*), 2) AS churn_rate_percent
FROM churn
GROUP BY NumOfProducts
ORDER BY NumOfProducts;

/*  The sweet spot is 2 products — only 7.58% churn rate!
But customers with 3 or 4 products 
churn at 82% and 100%! This seems 
counterintuitive but makes sense — customers 
with too many products may feel over-sold, 
trapped, or frustrated with complexity. */
