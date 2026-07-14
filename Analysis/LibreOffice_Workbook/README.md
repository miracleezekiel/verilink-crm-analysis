# LibreOffice Calc — Verilink CRM Analysis Workbook

**File:** Verilink_CRM_Analysis.ods

---

## Purpose

This workbook documents the full data exploration,
cleaning, and churn analysis completed for the
Verilink Solutions CRM engagement. Findings directly
informed HubSpot CRM configuration, customer
segmentation strategy, and customer support priorities.

---

## Workbook Tabs

| Tab | Purpose |
|-----|---------|
| Raw Data | Original dataset — never edited |
| Cleaned Data | Renamed headers, formatted for analysis |
| Summary | Total customers, churn rate, contract breakdown |
| Churn Analysis | Tenure groups and monthly charge segmentation |
| Observations | Documented findings with business implications |
| Data Dictionary | Plain English explanation of all 21 fields |
| HubSpot Import | 13-column file prepared for CRM upload |
| Dashboard | Visual charts — churn rate by tenure and charges |

---

## Dashboard Charts

| Chart | Business Insight |
|-------|----------------|
| Churn Rate by Customer Tenure Group | First year customers churn at 47.4% |
| Churn Rate by Monthly Charge Group | High charge customers churn at 37.2% |

---

## Key Formulas Used

| Formula | Purpose |
|---------|---------|
| COUNTA | Total customer count |
| COUNTIF | Single-condition customer counts |
| COUNTIFS | Multi-condition segmentation |

---

## Key Findings

| Finding | Value | Business Implication |
|---------|-------|---------------------|
| Overall churn rate | 26.5% | 1 in 4 customers cancelling |
| Month-to-month customers | 55% of base | Majority without long-term commitment |
| New customer churn | 47.4% in year one | First year is highest risk period |
| High charge customers | 37.2% churn rate | Most valuable customers leaving fastest |

---

## SQL Cross-Validation

All LibreOffice findings were independently verified
using SQL queries in MySQL Workbench. Results matched
exactly, confirming the reliability of both analysis methods.
