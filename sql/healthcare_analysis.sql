show tables;
select * from healthcare_cleaned limit 5;
DESCRIBE healthcare_cleaned;
select count(*) as total_patients from healthcare_cleaned;
select ROUND(SUM('Billing Amount'),2) as total_revenue from healthcare_cleaned;
SELECT ROUND(AVG(`Billing Amount`),2) AS average_billing
FROM healthcare_cleaned;
SELECT ROUND(SUM(`Billing Amount`),2) AS total_revenue
FROM healthcare_cleaned;
SELECT ROUND(AVG(`Length of Stay`),2) AS avg_length_of_stay
FROM healthcare_cleaned;
select Gender,
count(*) as total_patients
from healthcare_cleaned
group by Gender
order by total_patients desc;
select `Medical Condition`,
count(*) as patient_count
from healthcare_cleaned
group by `Medical Condition`
order by patient_count desc;
select `Medical Condition`,
ROUND(SUM(`Billing Amount`),2) as revenue
from healthcare_cleaned
group by `Medical Condition`
order by revenue desc;
SELECT `Insurance Provider`,
       COUNT(*) AS total_patients
FROM healthcare_cleaned
GROUP BY `Insurance Provider`
ORDER BY total_patients DESC;
SELECT `Insurance Provider`,
       ROUND(SUM(`Billing Amount`),2) AS total_revenue
FROM healthcare_cleaned
GROUP BY `Insurance Provider`
ORDER BY total_revenue DESC;
SELECT Hospital,
       ROUND(SUM(`Billing Amount`),2) AS total_revenue
FROM healthcare_cleaned
GROUP BY Hospital
ORDER BY total_revenue DESC
LIMIT 10;
SELECT Doctor,
       ROUND(SUM(`Billing Amount`),2) AS total_revenue
FROM healthcare_cleaned
GROUP BY Doctor
ORDER BY total_revenue DESC
LIMIT 10;
SELECT `Admission Type`,
       ROUND(AVG(`Billing Amount`),2) AS avg_billing
FROM healthcare_cleaned
GROUP BY `Admission Type`
ORDER BY avg_billing DESC;
SELECT `Medical Condition`,
       ROUND(AVG(`Length of Stay`),2) AS avg_length_of_stay
FROM healthcare_cleaned
GROUP BY `Medical Condition`
ORDER BY avg_length_of_stay DESC;
SELECT `Age Group`,
       COUNT(*) AS total_patients
FROM healthcare_cleaned
GROUP BY `Age Group`
ORDER BY total_patients DESC;
SELECT `Test Results`,
       COUNT(*) AS total_patients
FROM healthcare_cleaned
GROUP BY `Test Results`
ORDER BY total_patients DESC;
SELECT Medication,
       COUNT(*) AS total_patients
FROM healthcare_cleaned
GROUP BY Medication
ORDER BY total_patients DESC;
SELECT Gender,
       ROUND(AVG(`Billing Amount`),2) AS avg_billing
FROM healthcare_cleaned
GROUP BY Gender;
select Name, Hospital, Doctor, `Medical Condition`,
round(`Billing Amount`,2) as billing_amount
from healthcare_cleaned
order by `Billing Amount` desc
limit 10;
SELECT COUNT(*)
FROM healthcare_cleaned;
SELECT *
FROM healthcare_cleaned
WHERE Name = 'Laurie Hood';
SELECT
    Name,
    Age,
    Hospital,
    Doctor,
    `Medical Condition`,
    ROUND(`Billing Amount`,2) AS billing_amount
FROM healthcare_cleaned
ORDER BY `Billing Amount` DESC
LIMIT 10;
select Hospital, round(sum(`Billing Amount`),2) as total_revenue,
rank() over (
order by sum(`Billing Amount`) desc
) as hospital_rank
from healthcare_cleaned
group by  Hospital;
SELECT
    `Medical Condition`,
    ROUND(SUM(`Billing Amount`),2) AS total_revenue,
    DENSE_RANK() OVER(
        ORDER BY SUM(`Billing Amount`) DESC
    ) AS revenue_rank
FROM healthcare_cleaned
GROUP BY `Medical Condition`;
WITH hospital_revenue AS
(
    SELECT
        Hospital,
        ROUND(SUM(`Billing Amount`),2) AS revenue
    FROM healthcare_cleaned
    GROUP BY Hospital
)

SELECT *
FROM hospital_revenue
ORDER BY revenue DESC
LIMIT 10;
select Name, Hospital, `Billing Amount`
from healthcare_cleaned 
where `Billing Amount` >
( select avg(`Billing Amount`)
from healthcare_cleaned
)
order by `Billing Amount` desc;
SELECT AVG(`Billing Amount`)
FROM healthcare_cleaned;
select 
`Admission Year`,
round(sum(`Billing Amount`),2)as total_revenue
FROM healthcare_cleaned
group by `Admission Year`
order by `Admission Year`;
WITH yearly_revenue AS
(
    SELECT
        `Admission Year`,
        ROUND(SUM(`Billing Amount`),2) AS revenue
    FROM healthcare_cleaned
    GROUP BY `Admission Year`
)

SELECT
    `Admission Year`,
    revenue,
    LAG(revenue) OVER(ORDER BY `Admission Year`) AS previous_year_revenue,
    ROUND(
        revenue - LAG(revenue) OVER(ORDER BY `Admission Year`),
        2
    ) AS revenue_difference
FROM yearly_revenue;
WITH hospital_year AS
(
    SELECT
        `Admission Year`,
        Hospital,
        ROUND(SUM(`Billing Amount`),2) AS revenue,
        ROW_NUMBER() OVER(
            PARTITION BY `Admission Year`
            ORDER BY SUM(`Billing Amount`) DESC
        ) AS rn
    FROM healthcare_cleaned
    GROUP BY `Admission Year`, Hospital
)

SELECT
    `Admission Year`,
    Hospital,
    revenue
FROM hospital_year
WHERE rn = 1
ORDER BY `Admission Year`;


