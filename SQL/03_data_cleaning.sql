DESCRIBE bank_churn;


ALTER TABLE bank_churn
RENAME COLUMN `exit` TO churn_status;


SELECT DISTINCT churn_status
FROM bank_churn;


-- Duplicate check

SELECT id,
COUNT(*) AS duplicate_id
FROM bank_churn
GROUP BY id
HAVING COUNT(*) > 1;


-- Missing value check

SELECT 
SUM(id IS NULL) AS missing_id,
SUM(full_name IS NULL) AS missing_name,
SUM(age IS NULL) AS missing_age,
SUM(balance IS NULL) AS missing_balance,
SUM(churn_status IS NULL) AS missing_status
FROM bank_churn;