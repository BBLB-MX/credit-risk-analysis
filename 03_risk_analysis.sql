--Default rate by loan grade
SELECT 
  (loan_grade),
  COUNT(*) AS TOTAL_LOAN,
  SUM(loan_status) AS DEFAULTED,
  ROUND(SUM(loan_status) / COUNT(*) * 100, 2) AS DEFAULT_RATE
FROM `my-sql-project-501420.Credit_Risk_Dataset.clean_table` 
GROUP BY (loan_grade)
ORDER BY (loan_grade)


--Default rate no record vs default rate with prior default record
SELECT 
cb_person_default_on_file,
ROUND(SUM(loan_status)/COUNT(*)*100,2) AS defaulted_perc
FROM `my-sql-project-501420`.Credit_Risk_Dataset.clean_table
GROUP BY cb_person_default_on_file


--Ranking default rate by each loan grade
WITH DefaultRatePerGrade AS (
SELECT loan_grade,SUM(loan_status) as total_defaults,
ROUND(SUM(loan_status)/COUNT(*)*100,2) AS default_rate
FROM `my-sql-project-501420`.Credit_Risk_Dataset.clean_table
GROUP BY loan_grade
)
SELECT *,
RANK()OVER(ORDER BY default_rate DESC) as risk_ranking
FROM DefaultRatePerGrade
ORDER BY risk_ranking
