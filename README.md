# CRM Analytics, Customer Success Intelligence 
# and AI Automation
## Verilink Solutions — B2B SaaS Telecommunications

---

## Project Overview

This project documents the complete CRM implementation,
customer churn analysis, daily customer support operations,
and AI automation work completed for Verilink Solutions,
a B2B SaaS company in the telecommunications sector.

---

## Business Problem

Verilink Solutions had a 26.5% customer churn rate
across a subscriber base of 7,043 customers.

The objective was to:
1. Analyze customer data to identify churn patterns
2. Configure HubSpot CRM for the customer support team
3. Build SQL-driven customer segmentation for reporting
4. Automate churn risk detection using AI workflows

---

## Key Findings

| Finding | Detail |
|---------|--------|
| Overall churn rate | 26.5% across 7,043 customers |
| Highest risk contract | Month-to-month at 42.7% churn |
| Most vulnerable period | First 12 months — 47.4% churn |
| Revenue concentration | High-charge customers churn at 37.2% |

---

## Tools and Technologies

| Tool | Purpose |
|------|---------|
| LibreOffice Calc | Data cleaning, churn analysis, dashboards |
| HubSpot Free CRM | CRM administration, customer support ops |
| MySQL Workbench | SQL queries and customer segmentation |
| n8n | AI automation workflows |
| Groq API | AI-powered churn risk detection |
| Telegram Web | Real-time automated alerts |
| GitHub | Version control and documentation |

---

## Repository Structure

| Folder | Contents |
|--------|---------|
| Data/Raw_Data | Original dataset |
| Data/Cleaned_Data | Processed files for analysis and import |
| Analysis/LibreOffice_Workbook | Full analysis workbook |
| HubSpot | CRM operations documentation |
| SQL | SQL query files |
| n8n | Automation workflows (upcoming) |
| Screenshots | Tool-organized screenshots |

---

## Project Phases

| Phase | Description | Status |
|-------|-------------|--------|
| 1 | Data exploration and cleaning | ✅ Complete |
| 2 | Churn analysis in LibreOffice | ✅ Complete |
| 3 | HubSpot CRM setup and admin | ✅ Complete |
| 4 | HubSpot customer support operations | ✅ Complete |
| 5 | SQL analysis in MySQL Workbench | ✅ Complete |
| 6 | AI automation with n8n and Groq API | ⏳ Upcoming |
| 7 | Final documentation and publishing | 🔄 Ongoing |

---

## HubSpot CRM Summary

- 997 customer records imported with 0 errors
- 10 custom properties in Verilink Customer Data group
- 15 customer support interactions documented
- Tickets, deals, templates, snippets all configured
- Dashboard with 4 reports built on free tier

---

## SQL Analysis Summary

- 6 business queries written and executed
- Queries cover health check, segmentation, 
  revenue analysis, and high risk identification
- SQL results cross-validated against LibreOffice
- All queries saved in verilink_churn_analysis.sql

---

## Dataset Details

| Detail | Value |
|--------|-------|
| Total customers | 7,043 |
| Columns | 21 |
| HubSpot import records | 997 |
| Import errors | 0 |

---

## Note on HubSpot Free Tier

This project uses HubSpot Free. Advanced features
including workflow automation, customer portal, and
service analytics require paid Service Hub plans.
In a production environment these would be configured
to complete the full customer success workflow.
