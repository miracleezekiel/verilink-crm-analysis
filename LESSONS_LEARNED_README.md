# Lessons Learned — Verilink Solutions CRM Automation Project

This document records the real technical challenges encountered 
during the Verilink Solutions CRM and automation project, and 
how each one was resolved. These are genuine problems from 
actual implementation, not theoretical scenarios.

---

## 1. HubSpot Import — Spelling Mismatch Caused 669 Errors

**What happened:**  
When importing 997 customer records into HubSpot, 669 records 
failed with the error: Invalid enumeration option.

**Root cause:**  
The source CSV contained "Fiber optic" (American English spelling).  
The HubSpot dropdown property had been created with "Fibre optic" 
(British English spelling). One letter difference caused 669 import failures.

**Resolution:**  
Corrected the dropdown option spelling in HubSpot Settings to exactly 
match the source data value. Re-imported the error file. Zero errors on second import.

**Lesson:**  
Always verify the exact string values in source data before creating 
CRM dropdown options. Do not assume spelling — copy and paste from the data.

---

## 2. HubSpot Import — Missing Unique Identifier

**What happened:**  
HubSpot requires either an email address, first name, or last name 
for contact import. The Telco Customer Churn dataset uses anonymized 
Customer IDs instead of real names or emails.

**Root cause:**  
The dataset was designed for churn prediction modelling, not CRM import. 
It contains no personally identifiable information.

**Resolution:**  
Added three generated columns to the import file:  
- First_Name: "Verilink" (standardized placeholder)  
- Last_Name: Customer ID value (preserves unique identifier)  
- Email: customer-id@verilink-test.com (generated from Customer ID)

Documented this decision in the Data folder README so any reviewer 
understands the reasoning without needing to ask.

**Lesson:**  
Real-world datasets are rarely CRM-ready. Data preparation for CRM 
import is a distinct skill from data analysis. Always check the target 
system's required fields before preparing an import file.

---

## 3. n8n — Stale Credential Reference in Workflow JSON

**What happened:**  
The Groq HTTP Request node continuously returned this error:  
`Credential with ID "qePVLsYkk4i6pmMd" does not exist for type "httpHeaderAuth"`

The credential ID never changed regardless of:
- Deleting and recreating credentials
- Switching authentication to None
- Recreating the Groq node entirely
- Reconnecting all nodes

**Root cause:**  
When a credential is first attached to a node, n8n writes the credential 
ID into the workflow's underlying JSON definition. Changing the UI 
settings updates the display layer but does not always remove the 
JSON reference when the credential is later deleted.  
The workflow was reading from the JSON, which still pointed to a 
non-existent credential.

**Resolution:**  
Abandoned the corrupted workflow. Built a new workflow from scratch.  
In the new workflow, the Groq node was configured with Authentication 
set to None. The API key is passed as an inline header value in the 
Headers section — not through n8n's credential system. This stores 
the header directly in the node JSON with no separate credential object 
and no credential ID reference that can go stale.

**Lesson:**  
When n8n error messages reference a fixed, unchanging credential ID 
despite all credential changes, the issue is a corrupted workflow JSON 
reference — not the credentials themselves. Rebuilding the workflow 
is faster than attempting to repair the JSON manually. Using inline 
headers instead of n8n credential objects prevents this issue entirely 
for external API authentication.

---

## 4. n8n — HubSpot Trigger Requires OAuth

**What happened:**  
The original automation plan used the HubSpot Trigger node to start 
the workflow in real-time when a new contact was created. When configuring 
the trigger, n8n showed only OAuth options — Client ID and Client Secret 
from a HubSpot Developer App. No Private App token option was available.

**Root cause:**  
The HubSpot Trigger node in n8n uses webhook subscriptions, which 
require a registered HubSpot Developer App with OAuth. This is not 
the same as a Private App. Setting up a Developer App requires domain 
verification and additional configuration that is not practical for 
a HubSpot Free account.

**Resolution:**  
Replaced the HubSpot Trigger with a Schedule Trigger (every 1 hour) 
combined with an HTTP Request node that calls the HubSpot Contacts 
API directly using a Private App token. This achieves near-real-time 
monitoring without requiring OAuth setup.

**Lesson:**  
n8n's native integration nodes often require OAuth for trigger 
functionality. For free-tier accounts where OAuth setup is impractical, 
Schedule Trigger + HTTP Request is a reliable alternative that also 
demonstrates stronger API integration skills.

---

## 5. n8n — HubSpot Returns Numeric Fields as Strings

**What happened:**  
The IF node condition `monthly_charges > 65` was not filtering correctly. 
All contacts were going to the False branch regardless of their actual 
monthly charge value.

**Root cause:**  
HubSpot returns all contact property values as strings in the API 
response, including numeric fields like Monthly Charges. The IF node 
was comparing the string "104.80" against the number 65, which fails 
silently in many comparison operators.

**Resolution:**  
Enabled the **Convert types where required** option in the IF node 
condition for monthly_charges. n8n then automatically converts the 
string to a number before comparing.

**Lesson:**  
Always check the data type of API response values before building 
comparison logic. External APIs frequently return numbers as strings. 
Enable type conversion wherever numeric comparison is needed.
