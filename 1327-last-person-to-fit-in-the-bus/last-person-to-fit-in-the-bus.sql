# Write your MySQL query statement below
WITH weigh_win AS (
    SELECT person_id, person_name, weight, SUM(weight) over (ORDER BY turn) AS total_weight FROM Queue
)
SELECT person_name FROM weigh_win WHERE total_weight <= 1000
ORDER BY total_weight DESC LIMIT 1;