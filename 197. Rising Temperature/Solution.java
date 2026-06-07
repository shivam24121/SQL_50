with rn as(
    SELECT *,
    LAG(temperature) OVER(ORDER BY recordDate) AS prev_temp,
    LAG(recordDate) OVER(ORDER BY recordDate) AS prev_date
    FROM Weather
)
SELECT id 
FROM rn
WHERE temperature>prev_temp
AND recordDate=prev_date+ INTERVAL '1 DAY';
