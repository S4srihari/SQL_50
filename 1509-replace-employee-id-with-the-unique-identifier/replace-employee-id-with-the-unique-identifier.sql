# Write your MySQL query statement below
SELECT eu.unique_id, e.name
FROM EmployeeUNI eu RIGHT JOIN 
Employees e on e.id = eu.id;