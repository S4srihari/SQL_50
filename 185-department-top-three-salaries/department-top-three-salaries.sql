SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary 
FROM Employee e, Department d, Employee e2
WHERE d.id = e.departmentId AND e.departmentId = e2.departmentId AND
e.salary <= e2.salary
GROUP BY d.id, e.id
HAVING COUNT(distinct e2.salary ) <= 3