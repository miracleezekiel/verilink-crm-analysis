# LibreOffice Calc — Verilink CRM Analysis Workbook

**File:** Verilink_CRM_Analysis.ods

---

## About This Workbook

This workbook contains the full data exploration, cleaning, 
and analysis work completed for the Verilink Solutions 
CRM project. It documents customer churn patterns, 
contract type breakdowns, and tenure analysis used to 
inform HubSpot CRM configuration and customer success 
strategy.

---

## Workbook Tabs

| Tab | Purpose |
|-----|---------|
| Raw Data | Original dataset — untouched source of truth |
| Cleaned Data | Professionally formatted dataset with renamed headers |
| Summary | Key metrics — total customers, churn rate, contracts |
| Churn Analysis | Segmentation by tenure and monthly charges |
| Observations | Documented findings and business implications |
| Data Dictionary | Plain English explanation of all 21 data fields |
| HubSpot Import | 13-column dataset prepared for HubSpot import |

---

## Key Formulas Used

| Formula | What It Does |
|---------|-------------|
| COUNTA | Counts total customer records |
| COUNTIF | Counts customers matching one condition |
| COUNTIFS | Counts customers matching two or more conditions |

---

## Dataset Details

| Detail | Value |
|--------|-------|
| Source file | verilink_customers.csv |
| Total customers | 7,043 |
| Total columns | 21 |
| Column format | Underscore naming — Customer_ID, Tenure_Months |
| HubSpot import sample | 997 records — within free tier contact limit |
