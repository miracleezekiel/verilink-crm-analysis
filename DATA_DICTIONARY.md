# DATA_DICTIONARY.md

# Data Dictionary — Verilink Solutions Customer Dataset

All 21 columns from the source dataset explained.

| Column_Name | Friendly Name | Type | Description | CRM Relevance |
|-------------|--------------|------|-------------|---------------|
| Customer_ID | Customer ID | Text | Unique identifier for each customer | Primary key for CRM contact lookup |
| Gender | Gender | Text | Male or Female | Contact demographic property |
| Senior_Citizen | Senior Citizen | Number | 1 = senior, 0 = not senior | Used for support priority routing |
| Has_Partner | Has Partner | Text | Yes or No | Contact property |
| Has_Dependents | Has Dependents | Text | Yes or No | Contact property |
| Tenure_Months | Tenure in Months | Number | How long the customer has been subscribed | Critical — drives churn risk scoring and retention recommendations |
| Phone_Service | Phone Service | Text | Yes or No | Service subscription status |
| Multiple_Lines | Multiple Lines | Text | Yes, No, or No phone service | Service detail |
| Internet_Service | Internet Service | Text | DSL, Fiber optic, or No internet service | Key churn predictor — fiber customers churn at higher rate |
| Online_Security | Online Security | Text | Yes, No, or No internet service | Add-on subscription |
| Online_Backup | Online Backup | Text | Yes, No, or No internet service | Add-on subscription |
| Device_Protection | Device Protection | Text | Yes, No, or No internet service | Add-on subscription |
| Tech_Support | Tech Support | Text | Yes, No, or No internet service | Customers without tech support churn more |
| Streaming_TV | Streaming TV | Text | Yes, No, or No internet service | Add-on subscription |
| Streaming_Movies | Streaming Movies | Text | Yes, No, or No internet service | Add-on subscription |
| Contract_Type | Contract Type | Text | Month-to-month, One year, Two year | Most important churn predictor — month-to-month churns at 42.7% |
| Paperless_Billing | Paperless Billing | Text | Yes or No | Billing preference |
| Payment_Method | Payment Method | Text | Electronic check, Mailed check, Bank transfer, Credit card | Payment behaviour |
| Monthly_Charges | Monthly Charges | Number | Monthly subscription amount in USD | Revenue impact — used in churn risk automation threshold |
| Total_Charges | Total Charges | Number | Total amount paid across all months | Customer lifetime value indicator |
| Churn_Status | Churn Status | Text | Yes or No | Primary outcome variable — drives all analysis and automation logic |
