# Write your MySQL query statement below
SELECT x,y,z, 
if((x+y+z)/2 > x AND (x+y+z)/2 > y AND (x+y+z)/2 > z, 'Yes', "No") 
AS triangle FROM Triangle;