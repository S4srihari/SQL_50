# Write your MySQL query statement below
SELECT ROUND(COUNT(A.player_id)/COUNT(F.player_id),2) AS fraction FROM Activity A 
RIGHT JOIN (SELECT player_id, min(event_date) AS F_date
FROM Activity GROUP BY player_id)F ON
A.player_id = F.player_id AND DATEDIFF(A.event_date,F.F_date) = 1 ;