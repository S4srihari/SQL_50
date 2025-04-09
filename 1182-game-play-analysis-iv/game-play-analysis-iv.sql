# Write your MySQL query statement below

#SELECT ROUND(COUNT(A.player_id)/COUNT(F.player_id),2) AS fraction FROM
#(SELECT player_id, min(event_date) AS F_date
#FROM Activity GROUP BY player_id)F LEFT JOIN Activity A ON
#A.player_id = F.player_id AND DATEDIFF(A.event_date,F.F_date) = 1 ;

SELECT ROUND( COUNT(DISTINCT player_id) / (SELECT COUNT( DISTINCT player_id) FROM Activity) ,2) AS fraction
FROM Activity WHERE 
(player_id, event_date) in (
    SELECT player_id, min(event_date) + INTERVAL 1 DAY AS event_date FROM Activity 
    GROUP BY player_id
);