# Write your MySQL query statement below
DELETE p from Person P JOIN Person P2
ON p.id > P2.id AND p.email = P2.email;