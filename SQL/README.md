# SQL Analysis — Verilink Solutions CRM

**Tool:** MySQL Workbench 8.0
**Database:** verilink_crm_db
**Table:** verilink_customers
**Records:** 7,043

---

## Purpose

This folder contains SQL queries written to analyze 
Verilink Solutions' customer churn data. The queries 
answer real business questions that a Customer Success 
Manager or CRM Analyst would bring to a Monday morning 
management meeting.

---

## Query Files

| File | Description |
|------|-------------|
| verilink_churn_analysis.sql | All 6 churn analysis queries |

---

## Queries Included

| Query | Business Question | Key Finding |
|-------|-----------------|-------------|
| 1 | Overall customer health | 26.5% churn rate across 7,043 customers |
| 2 | Churn by contract type | Month-to-month customers churn at 42.7% |
| 3 | Churn by tenure group | New customers churn at 47.4% in first year |
| 4 | Revenue impact of churn | Monthly revenue lost quantified in USD |
| 5 | High risk customer list | Top 20 at-risk active customers identified |
| 6 | Churn by internet service | Fiber optic customers show highest churn rate |

---

## SQL Techniques Used

| Technique | Query Used In |
|-----------|--------------|
| COUNT, SUM, AVG, ROUND | All queries |
| CASE WHEN | Queries 1, 2, 3, 4, 6 |
| GROUP BY | Queries 2, 3, 4, 6 |
| ORDER BY DESC | Queries 2, 3, 4, 5, 6 |
| BETWEEN | Query 3 |
| WHERE with multiple AND conditions | Query 5 |
| LIMIT | Query 5 |

---

## Database Setup

```sql
CREATE DATABASE verilink_crm_db;
USE verilink_crm_db;
```

Data imported using MySQL Workbench Table Data Import Wizard
from `verilink_customers_cleaned.csv` (7,043 rows, 21 columns).

---

## Cross-Validation

SQL Query 3 tenure group results were cross-validated
against LibreOffice COUNTIFS analysis. Both tools
produced identical results, confirming data integrity.
