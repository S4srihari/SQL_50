# Write your MySQL query statement below
select w1.id 
FROM Weather w1 Join Weather w2 
on w1.recordDate = w2.recordDate + Interval 1 day
WHERE w1.temperature > w2.temperature;