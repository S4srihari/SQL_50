# Write your MySQL query statement below
SELECT id, COUNT(id) AS num FROM ( 
SELECT accepter_id AS id FROM RequestAccepted 
UNION ALL
SELECT requester_id AS id FROM RequestAccepted ) Derived
GROUP BY id 
ORDER BY num DESC
LIMIT 1