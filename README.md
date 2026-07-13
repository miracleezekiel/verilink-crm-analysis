# CRM Analytics, Customer Success Intelligence and AI Automation
## Verilink Solutions — B2B SaaS Telecommunications

---

### Project Overview

This project documents the complete CRM implementation, 
customer churn analysis, daily customer support operations, 
and AI automation work completed for Verilink Solutions, 
a B2B SaaS company in the telecommunications sector.

The engagement covers the full lifecycle of CRM work:
- Raw data analysis and cleaning
- HubSpot CRM configuration and administration
- Daily customer support representative operations
- SQL-based customer segmentation and reporting
- AI-powered automation for churn detection

---

### Business Problem

Verilink Solutions identified a 26.5% customer churn rate 
across their subscriber base of 7,043 customers.

The objective was to:
1. Analyze customer data to identify churn patterns
2. Configure HubSpot CRM to support the customer 
   success and support team
3. Build automated workflows to detect at-risk 
   customers before they cancel
4. Give the support team the tools and processes 
   needed to proactively reduce cancellations

---

### Key Findings from Data Analysis

| Finding | Detail |
|---------|--------|
| Overall churn rate | 26.5% — 1,869 of 7,043 customers |
| Highest risk contract type | Month-to-month — 55% of all customers |
| Most vulnerable tenure period | First 12 months of customer relationship |
| Revenue risk | Higher monthly charge customers churning faster |

---

### Tools and Technologies

| Tool | Purpose |
|------|---------|
| LibreOffice Calc | Data exploration, cleaning, and analysis |
| HubSpot Free CRM | CRM administration and daily support operations |
| MySQL Workbench | SQL queries for customer segmentation |
| n8n | Workflow automation engine |
| Groq API | AI-powered churn risk detection |
| Telegram Web | Real-time automated customer alerts |
| GitHub | Version control and documentation |

---

### Repository Structure

| Folder | Contents |
|--------|---------|
| Data/Raw_Data | Original dataset — never modified |
| Data/Cleaned_Data | Processed datasets for analysis and import |
| Analysis/LibreOffice_Workbook | Full analysis workbook with all tabs |
| HubSpot | CRM setup documentation and activity records |
| SQL | SQL query files for customer analysis |
| n8n | Automation workflow files and diagrams |
| Screenshots | Organized screenshots by tool |

---

### Project Phases

| Phase | Description | Status |
|-------|-------------|--------|
| 1 | Data exploration and cleaning | ✅ Complete |
| 2 | Churn analysis — tenure and charges | ✅ Complete |
| 3 | HubSpot CRM setup and configuration | ✅ Complete |
| 4 | HubSpot customer support operations | ✅ Complete |
| 5 | SQL analysis in MySQL Workbench | 🔄 In Progress |
| 6 | AI automation with n8n and Groq API | ⏳ Upcoming |
| 7 | Final documentation and publishing | 🔄 Ongoing |

---

### Dataset Details

| Detail | Value |
|--------|-------|
| Total customers analyzed | 7,043 |
| Total columns | 21 |
| Records imported to HubSpot | 997 |
| HubSpot import columns mapped | 13 |
| Import errors after corrections | 0 |

---

### Note on HubSpot Tier

This project was built on HubSpot Free tier.
Advanced workflow automation, customer portal, and 
service analytics require HubSpot Service Hub paid plans.
In a production environment, these would be configured 
to complete the full customer success workflow.
