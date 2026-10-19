select * from subscriptions;
SELECT
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churned = 'yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN churned = 'yes' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS churn_rate
FROM subscriptions;

SELECT
    plan_type,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churned = 'yes' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        SUM(CASE WHEN churned = 'yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM subscriptions
GROUP BY plan_type
ORDER BY churn_rate DESC;

SELECT
    plan_tier,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churned = 'yes' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        SUM(CASE WHEN churned = 'yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM subscriptions
GROUP BY plan_tier
ORDER BY churn_rate DESC;

SELECT
    acquisition_channel,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churned = 'yes' THEN 1 ELSE 0 END)
        AS churned_customers,
    ROUND(
        SUM(CASE WHEN churned = 'yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM subscriptions
GROUP BY acquisition_channel
ORDER BY churn_rate DESC;

SELECT
    cancel_reason,
    COUNT(*) AS customers
FROM subscriptions
WHERE churned = 'yes'
GROUP BY cancel_reason
ORDER BY customers DESC;

SELECT
    s.churned,
    COUNT(*) AS customer_months,
    ROUND(AVG(u.workouts_completed), 2) AS avg_workouts,
    ROUND(AVG(u.minutes_active), 2) AS avg_minutes_active,
    ROUND(AVG(u.classes_booked), 2) AS avg_classes_booked
FROM subscriptions s
JOIN `usage`  u
    ON s.customer_id = u.customer_id
GROUP BY s.churned;

show tables;
