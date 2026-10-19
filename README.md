# Customer Churn Analysis Dashboard

## Project Overview
This project analyses customer subscription and usage data to identify patterns associated with customer churn. Using Python, MySQL, and Power BI, the analysis explores customer engagement, subscription types, acquisition channels, cancellation reasons, and other factors associated with churn.

The goal is to translate customer data into actionable insights that can support customer retention strategies.

## Tools & Technologies
- **Python:** Data cleaning and exploratory data analysis
- **Pandas & NumPy:** Data manipulation
- **MySQL:** Business analysis and SQL queries
- **SQLAlchemy:** Database connection and data loading
- **Power BI:** Interactive dashboard and data visualisation
- **DAX:** Measures and calculated columns

## Dataset
The project uses two datasets:

- `subscriptions.csv` — Customer details, subscription information, churn status, churn dates, and cancellation reasons.
- `usage.csv` — Monthly workouts, active minutes, classes booked, and support tickets.

After cleaning, the datasets contained 4,200 subscription records and 30,525 usage records.

## Data Preparation
Data preparation was performed using Python and Pandas.

- Inspected dataset structure, data types, distributions, and missing values.
- Standardised plan-tier labels.
- Removed 160 duplicate usage records.
- Converted signup and churn dates to datetime format.
- Investigated missing values and retained unknown activity durations rather than assuming they were zero.
- Loaded the cleaned datasets into MySQL using SQLAlchemy.

## SQL Business Analysis
MySQL was used to investigate ten business questions:

1. What is the overall customer churn rate?
2. How does churn differ between monthly and annual subscriptions?
3. How does churn vary across plan tiers?
4. Which acquisition channels have the highest churn rates?
5. What are the most frequently recorded cancellation reasons?
6. How does customer engagement differ between churned and retained customers?
7. How does churn vary across age groups?
8. How does churn differ by primary device?
9. How have monthly cancellation counts changed over time?
10. How does average listed subscription price differ by churn status?

## Key Findings

- **Overall churn rate:** 42.10% of customers had churned.
- **Subscription type:** Monthly subscribers had a 51.18% churn rate, compared with 26.38% for annual subscribers.
- **Acquisition channel:** Promo-offer customers had the highest observed churn rate at 50.79%, while referral customers had the lowest at 33.81%.
- **Customer engagement:** Churned customers had lower average workouts, active minutes, and classes booked.
- **Cancellation reasons:** Insufficient usage was the most frequently recorded reason, followed by price.
- **Device:** Android users had a higher observed churn rate than iOS and web users.
- **Monthly cancellations:** November 2025 recorded the highest monthly cancellation count, at 196.

These findings describe associations in the available data and do not establish causation.

## Power BI Dashboard
An interactive dashboard was developed with four KPI cards:

- Total Customers
- Churned Customers
- Churn Rate
- Retained Customers

The dashboard includes six analytical charts covering subscription type, acquisition channel, customer engagement, cancellation reasons, and monthly churn trends.

Interactive slicers allow users to explore the data by churn status, plan type, and acquisition channel.

DAX measures were created to calculate customer counts, churn rate, and engagement metrics dynamically. A calculated column was also used to display missing cancellation reasons as "Not recorded".

## Business Recommendations
Based on the findings, potential areas for further investigation include:

- Improving onboarding and engagement for customers with low activity.
- Investigating the retention differences between monthly and annual subscribers.
- Evaluating long-term retention among customers acquired through promotional offers.
- Reviewing pricing concerns and cancellation feedback.
- Investigating the higher observed churn rate among Android users.
- Improving the collection of cancellation reasons.

These recommendations should be tested and evaluated before assuming they will improve retention.

## Limitations
- The analysis identifies associations rather than causal relationships.
- Engagement metrics were compared across available customer-month records rather than a defined pre-cancellation period.
- Monthly cancellation counts are not the same as monthly churn rates.
- Subscription-price definitions should be verified before estimating revenue impact.
- Some churned customers had no recorded cancellation reason.

## Project Files
- `customer_churn_analysis.ipynb` — Python data cleaning and exploration
- `customer_churn_queries.sql` — SQL business analysis
- `subscriptions.csv` — Subscription dataset
- `usage.csv` — Customer usage dataset
- `customer_churn_analysis_dashboard.pbix` — Interactive Power BI dashboard

## Conclusion
This project demonstrates an end-to-end data analytics workflow using Python, MySQL, and Power BI. It combines data preparation, SQL-based business analysis, and interactive visualisation to explore customer churn patterns and identify potential retention opportunities.
