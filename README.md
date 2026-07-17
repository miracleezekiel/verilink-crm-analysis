# Verilink Solutions — CRM Analytics, Customer Success Intelligence and AI Automation

> End-to-end CRM implementation, customer churn analysis, and AI-powered 
> retention automation for a B2B SaaS telecommunications company.

---

## Business Problem

Verilink Solutions identified a **26.5% customer churn rate** across a 
subscriber base of 7,043 customers. The business lacked visibility into 
which customers were at risk before they cancelled, and the customer 
success team had no automated way to identify and prioritize outreach.

This project delivers:

- A complete data analysis of churn patterns across customer segments
- A fully configured HubSpot CRM for daily customer support operations
- SQL-based customer segmentation for management reporting
- An AI-powered automation that identifies high-risk customers hourly 
  and delivers actionable alerts to the customer success team

---

## Key Findings

| Finding | Value |
|---------|-------|
| Overall churn rate | 26.5% — 1,869 of 7,043 customers |
| Month-to-month contract churn | 42.7% |
| New customer churn (first 12 months) | 47.4% |
| High-charge customer churn ($66–$100/month) | 37.2% |
| Monthly revenue at risk from churned customers | Quantified in SQL Query 4 |

---

## Solution Architecture
Customer Dataset (7,043 records)
↓
LibreOffice Calc — Data cleaning, churn analysis, dashboard
↓
MySQL Workbench — SQL segmentation and revenue analysis
↓
HubSpot CRM — Contact management, support operations, pipeline
↓
n8n + Groq AI + Telegram — Automated churn risk detection and alerts
---

## Tools and Technologies

| Tool | Version / Tier | Purpose |
|------|---------------|---------|
| LibreOffice Calc | 7.x | Data cleaning, analysis, dashboard |
| MySQL Workbench | 8.0 CE | SQL database and query execution |
| HubSpot CRM | Free tier | CRM administration, customer support |
| n8n | Cloud 2.30.x | Workflow automation engine |
| Groq API | Free tier — llama-3.3-70b-versatile | AI churn alert generation |
| Telegram Bot API | Free | Real-time alert delivery |
| GitHub | — | Version control and documentation |

---

## Repository Structure
verilink-crm-analysis/
│
├── README.md
├── PROJECT_OVERVIEW.md
├── DATA_DICTIONARY.md
├── LESSONS_LEARNED.md
│
├── Data/
│   ├── Raw_Data/
│   │   └── verilink_customers.csv
│   └── Cleaned_Data/
│       ├── verilink_customers_cleaned.csv
│       └── verilink_hubspot_import_final.csv
│
├── Analysis/
   └── LibreOffice_Workbook/
│       ├── README.md
│       └── Verilink_CRM_Analysis.ods
│
├── HubSpot/
│   └── README.md
│
├── SQL/
│   ├── README.md
│   └── verilink_churn_analysis.sql
│
├── n8n/
│   └── README.md
│
└── Screenshots/
├── README.md
├── HubSpot/
├── LibreOffice_Calc/
├── MySQL_Workbench/
├── n8n_Automation/
└── GitHub/

---

## Project Phases

| Phase | Description | Status |
|-------|-------------|--------|
| 1 | Dataset exploration and cleaning | ✅ Complete |
| 2 | Churn analysis — tenure and charges | ✅ Complete |
| 3 | HubSpot CRM setup and configuration | ✅ Complete |
| 4 | HubSpot customer support operations | ✅ Complete |
| 5 | SQL analysis — 6 business queries | ✅ Complete |
| 6 | n8n AI automation workflow | ✅ Complete |
| 7 | Documentation and publishing | ✅ Complete |

---

## Quick Start

See individual folder README files for tool-specific setup:

- [LibreOffice Analysis](./Analysis/LibreOffice_Workbook/README.md)
- [SQL Queries](./SQL/README.md)
- [HubSpot CRM](./HubSpot/README.md)
- [n8n Automation](./n8n/README.md)

---

## Dataset

Source: Telco Customer Churn dataset
Records: 7,043 customers, 21 columns
Key fields: Contract type, tenure, monthly charges, internet service, churn status

> HubSpot free tier supports 1,000 contacts maximum.
> 997 records were imported for CRM operations.
> The full 7,043-record dataset is used for SQL and LibreOffice analysis.

---

## Note on HubSpot Tier

This project uses HubSpot Free. Workflow automation, customer portal, 
and advanced service analytics require paid Service Hub plans. 
These are documented as future improvements.
