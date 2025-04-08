# Write your MySQL query statement below
SELECT P.product_id, if(ROUND(Sum(price*units)/sum(units),2) is null, 0, ROUND(Sum(price*units)/sum(units),2)) AS average_price
FROM Prices P LEFT JOIN UnitsSold U ON
P.product_id = U.product_id AND U.purchase_date BETWEEN P.start_date AND P.end_date
GROUP BY P.product_id