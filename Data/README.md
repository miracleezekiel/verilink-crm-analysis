# Data Folder — Verilink Solutions

This folder contains all dataset files used in the 
Verilink Solutions CRM project.

---

## Subfolders

### Raw_Data
Contains the original customer dataset exactly as 
received. This file is never edited or modified.

| File | Description |
|------|-------------|
| verilink_customers.csv | Original dataset — 7,043 rows, 21 columns |

### Cleaned_Data
Contains processed versions of the dataset prepared 
for specific tools and purposes.

| File | Description | Rows | Columns |
|------|-------------|------|---------|
| verilink_customers_cleaned.csv | Full cleaned dataset for SQL and Python | 7,043 | 21 |
| verilink_hubspot_import_final.csv | Trimmed dataset for HubSpot import | 997 | 13 |

---

## Why Two Cleaned Files?

Different tools require data in different formats.

The SQL and Python analysis uses the full 7,043 row 
dataset with all 21 columns because those tools can 
handle the complete data.

HubSpot's free tier has a 1,000 contact limit. 
The HubSpot import file contains only 997 rows 
and only the 13 columns that map to HubSpot 
contact properties. In a production environment 
with a paid HubSpot account, the full dataset 
would be imported.
