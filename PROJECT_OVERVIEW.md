# Project Overview — Verilink Solutions Customer Success Intelligence System

---

## The Business Situation

Verilink Solutions is a B2B SaaS company in the telecommunications 
sector offering subscription-based internet, phone, and streaming 
services on monthly and annual contracts.

The business identified a critical operational gap: a 26.5% annual 
churn rate with no systematic process for early identification of 
at-risk customers. The customer success team was reactive — they 
learned about cancellations after they happened, with no visibility 
into which customers were showing warning signs before they decided to leave.

---

## Scope of Work

This engagement covers the complete design and implementation of 
a customer success intelligence system:

### Phase 1 — Data Analysis (LibreOffice Calc)
Exploratory analysis of 7,043 customer records to identify which 
customer profiles, contract types, tenure periods, and charge levels 
are most associated with churn. Dashboard built with two KPI charts 
for management reporting.

### Phase 2 — SQL Reporting (MySQL Workbench)
Six business SQL queries delivering the reports a customer success 
manager would present in a weekly operations review — including 
overall health check, contract segmentation, tenure analysis, 
revenue impact quantification, high-risk customer identification, 
and internet service churn analysis.

### Phase 3 — CRM Implementation (HubSpot)
Full HubSpot CRM configuration: 10 custom contact properties, 
customer pipeline, segments, reports, dashboards, email templates, 
and conversation snippets. Documented 15 realistic customer 
interactions covering billing, retention, contract renewal, 
technical support, satisfaction review, and account closure.

### Phase 4 — AI Automation (n8n + Groq + Telegram + Google Sheets)
An eight-node automation workflow that runs hourly, validates and 
filters incoming CRM contacts against the high-risk churn profile 
identified in the data analysis, generates a personalized 
AI-written retention alert using Groq's language model, delivers 
it to the customer success team via Telegram, and logs every alert 
to a Google Sheets audit trail. A separate error monitoring workflow 
ensures the team is notified immediately if the automation fails.

---

## Business Impact

### Immediate operational impact
- High-risk customers identified every hour rather than once per day
- Customer success team receives actionable, personalized alerts 
  rather than raw data
- 30–45 minutes of daily manual contact review eliminated
- Every alert logged automatically — full audit trail maintained

### Strategic value demonstrated
- Data analysis connected directly to CRM configuration
- CRM configuration connected directly to automation logic
- Automation connected directly to business retention strategy
- End-to-end system documented to production standard

---

## Dataset Note

The Telco Customer Churn dataset uses anonymized Customer IDs 
rather than real customer names or email addresses, as it was 
designed for churn prediction modelling. Generated placeholder 
identifiers were created for CRM import to meet HubSpot's 
required field validation. This is documented in the Data folder 
README. In a real deployment, actual customer PII would be used.

---

## Role Demonstrated

This project demonstrates readiness for the following roles:

| Role | Evidence |
|------|---------|
| CRM Administrator | Custom properties, pipeline, import, data mapping |
| Customer Support Representative | 15 documented interactions across all activity types |
| Customer Success Specialist | Churn identification, retention workflows, risk flagging |
| Operations Analyst | Data cleaning, KPI analysis, SQL reporting |
| Data Analyst | Exploratory analysis, segmentation, cross-tool validation |
| AI Automation Specialist | n8n workflow, Groq API, multi-node production automation |
| RevOps Specialist | End-to-end revenue operations — analysis to automation |
