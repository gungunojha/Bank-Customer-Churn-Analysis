-- overall  customer churn rate

select count(*) as total_customers,sum(churn_status='TRUE') as churned_customers,
round(sum(churn_status='TRUE')*100.0/count(*),2) as churn_rate
from bank_churn;

--  churn rate by gender

select gender, count(*) as total_customers,sum(churn_status='TRUE') as churned_customers,
round(sum(churn_status='TRUE')*100.0/count(*),2) as churn_rate
from bank_churn group by gender;

-- churn rate by customer segment
select customer_segment,sum(churn_status='TRUE') as churned_customers,count(*) as total_customers,
round(sum(churn_status='TRUE')*100/count(*),2) as churn_rate from bank_churn group by customer_segment order by churn_rate desc;

-- age group churn

select
 case 
 when age<30 then 'under 30'
when age between 30 and 45 then '30-45'
when age between 46 and 60 then '46-60'
else '60+'
end as age_group, 
 count(*) as total_customers,sum(churn_status='TRUE') as churned_customers,
round(sum(churn_status='TRUE')*100.0/count(*),2) as churn_rate
from bank_churn
group by  age_group
order by churn_rate desc;

-- credit score churn

select
 case 
 when credit_sco<600 then 'poor'
when credit_sco between 600 and 700 then 'average'
when credit_sco between 701 and 800 then 'Good'
else 'Excellent'
end as credit_category, 
 count(*) as total_customers,sum(churn_status='TRUE') as churned_customers,
round(sum(churn_status='TRUE')*100.0/count(*),2) as churn_rate
from bank_churn
group by  credit_category
order by churn_rate desc;

-- engagement churn

select
  case
        when engagement_score < 40 then'Low Engagement'
        when engagement_score between 40 and 70 then 'Medium Engagement'
        else 'High Engagement'
    end as engagement_category,
    count(*) as total_customers,
    sum(churn_status = 'TRUE') as churned_customers,
    round(sum(churn_status = 'TRUE') * 100.0 / count(*),2) as churn_rate
from bank_churn
group by engagement_category
order by churn_rate desc;

-- digital behaviour churn

select digital_behavior,count(*) as total_customers,
    sum(churn_status = 'TRUE') as churned_customers,
    round(sum(churn_status = 'TRUE') * 100.0 / count(*),2) as churn_rate
from bank_churn
group by digital_behavior
order by churn_rate desc;

-- risk segment churn

select risk_segment,count(*) as total_customers,
    sum(churn_status = 'TRUE') as churned_customers,
    round(sum(churn_status = 'TRUE') * 100.0 / count(*),2) as churn_rate
from bank_churn
group by risk_segment
order by churn_rate desc;

-- balance category churn

select
    case
        when balance < 50000000 then 'Low Balance'
        when balance BETWEEN 50000000 and 150000000 then 'Medium Balance'
        else 'High Balance'
    end as balance_category,
    count(*) as total_customers,
    sum(churn_status = 'TRUE') as churned_customers,
    round(sum(churn_status = 'TRUE') * 100.0 / COUNT(*),2) as churn_rate
from bank_churn
group by balance_category
order by churn_rate desc;

-- loyalty churn

select loyalty_level,count(*) as total_customers,
    sum(churn_status = 'TRUE') as churned_customers,
    round(sum(churn_status = 'TRUE') * 100.0 / count(*),2) as churn_rate
from bank_churn
group by loyalty_level
order by churn_rate desc;
