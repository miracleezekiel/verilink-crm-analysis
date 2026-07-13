# HubSpot CRM Documentation
## Verilink Solutions — Customer Support Operations

**Platform:** HubSpot Free CRM
**Role:** Customer Support Representative / CRM Administrator
**Contacts imported:** 997

---

## CRM Configuration

### Custom Property Group
**Group name:** Verilink Customer Data

All 10 custom properties are organized under this group 
so they appear together on every contact profile.

### Custom Contact Properties

| Property Label | Field Type | Business Purpose |
|---------------|-----------|-----------------|
| Customer ID | Single-line text | Unique identifier from source system |
| Internet Service | Dropdown | Service tier — DSL, Fiber optic, None |
| Contract Type | Dropdown | Month-to-month, One year, Two year |
| Monthly Charges | Number | Monthly subscription value in USD |
| Total Charges | Number | Cumulative customer lifetime spend |
| Churn Status | Dropdown | Active subscription status |
| Payment Method | Dropdown | Preferred payment type |
| Phone Service | Dropdown | Voice service subscription status |
| Senior Citizen | Dropdown | Demographic indicator |
| Tenure (Months) | Number | Duration of customer relationship |

### Deal Pipeline

**Pipeline:** Sales Pipeline

| Stage | Purpose |
|-------|---------|
| Lead Captured | At-risk customer identified |
| Discovery Call Booked | Initial retention call scheduled |
| Demo Completed | Renewal options presented |
| Proposal Sent | Formal renewal offer delivered |
| Negotiation | Customer reviewing options |
| Closed Won | Renewal confirmed |
| Closed Lost | Customer churned or cancelled |

---

## Data Import

| Detail | Value |
|--------|-------|
| Import file | verilink_hubspot_import_final.csv |
| Total records | 997 contacts |
| Fields mapped | 13 columns |
| Import errors | 0 |

**Import challenge resolved:**
The source dataset used "Fiber optic" (American spelling).
The HubSpot property was initially created with "Fibre optic"
(British spelling). The mismatch caused 669 import errors.
Resolved by correcting the dropdown option to match the 
exact source data value before re-importing.

This is a common real-world CRM data migration challenge.

---

## Customer Support Activities

15 customer interactions documented across 13 unique contacts.

### Activity Types

| Type | Description |
|------|-------------|
| Tasks | Daily support tasks assigned and completed |
| Notes | Detailed records logged after every interaction |
| Emails | Customer communications logged in CRM |
| Calls | Inbound and outbound calls documented manually |
| Meetings | Formal consultations for renewal and support |
| Follow-up tasks | Scheduled next actions after each interaction |

### Interaction Scenarios Covered

| Scenario | Customer Outcome |
|----------|----------------|
| Billing complaint | Issue escalated and resolved |
| Competitor pricing concern | Loyalty benefits presented |
| Contract renewal consultation | Renewal offer sent |
| Customer satisfaction check-in | Positive feedback recorded |
| Cancellation request | Exit interview completed |
| Service upgrade discussion | Follow-up scheduled |
| Account closure processing | Account closed professionally |
| Technical support query | Issue documented and escalated |
| Relocation cancellation | Account closed with reason recorded |
| Senior customer support | Patient, thorough account review |

---

## Deals

| Deal | Customer ID | Stage | Amount |
|------|------------|-------|--------|
| Contract Renewal — Closed Won | 6865-JZNKO | Closed Won | $55.30 |
| [Additional deals across all pipeline stages] | Various | Various | Various |

---

## Customer Segments

| Segment Name | Filter Criteria | Purpose |
|-------------|----------------|---------|
| Month-to-Month — High Risk | Contract Type = Month-to-month | Priority outreach list |
| Churned Customers | Churn Status = Yes | Exit analysis |
| New Customers | Tenure (Months) < 12 | Proactive retention |

---

## Email Templates

| Template Name | When Used |
|--------------|----------|
| Contract Renewal Reminder | Customer approaching contract end |
| Billing Issue Follow-up | After resolving a billing complaint |
| Welcome to Verilink Solutions | New customer onboarding |

---

## Snippets

| Snippet | Purpose |
|---------|---------|
| Customer Greeting | Standard opening for all interactions |
| Billing Follow-up | Reusable billing resolution language |
| Conversation Closing | Professional closing for every contact |

---

## Help Desk Tickets

Tickets created across multiple dates from 12–15 July 2026.

| Ticket Status | Priority Levels | Sources |
|--------------|----------------|---------|
| New | Low | Phone |
| Waiting on Contact | Medium | Email |
| Waiting on Us | High | Chat |
| Closed | Urgent | — |

---

## Dashboard

**Dashboard name:** Verilink Customer Success Dashboard

Reports included:
1. Customer Base by Contract Type
2. Renewal Pipeline Status
3. Customer Acquisition Timeline
4. Contact Activity Overview

---

## HubSpot Free Tier — Feature Availability

| Feature | Available |
|---------|----------|
| Contact management | ✅ Full access |
| Custom properties | ✅ Full access |
| Deal pipeline | ✅ Full access |
| Tasks and activities | ✅ Full access |
| Email templates and snippets | ✅ Full access |
| Basic Help Desk tickets | ✅ Available |
| Basic reports and dashboard | ✅ 1 dashboard |
| Workflow automation | ❌ Paid tier required |
| Customer portal | ❌ Service Hub Professional |
| Feedback surveys | ❌ Service Hub Starter |
| Advanced service analytics | ❌ Paid tier required |
| Saved Views | ❌ Not on free tier |
