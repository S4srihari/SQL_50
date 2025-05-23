# Write your MySQL query statement below
SELECT machine_id, ROUND(AVG(t2-t1),3) AS processing_time FROM (SELECT A1.machine_id, A1.timestamp AS t1, A2.timestamp AS t2 FROM
Activity A1 JOIN Activity A2
ON A1.machine_id = A2.machine_id AND A1.process_id = A2.process_id AND 
A1.activity_type = 'start' AND A2.activity_type = 'end')A GROUP BY machine_id