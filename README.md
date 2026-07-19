# credit-risk-analysis

## Project Overview
Analysis of credit risk patterns using a public lending dataset to identify default risk factors and borrower risk profiles.

**Tools:** Google BigQuery, SQL  
**Data Source:** [Credit Risk Dataset - Kaggle](https://www.kaggle.com/datasets/laotse/credit-risk-dataset)  
**Records:** ~32,000 loan applications

## Files
| File | Description |
|------|-------------|
| 01_data_cleaning.sql | Data validation and clean view creation |
| 02_portfolio_overview.sql | Loan distribution and volume by grade |
| 03_risk_analysis.sql | Default rate analysis, risk ranking, prior default impact |
| 04_borrower_profiling.sql | High-risk borrower identification, income tier analysis |

## Key Findings
- Loan grades G and F show the highest default rates
- Borrowers with prior default history have significantly higher default rates
- High loan-to-income ratio (>30%) is a strong indicator of default risk

## SQL Techniques Used
- Data cleaning and view creation
- Aggregations with GROUP BY
- Subqueries
- CTEs (Common Table Expressions)
- Window Functions (RANK, PARTITION BY)

## Visualizations
Interactive dashboards: [Credit Risk Analysis Dashboard](https://public.tableau.com/views/CreditRiskAnalysis_17840100165250/DefaultRatebyLoanGrade)
