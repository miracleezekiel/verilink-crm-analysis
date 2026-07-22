# Verilink Solutions — Customer Success Intelligence System and AI Automation

> End-to-end CRM implementation, churn analysis, and AI-powered 
> retention automation for a B2B SaaS telecommunications company.

---

## The Problem

Verilink Solutions had a **26.5% customer churn rate** across 7,043 
subscribers. The customer success team had no systematic way to 
identify at-risk customers before they cancelled, no automated 
alerting process, and no audit trail of retention activity.

---

## The Solution

A complete customer success intelligence system built across five 
tools — delivering data-driven churn insights, a fully operational 
CRM, SQL-based reporting, and an AI automation that identifies 
high-risk customers hourly and alerts the team via Telegram.

---

## 🎥 Solution Demonstration

## 🎥 Solution Demonstration

Watch the complete demonstration of the Verilink Customer Success Intelligence System, showcasing the end-to-end implementation from CRM configuration and SQL analysis to AI-powered workflow automation.

The demonstration covers:

- HubSpot CRM configuration
- Customer segmentation and contact management
- SQL churn analysis and reporting
- n8n workflow automation
- AI-generated customer retention summaries
- Telegram customer success alerts
- Google Sheets audit logging
- Workflow failure monitoring

📹 **Watch the Full Solution Demonstration**

https://github.com/miracleezekiel/verilink-crm-analysis/releases/tag/v1.0
---

## Key Results

| Metric | Finding |
|--------|---------|
| Overall churn rate | 26.5% — 1,869 of 7,043 customers |
| Month-to-month contract churn | 42.7% |
| New customer churn (first 12 months) | 47.4% |
| High-charge customer churn ($66–$100/month) | 37.2% |
| High-risk customers identified per automation run | ~23 per 100 contacts |
| Manual monitoring time replaced | 30–45 minutes daily |

---

## System Architecture
7,043 Customer Records
│
       ▼
┌───────────────────┐
│  LibreOffice Calc │  Data cleaning, churn analysis, KPI dashboard
└───────────────────┘
│
▼
┌───────────────────┐
│  MySQL Workbench  │  6 SQL business reports — segmentation,
└───────────────────┘  revenue, tenure, executive summary
│
▼
┌───────────────────┐
│   HubSpot CRM     │  997 contacts imported, custom properties,
└───────────────────┘  pipeline, segments, 15 support interactions
│
▼
┌─────────────────────────────────────────┐
│           n8n Automation                │
│                                         │
│  Schedule → HubSpot API → Split →       │
│  Validate → Filter × 2 → Groq AI →     │
│  Telegram Alert → Google Sheets Log     │
└─────────────────────────────────────────┘
│                    │
▼                    ▼
Telegram Alert      Google Sheets Audit Log
(Customer Success)  (Every alert recorded)
│
  ▼
┌─────────────────────┐
│  Error Monitor      │  Separate workflow — Telegram alert
└─────────────────────┘  on any automation failure

---

## Tools and Technologies

| Tool | Purpose |
|------|---------|
| LibreOffice Calc | Data cleaning, churn analysis, KPI dashboard |
| MySQL Workbench 8.0 | SQL database and business reporting queries |
| HubSpot CRM (Free) | Contact management, pipeline, customer support |
| n8n Cloud | Workflow automation engine |
| Groq API (llama-3.3-70b-versatile) | AI churn alert generation |
| Telegram Bot API | Real-time alert delivery |
| Google Sheets | Production alert audit log |
| GitHub | Version control and project documentation |

---

## Repository Structure
verilink-crm-analysis/
│
├── README.md                    ← You are here
├── PROJECT_OVERVIEW.md          ← Business context and engagement summary
├── DATA_DICTIONARY.md           ← All 21 dataset fields explained
├── LESSONS_LEARNED.md           ← Real technical challenges and resolutions
│
├── Data/
│   ├── Raw_Data/
│   │   └── verilink_customers.csv
│   └── Cleaned_Data/
│       ├── verilink_customers_cleaned.csv
│       └── verilink_hubspot_import_final.csv
│
├── Analysis/
│   └── LibreOffice_Workbook/
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
| 2 | Churn analysis — tenure, charges, contracts | ✅ Complete |
| 3 | HubSpot CRM setup and configuration | ✅ Complete |
| 4 | HubSpot customer support operations | ✅ Complete |
| 5 | SQL analysis — 6 business queries | ✅ Complete |
| 6 | n8n AI churn alert automation | ✅ Complete |
| 7 | Error monitoring workflow | ✅ Complete |
| 8 | Google Sheets audit logging | ✅ Complete |
| 9 | Documentation and publishing | ✅ Complete |

---

## Dataset Details

- Source: Telco Customer Churn dataset
- Total records: 7,043 customers, 21 columns
- HubSpot import: 997 records (free tier limit: 1,000 contacts)
- Full dataset used for: LibreOffice analysis and MySQL queries

---

## Future Production Enhancements

| Enhancement | Description |
|-------------|-------------|
| Duplicate alert prevention | Check Google Sheets log before alerting — skip if already notified within 24 hours |
| HubSpot write-back | After flagging a customer, update their CRM record automatically |
| Weekly digest | Monday morning Telegram summary of all customers flagged during the week |
| Real-time trigger | Replace Schedule Trigger with HubSpot webhook on paid account upgrade |

---

*Built to demonstrate CRM Administration, Customer Success Operations,
SQL Analysis, and AI Automation for remote roles across the Globe
