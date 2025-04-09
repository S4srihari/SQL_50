# Write your MySQL query statement below
SELECT ROUND(AVG(if(customer_pref_delivery_date = order_date, 1, 0)*100),2) 
AS immediate_percentage FROM Delivery D JOIN 
(SELECT customer_id, min(order_date) AS f_date FROM Delivery
GROUP BY customer_id ) F ON 
D.customer_id = F.customer_id AND D.order_date = F.f_date