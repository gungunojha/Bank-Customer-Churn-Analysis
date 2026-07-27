CREATE TABLE bank_churn (
    id INT,
    full_name VARCHAR(100),
    credit_sco INT,
    gender VARCHAR(20),
    age INT,
    occupation VARCHAR(100),
    balance BIGINT,
    monthly_ir BIGINT,
    address VARCHAR(255),
    origin_province VARCHAR(100),
    tenure_ye INT,
    married INT,
    nums_card INT,
    nums_service INT,
    active_member VARCHAR(20),
    last_active_date VARCHAR(20),
    last_transaction_month VARCHAR(20),
    created_date VARCHAR(20),
    `exit` VARCHAR(20),
    customer_segment VARCHAR(50),
    engagement_score INT,
    loyalty_level VARCHAR(50),
    digital_behavior VARCHAR(50),
    risk_score DECIMAL(10,4),
    risk_segment VARCHAR(50),
    cluster_group INT(50)
);
SHOW VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE 'C:/Gungun''s prep/projects/Banking Analytics Project/Dataset/bank_churn_dataset.csv'
INTO TABLE bank_churn
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;