# Write your MySQL query statement below
SELECT customer_id, count(customer_id) as count_no_trans FROM Visits 
where visit_id not in (
    Select visit_id From Transactions 
) group by customer_id order by count_no_trans;