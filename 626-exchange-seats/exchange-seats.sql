# Write your MySQL query statement below
SELECT S1.id, COALESCE(S2.student,S1.student) as student FROM Seat S1 LEFT JOIN Seat S2
ON S1.id + 1 = S2.id 
WHERE S1.id%2 != 0
UNION ALL
SELECT S1.id, S2.student FROM Seat S1 INNER JOIN Seat S2
ON S1.id - 1 = S2.id
WHERE S1.id%2 = 0 
ORDER BY id