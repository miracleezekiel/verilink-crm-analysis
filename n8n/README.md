# n8n Automation — Verilink Churn Risk Alert

**Workflow:** Verilink – Churn Risk Alert Automation  
**Platform:** n8n Cloud  
**Status:** Active  
**Trigger:** Schedule — every 1 hour  

---

## Overview

This workflow automatically identifies high-risk churning customers 
from HubSpot CRM every hour, generates a personalized AI alert using 
Groq, and delivers it to the customer success team via Telegram — 
with zero manual intervention.

**Before this automation:**  
A customer success representative manually filtered 997 contacts in 
HubSpot every morning to identify at-risk customers. Average time: 
30–45 minutes per day.

**After this automation:**  
High-risk customers are identified and flagged automatically every hour. 
The team receives an AI-written Telegram alert with a specific retention 
recommendation based on each customer's tenure and charges.  
Manual filtering time: 0 minutes.

---

## Business Logic

A customer is classified as **high churn risk** when they meet 
all three conditions simultaneously:

| Condition | Value | Reasoning |
|-----------|-------|-----------|
| Churn Status | Yes | Already churned or confirmed at risk |
| Contract Type | Month-to-month | No long-term commitment — can leave instantly |
| Monthly Charges | Above $65 | High-value customer — loss has significant revenue impact |

This profile was derived from the SQL and LibreOffice analysis 
which showed month-to-month customers churn at 42.7% and customers 
paying above $65/month churn at 37.2%.

---

## Workflow Architecture
┌─────────────────────────────────────────────────────────────────┐
│                VERILINK CHURN RISK ALERT AUTOMATION             │
└─────────────────────────────────────────────────────────────────┘
[Run Every Hour]
│
▼
[Get HubSpot Contacts]
GET /crm/v3/objects/contacts
Authentication: HubSpot Service Key (Bearer token)
Returns: 100 contacts per execution
│
▼
[Split Contacts]
Splits array into individual contact items
Output: 100 individual records
│
▼
[Validate Contact Data]
Filters out records with missing critical fields
Required: customer_id, monthly_charges, churn_status
│
▼
[Filter Churned Customers]
Condition: churn_status = Yes
True branch: ~30 records
False branch: discarded
│
▼
[Filter High-Value Churn Risk]
Condition 1: contract_type = Month-to-month
Condition 2: monthly_charges > 65 (type conversion enabled)
True branch: ~23 records
False branch: discarded
│
▼
[Generate AI Churn Summary]
POST https://api.groq.com/openai/v1/chat/completions
Model: llama-3.3-70b-versatile
Authentication: Authorization header (inline Bearer token)
Input: Customer ID, name, email, contract, charges, tenure, churn status
Output: Personalized 90-word retention alert with tenure-based recommendation
│
▼
[Send Telegram Alert]
Bot: Verilink Customer Success Bot (@VerilinkCustomerSuccessBot)
Destination: Customer Success Team channel
Format: Structured alert with AI summary + customer data

---

## Node Configuration

### Node 1 — Run Every Hour

| Setting | Value |
|---------|-------|
| Trigger type | Schedule |
| Interval | Every 1 hour |

---

### Node 2 — Get HubSpot Contacts

| Setting | Value |
|---------|-------|
| Method | GET |
| URL | `https://api.hubapi.com/crm/v3/objects/contacts` |
| Authentication | Header Auth |
| Authorization | `Bearer pat-[SERVICE_KEY]` |
| Properties returned | customer_id, firstname, lastname, email, contract_type, monthly_charges, churn_status, tenure_month |

---

### Node 3 — Split Contacts

| Setting | Value |
|---------|-------|
| Field to split | `results` |
| Output | Individual contact objects |

---

### Node 4 — Validate Contact Data

| Condition | Operator |
|-----------|---------|
| customer_id | is not empty |
| monthly_charges | is not empty |
| churn_status | is not empty |

---

### Node 5 — Filter Churned Customers

| Setting | Value |
|---------|-------|
| Field | `{{$json.properties.churn_status}}` |
| Operator | equals |
| Value | `Yes` |

---

### Node 6 — Filter High-Value Churn Risk

| Condition | Operator | Value |
|-----------|---------|-------|
| contract_type | equals | Month-to-month |
| monthly_charges | greater than | 65 |

> Note: Convert types enabled for monthly_charges comparison.  
> HubSpot returns numeric fields as strings. Without type conversion,  
> the greater-than comparison fails silently.

---

### Node 7 — Generate AI Churn Summary

| Setting | Value |
|---------|-------|
| Method | POST |
| URL | `https://api.groq.com/openai/v1/chat/completions` |
| Authentication | None (header sent inline) |
| Authorization header | `Bearer gsk-[GROQ_API_KEY]` |
| Model | llama-3.3-70b-versatile |
| Temperature | 0.3 |
| Max tokens | 150 |

> Authentication is passed via inline header rather than n8n's  
> credential system. This prevents the stale credential ID bug  
> encountered during development (see Lessons Learned).

---

### Node 8 — Send Telegram Alert

| Setting | Value |
|---------|-------|
| Bot | Verilink Customer Success Bot |
| Username | @VerilinkCustomerSuccessBot |
| Chat ID | [configured in credentials] |

---

## Prerequisites

1. n8n Cloud account (free trial or paid)
2. HubSpot account with Private App / Service Key created
3. Groq account with API key generated at console.groq.com
4. Telegram account with bot created via @BotFather
5. HubSpot contacts imported with required custom properties

---

## Required HubSpot Properties

| Property Label | Internal Name | Type |
|---------------|--------------|------|
| Customer ID | customer_id | Single-line text |
| Contract Type | contract_type | Dropdown |
| Monthly Charges | monthly_charges | Number |
| Churn Status | churn_status | Dropdown |
| Tenure (Months) | tenure_month | Number |

---

## Configuration

### HubSpot Service Key
HubSpot → Settings → Integrations → Private Apps → Create
Scope required: crm.objects.contacts.read

### Groq API Key
console.groq.com → API Keys → Create API Key

### Telegram Bot Setup
Telegram → @BotFather → /newbot
Copy the bot token
Send a message to your bot
GET https://api.telegram.org/bot[TOKEN]/getUpdates
Copy the chat.id value

---

## Expected Output

Example Telegram alert generated by the workflow:

🚨 VERILINK CHURN RISK ALERT
Churn Risk Alert: Verilink 7892-POOKP is at high risk
due to inactivity on their month-to-month contract.
With 8 months tenure and monthly charges of $104.80,
I recommend a loyalty discount offer to incentivize
contract upgrade before their next billing cycle.
━━━━━━━━━━━━━━━━━━━━━━━━
📋 Customer ID: 7892-POOKP
👤 Customer: Verilink 7892-POOKP
📧 Email: 7892-pookp@verilink-test.com
💰 Monthly Charges: $104.80
🏢 Verilink Solutions — Customer Success Team
This message was sent automatically with n8n.

---

## Troubleshooting

### HubSpot returns 0 contacts

Check that your Service Key has `crm.objects.contacts.read` scope.
Verify the URL includes the correct property names as query parameters.

### monthly_charges comparison fails in IF node

Enable **Convert types** in the IF node condition for monthly_charges.
HubSpot returns all property values as strings. Without conversion,
the number comparison operator cannot evaluate correctly.

### Groq returns credential error with unchanged ID

Do not use n8n's Authentication dropdown for Groq. 
Set Authentication to None and pass the Authorization header 
manually in the Headers section. This stores the value inline 
in the node JSON and avoids the stale credential reference bug.

### Telegram bot sends no message

Confirm you sent a message to your bot before calling getUpdates.
The Chat ID only appears in getUpdates after the bot has received 
at least one message from that chat.

---

## Lessons Learned

See [LESSONS_LEARNED.md](../LESSONS_LEARNED.md) for full details.

Key lessons:

1. n8n workflow JSON can retain stale credential references after 
   credentials are deleted. Rebuilding the workflow solves this 
   faster than attempting to repair the JSON manually.

2. HubSpot Free does not support the HubSpot Trigger node which 
   requires OAuth Developer App setup. Schedule Trigger with HTTP 
   Request is the correct architecture for free accounts.

3. HubSpot returns numeric fields as strings. Always enable type 
   conversion on numeric comparisons in IF nodes.

4. Passing API keys as inline headers rather than n8n credentials 
   prevents the stale credential ID bug entirely.

---

## Future Improvements

| Improvement | Description | Priority |
|-------------|-------------|----------|
| Duplicate alert prevention | Track alerted customer IDs in Google Sheets. Skip if already alerted within 24 hours | High |
| Error handling | Add error trigger node to catch and log failed executions | High |
| Google Sheets logging | Log every alert sent with timestamp, customer ID, and AI summary | Medium |
| Weekly digest | Schedule a Monday morning summary of all flagged customers from the past week | Medium |
| HubSpot write-back | After flagging a customer, update their Churn Risk property in HubSpot automatically | Medium |
| Retry logic | Wrap Groq and Telegram nodes with retry on failure | Low |
| Webhook trigger | Replace Schedule Trigger with real-time HubSpot webhook when upgrading to paid HubSpot | Low |
