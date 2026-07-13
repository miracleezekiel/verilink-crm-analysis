# n8n Automation — Verilink Solutions

**Tool:** n8n (workflow automation)
**Status:** In progress — Week 2

---

## Planned Automations

### Automation 1 — Churn Risk Alert
**Trigger:** New contact added to HubSpot
**Action:** Groq AI evaluates churn risk based on 
contract type and tenure
**Output:** Telegram notification sent to customer 
success team if risk is High

### Automation 2 — New Customer Check-in
**Trigger:** Contact tenure reaches 30 days
**Action:** Automated check-in email sent via HubSpot
**Output:** Follow-up task created for support rep

### Automation 3 — Monthly Report Log
**Trigger:** Scheduled — first Monday of each month
**Action:** Pull contact data from HubSpot
**Output:** Summary written to Google Sheets

---

## Tools Connected

| Tool | Role in Workflow |
|------|----------------|
| HubSpot | Source of customer data — triggers workflows |
| n8n | Automation engine — connects all tools |
| Groq API | AI model — evaluates churn risk |
| Telegram Web | Receives real-time alerts |
| Google Sheets | Logs monthly reports |
