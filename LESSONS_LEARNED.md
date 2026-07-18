# Lessons Learned — Verilink Solutions

Real technical challenges encountered during implementation 
and how each one was resolved professionally.

---

## Lesson 1 — Enumeration Mismatch Caused 669 Import Errors

**What happened:**
When importing 997 customer records into HubSpot, 669 records 
failed with the error: Invalid enumeration option for the 
Internet Service field.

**Root cause:**
The CSV file contained "Fiber optic" (American English).
The HubSpot dropdown option had been created as "Fibre optic" 
(British English). One letter difference caused 669 failures.

**Resolution:**
Corrected the dropdown option to match the exact source data 
value. Downloaded the HubSpot error file, confirmed the mismatch, 
fixed the property, and re-imported only the failed records. 
Zero errors on second import.

**Lesson:**
Always verify exact string values in source data before creating 
CRM dropdown options. Copy the values directly from the data — 
never assume spelling.

---

## Lesson 2 — HubSpot Trigger Requires OAuth Developer App

**What happened:**
The original automation used the n8n HubSpot Trigger node. 
When configuring credentials, n8n showed only OAuth options — 
Client ID, Client Secret, and Redirect URL from a HubSpot 
Developer App. No Private App token option was available.

**Root cause:**
The HubSpot Trigger node registers webhook subscriptions with 
HubSpot, which requires a verified Developer App with OAuth. 
This is not compatible with a standard Private App token.

**Resolution:**
Replaced the HubSpot Trigger with a Schedule Trigger (every 1 hour) 
combined with an HTTP Request node calling the HubSpot Contacts API 
using a Private App token. This achieves near-real-time monitoring 
without Developer App setup.

**Lesson:**
n8n native trigger nodes often require OAuth. For free-tier accounts, 
Schedule Trigger + HTTP Request is a reliable and more transferable 
alternative that also demonstrates direct API integration skills.

---

## Lesson 3 — Stale Credential Reference in Workflow JSON

**What happened:**
The Groq HTTP Request node returned this error continuously:
Credential with ID "qePVLsYkk4i6pmMd" does not exist 
for type "httpHeaderAuth"

The credential ID never changed regardless of deleting credentials, 
recreating them, switching authentication to None, or 
recreating the Groq node entirely.

**Root cause:**
When a credential is first attached to a node, n8n writes the 
credential ID into the workflow's underlying JSON definition. 
Changing the UI settings updates the display but does not always 
clean up the JSON reference when the credential is later deleted. 
The workflow was reading from the JSON, which still pointed to 
a non-existent credential.

**Resolution:**
Abandoned the corrupted workflow. Built a new workflow from scratch. 
In the new workflow, the Groq node was configured with Authentication 
set to None. The API key is passed as an inline header value 
in the Headers section — not through n8n's credential system. 
This stores the header directly in the node JSON with no separate 
credential object and no credential ID that can go stale.

**Lesson:**
When n8n error messages reference a fixed, unchanging credential ID 
despite all credential changes, the issue is corrupted workflow JSON — 
not the credentials. Rebuilding is faster than repairing JSON manually. 
Inline headers prevent this issue entirely for external API authentication.

---

## Lesson 4 — HubSpot Returns Numeric Fields as Strings

**What happened:**
The IF node condition monthly_charges > 65 did not filter correctly. 
All contacts went to the False branch regardless of their actual value.

**Root cause:**
HubSpot returns all property values as strings in the API response, 
including numeric fields. The IF node was comparing the string "104.80" 
against the number 65, which fails silently.

**Resolution:**
Enabled Convert types where required in the IF node condition 
for monthly_charges. n8n automatically converts the string to a 
number before comparing.

**Lesson:**
External APIs frequently return numbers as strings. Always verify 
data types from API responses before building comparison logic, 
and enable type conversion wherever numeric comparisons are needed.

---

## Lesson 5 — Dataset Not Designed for CRM Import

**What happened:**
HubSpot requires at least one of email, first name, or last name 
to create a contact record. The Telco Customer Churn dataset uses 
anonymized Customer IDs with no names or emails.

**Resolution:**
Added three generated columns to the import file:
- First_Name: "Verilink" (standardized)
- Last_Name: Customer ID value (preserves uniqueness)
- Email: customerid@verilink-test.com (generated)

Documented this decision clearly so any reviewer understands 
the reasoning without having to ask.

**Lesson:**
Real-world datasets are rarely CRM-ready. Preparing data for CRM 
import is a distinct skill from data analysis. Always check the 
target system's required fields before preparing an import file.
