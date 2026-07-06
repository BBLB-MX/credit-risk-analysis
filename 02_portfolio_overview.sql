--ANALYSIS
--Loan amount by loan grade
SELECT
SUM(loan_amnt) as total_loan_amnt,
(loan_grade)
FROM `my-sql-project-501420`.Credit_Risk_Dataset.clean_table
GROUP BY (loan_grade) 
ORDER BY (total_loan_amnt)desc
