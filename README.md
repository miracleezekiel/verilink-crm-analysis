# CRM Analytics, Customer Success Intelligence and AI Automation
## Verilink Solutions — B2B SaaS

---

### Project Overview

This project documents the end-to-end CRM implementation, 
customer churn analysis, and AI automation work completed 
for Verilink Solutions, a B2B SaaS company operating in 
the telecommunications sector.

The project analyzes 7,043 customer records to identify 
churn patterns, builds a structured CRM environment in 
HubSpot, writes SQL queries for customer segmentation, 
and develops automated workflows using n8n and Groq API 
to support the customer success and support team.

---

### Business Problem

Verilink Solutions has a 26.5% customer churn rate. 
More than one in four customers is cancelling their 
subscription. The business needs to understand who is 
churning, why it is happening, and how to automatically 
detect at-risk customers before they leave.

---

### Dataset

- Size: 7,043 customers, 21 columns
- Key fields: Contract type, tenure, monthly charges, 
  internet service, phone service, payment method, 
  churn status

---

### Tools and Technologies

| Tool | Purpose |
|------|---------|
| LibreOffice Calc | Data exploration, cleaning, and analysis |
| HubSpot CRM | CRM administration, contact management, pipeline |
| MySQL Workbench | SQL queries for customer segmentation |
| n8n | Workflow automation connecting CRM to AI tools |
| Groq API | AI-powered churn risk detection and alerts |
| Telegram Web | Real-time automated notifications |
| GitHub | Version control and project documentation |

---

### Repository Structure

| Folder | Contents |
|--------|---------|
| Data/Raw_Data | Original customer dataset |
| Data/Cleaned_Data | Processed datasets ready for analysis and import |
| Analysis/LibreOffice_Workbook | Main analysis workbook with all tabs |
| SQL | SQL query files for customer analysis |
| Screenshots | Documented screenshots organized by tool |

---

### Project Progress

| Phase | Description | Status |
|-------|-------------|--------|
| 1 | Dataset exploration and cleaning | Complete |
| 2 | Churn analysis — tenure and charges | Complete |
| 3 | HubSpot CRM setup and data import | Complete |
| 4 | SQL analysis in MySQL Workbench | In progress |
| 5 | AI automation with n8n and Groq API | Upcoming |
| 6 | Final documentation and publishing | Ongoing |

---

### Key Findings

- Overall churn rate: 26.5%
- 1,869 out of 7,043 customers churned
- 55% of all customers on month-to-month contracts
- New customers under 12 months show highest churn rate
- Month-to-month customers churn significantly more than 
  yearly contract customers

---

### HubSpot CRM Setup

- 10 custom contact properties created in Verilink 
  Customer Data property group
- Deal pipeline configured with 7 stages
- 997 customer records successfully imported
- All 13 key data fields mapped to correct properties
