show full tables;
drop view churn_analysis;

CREATE OR REPLACE VIEW churn_analysis AS
SELECT
    id,credit_sco,gender,age,occupation,balance,monthly_ir,origin_province,tenure_ye,
    active_member,nums_card,nums_service,churn_status,customer_segment,engagement_score,loyalty_level,digital_behavior,risk_score,risk_segment
FROM bank_churn;

SELECT user, host, plugin
FROM mysql.user;
ALTER USER 'root'@'localhost'
IDENTIFIED WITH mysql_native_password
BY 'Gungun@1234';

flush privileges;