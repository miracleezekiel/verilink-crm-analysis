# Screenshots — Verilink Solutions Customer Success Intelligence System

All screenshots taken during the implementation of the Verilink 
Solutions project, organized by tool.

---

## Folder Structure

| Folder | Contents |
|--------|---------|
| HubSpot/ | CRM setup, contacts, pipeline, interactions, tickets, dashboard |
| LibreOffice_Calc/ | Data cleaning, summary, churn analysis, dashboard |
| MySQL_Workbench/ | Database, import, all 6 SQL query results |
| n8n_Automation/ | Complete workflow, all nodes, Telegram alert, Google Sheets log, error workflow |
| GitHub/ | Repository structure at key milestones |

---

## n8n Automation Screenshots

| Filename | What It Shows |
|----------|--------------|
| Verilink-workflow-overview.png | Complete 8-node workflow on the canvas |
| Verilink-get-hubspot-contacts.png | HTTP Request node — HubSpot API configuration |
| Verilink-split-contacts.png | Split Out node — results field configuration |
| Verilink-validate-contact-data.png | Filter node — data validation conditions |
| Verilink-filter-churned-customers.png | IF node — churn_status = Yes condition |
| Verilink-filter-high-value-churn-risk.png | IF node — contract type and monthly charges conditions |
| Verilink-generate-ai-churn-summary.png | HTTP Request node — Groq API configuration and body |
| Verilink-send-telegram-alert.png | Telegram node — bot configuration and message template |
| Verilink-log-alert-to-google-sheets.png | Google Sheets node — column mapping |
| Verilink-error-workflow-overview.png | Separate error monitoring workflow canvas |
| Verilink-send-workflow-failure-alert.png | Error Telegram notification configuration |
| Verilink-error-workflow-settings.png | Error workflow settings showing main workflow linked |

---

## Naming Convention

All screenshots follow this format:
`Verilink-[tool]-[description].png`
