# Write your MySQL query statement below
SELECT distinct(customer_id), count(customer_id) as count_no_trans FROM Visits 
where visit_id not in (
    Select distinct(v.visit_id) From Visits v Inner Join Transactions t on v.visit_id = t.visit_id
) group by customer_id order by count_no_trans;