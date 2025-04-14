# Write your MySQL query statement below
SELECT product_name, SUM(unit) AS unit FROM Orders o JOIN Products p ON p.product_id = o.product_id 
WHERE order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY o.product_id HAVING unit >= 100