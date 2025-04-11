# Write your MySQL query statement below
SELECT E.employee_id, E.name, D.reports_count, D.average_age FROM Employees E 
INNER JOIN (
SELECT reports_to AS employee_id, COUNT(employee_id) AS reports_count, ROUND(AVG(age)) AS average_age
FROM Employees GROUP BY reports_to ) D ON
E.employee_id = D.employee_id
ORDER BY E.employee_id ;