# LibreOffice Calc — Verilink CRM Analysis Workbook

**File:** Verilink_CRM_Analysis.ods

---

## About This Workbook

This workbook contains the full data exploration, cleaning, 
and analysis work completed for the Verilink Solutions CRM 
implementation project. It documents customer churn patterns, 
contract type breakdowns, and tenure analysis used to inform 
HubSpot CRM configuration and customer success strategy.

---

## Workbook Tabs

| Tab Name | What It Contains |
|----------|-----------------|
| Raw Data | Original customer dataset — untouched source of truth |
| Cleaned Data | Professionally formatted dataset with standardized column headers |
| Summary | Key business metrics — total customers, churn rate, contract breakdown |
| Churn Analysis | Customer segmentation by tenure and monthly charges |
| Observations | Documented findings and business implications from each analysis |
| Data Dictionary | Plain English explanation of all 21 data fields |
| HubSpot Import | Dataset prepared and formatted for HubSpot CRM import |

---

## Formulas Used

| Formula | What It Does |
|---------|-------------|
| COUNTA | Counts total customer records |
| COUNTIF | Counts customers matching one specific condition |
| COUNTIFS | Counts customers matching two or more conditions at once |

---

## Dataset Details

| Detail | Value |
|--------|-------|
| Source file | verilink_customers.csv |
| Total customers | 7,043 |
| Total columns | 21 |
| Column format | Underscore naming — example: Customer_ID, Tenure_Months |
| HubSpot import sample | 997 records — within free tier limit |
