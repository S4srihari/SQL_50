# Write your MySQL query statement below
SELECT id FROM (
select w1.id, w1.temperature AS temp1, w2.temperature AS temp2 FROM Weather w1 Join Weather w2 on DateDiff(w1.recordDate, w2.recordDate) = 1 
)t WHERE  temp1 > temp2;