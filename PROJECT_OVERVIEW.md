# Project Overview — Verilink Solutions

## The Business Situation

Verilink Solutions is a B2B SaaS company in the telecommunications 
sector. They provide subscription-based internet, phone, and streaming 
services to business customers on monthly and annual contract terms.

The business identified a critical problem: their customer churn rate 
had reached 26.5%. More than one in four customers was cancelling their 
subscription. The customer success team had no systematic way to identify 
which customers were at risk before they cancelled, and no automated 
process to alert the team when intervention was needed.

## The Engagement

This project covers the complete implementation of a customer success 
intelligence system for Verilink Solutions, including:

**Data Analysis:**  
A full exploratory analysis of 7,043 customer records to identify 
the characteristics and patterns associated with churn.

**CRM Implementation:**  
Configuration of HubSpot CRM with custom properties tailored to 
Verilink's customer data, a deal pipeline representing the renewal 
journey, and documented customer support operations across 15 
realistic customer interactions.

**SQL Reporting:**  
Six SQL queries written against a MySQL database to answer the business 
questions that would appear in a management reporting pack — including 
overall health, contract segmentation, tenure analysis, and revenue impact.

**AI Automation:**  
An n8n workflow that runs hourly, identifies high-risk customers 
from HubSpot, generates a personalized AI alert using Groq, and 
delivers it to the customer success team via Telegram.

## The Outcome

The automation identifies customers who match the highest-risk churn 
profile — month-to-month contract, under 12 months tenure, monthly 
charges above $65 — and delivers a personalized, actionable AI alert 
to the support team every hour. The recommendation in each alert is 
tailored to the customer's specific tenure length.

The combined analysis, CRM setup, and automation represents a complete 
customer success intelligence system that a real business could deploy 
to reduce churn proactively.
