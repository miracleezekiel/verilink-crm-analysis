# LibreOffice Calc — Verilink CRM Analysis Workbook

**File:** Verilink_CRM_Analysis.ods

---

## Purpose

This workbook contains the full data exploration, 
cleaning, and churn analysis work completed for the 
Verilink Solutions CRM project. Findings from this 
analysis directly informed the HubSpot CRM configuration, 
customer segmentation strategy, and customer support 
approach used throughout the engagement.

---

## Workbook Tabs

| Tab | Purpose |
|-----|---------|
| Raw Data | Original dataset — untouched source of truth |
| Cleaned Data | Renamed headers, formatted for analysis and import |
| Summary | Total customers, churn rate, contract breakdown |
| Churn Analysis | Segmentation by tenure groups and monthly charges |
| Observations | Documented findings and business implications |
| Data Dictionary | Plain English explanation of all 21 fields |
| HubSpot Import | 13-column file prepared for CRM import |

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
| Column naming format | Underscore — e.g. Customer_ID, Tenure_Months |

---

## Key Analysis Findings

| Finding | Value | Business Implication |
|---------|-------|---------------------|
| Overall churn rate | 26.5% | 1 in 4 customers cancelling |
| Month-to-month customers | 55% of base | Majority have no long-term commitment |
| New customer churn | Highest in 0–12 month group | First year is highest risk period |
| High charge customers | Churn faster than low charge | Revenue impact higher per churned customer |

---

## Data Cleaning Steps Applied

1. Copied raw data to Cleaned Data tab — original never modified
2. Renamed all 21 column headers using underscore format
3. Formatted header row — bold, dark background, white text
4. Deleted empty rows below row 7044
5. Deleted empty columns after column U
6. Confirmed data boundary at cell U7044
7. Created HubSpot Import tab with 13 columns for CRM upload
