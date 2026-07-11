# CRM Analytics, Customer Success Intelligence and AI Automation
## Verilink Solutions — B2B SaaS

---

### Project Overview

Verilink Solutions is a B2B SaaS company. This project documents the CRM implementation, 
customer churn analysis, and AI automation work done for their customer success team. 
The project analyzes a customer dataset of 7,043 records to identify churn 
patterns, build a structured CRM environment in HubSpot, and 
develop AI-powered automation workflows using n8n and Groq API.

The goal is to demonstrate how a CRM Support Specialist and 
Operations Analyst can combine data analysis, CRM administration, 
and AI automation to reduce customer churn and improve retention.

---

### Business Problem

Verilink Solutions has a 26.5% customer churn rate. More than one 
in four customers is cancelling their subscription. The business 
needs to understand who is churning, why, and how to detect 
at-risk customers before they leave.

---

### Dataset

- Source: Telco Customer Churn dataset — Kaggle
- Size: 7,043 customers, 21 columns
- Key fields: Contract type, tenure, monthly charges, 
  internet service, tech support, churn status

---

### Tools Used

| Tool | Purpose |
|------|---------|
| LibreOffice Calc | Data exploration, cleaning, and analysis |
| HubSpot CRM | CRM setup, contact management, pipeline configuration |
| MySQL Workbench | SQL-based customer segmentation and reporting |
| n8n | Workflow automation connecting CRM to AI tools |
| Groq API | AI-powered lead scoring and churn risk detection |
| Telegram Web | Real-time automated alerts for high-risk customers |
| GitHub | Version control and project documentation |

---
verilink-crm-analysis
├── Data
│   ├── Raw_Data        — Original Kaggle dataset
│   └── Cleaned_Data    — Processed dataset ready for CRM import
├── Analysis
│   └── LibreOffice_Workbook  — Main analysis workbook
├── SQL
│   └── Query files for customer segmentation
├── Screenshots
│   ├── LibreOffice_Calc
│   ├── HubSpot
│   ├── MySQL_Workbench
│   ├── n8n_Automation
│   └── GitHub
└── README.md

---

### Project Status

| Phase | Description | Status |
|-------|-------------|--------|
| Phase 1 | Dataset exploration and cleaning in LibreOffice | Complete |
| Phase 2 | Churn analysis — tenure groups and monthly charges | Complete |
| Phase 3 | HubSpot CRM setup — properties, pipeline, data import | Complete |
| Phase 4 | SQL analysis in MySQL Workbench | In progress |
| Phase 5 | AI automation with n8n and Groq API | Upcoming |
| Phase 6 | GitHub documentation and LinkedIn publishing | Ongoing |

---

### Key Findings So Far

- Overall churn rate: 26.5% — 1,869 of 7,043 customers churned
- 55% of all customers are on month-to-month contracts
- New customers under 12 months tenure show the highest churn rate
- Month-to-month contract customers churn significantly more than 
  one-year or two-year contract customers

---

### HubSpot CRM Setup

- 6 custom contact properties created
- Deal pipeline configured with 7 stages
- 997 customer records imported from cleaned dataset
- 3 test contacts manually created for property verification

---

### Note on Dataset Size and HubSpot Free Tier

The full dataset contains 7,043 customer records. HubSpot's free 
tier supports a maximum of 1,000 contacts. A sample of 997 records 
was imported to demonstrate the full import process, property 
mapping, and CRM structure. In a production environment, a paid 
HubSpot account would be used to import the complete dataset.

### Repository Structure
