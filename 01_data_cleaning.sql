--DATA CLEANING
--Filter out obvious errors
SELECT 
  MAX(person_age)AS max_age,MIN(person_age) min_age,MAX(person_emp_length)max_emp_time,MIN(person_emp_length)min_emp_time
FROM `my-sql-project-501420.Credit_Risk_Dataset.Table_1` 

--Filter out impossibly old people
SELECT(PERSON_AGE)
FROM `my-sql-project-501420.Credit_Risk_Dataset.Table_1`
ORDER BY person_age DESC
LIMIT 100

--Clean view for cleaned data
CREATE VIEW `my-sql-project-501420.Credit_Risk_Dataset.clean_table` AS 
SELECT *
FROM `my-sql-project-501420.Credit_Risk_Dataset.Table_1`
WHERE
  person_age BETWEEN 18 AND 100
  AND person_emp_length >= 0
  AND person_income > 0 OR person_income IS NULL
  AND loan_amnt > 0
