--High Risk Borrower Identification
SELECT 
  person_age,person_income,loan_grade,loan_amnt,loan_percent_income
FROM `my-sql-project-501420`.Credit_Risk_Dataset.clean_table
WHERE
  loan_status = 1
AND loan_percent_income > 0.3
ORDER BY loan_amnt desc


--Compare loan amount per individual in each grade
SELECT 
  loan_grade,
  loan_amnt,
  ROUND(AVG(loan_amnt) OVER(PARTITION BY loan_grade),-2) AS avg_loan_by_grade
FROM `my-sql-project-501420.Credit_Risk_Dataset.clean_table`
ORDER BY loan_grade
