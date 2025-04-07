# Write your MySQL query statement below
SELECT S.student_id, S.student_name,Su.subject_name, Count(E.student_id) AS attended_exams FROM 
Students S CROSS JOIN Subjects Su LEFT JOIN Examinations E ON 
E.student_id = S.student_id AND E.subject_name = Su.subject_name
GROUP BY S.student_id,Su.subject_name,S.student_name
ORDER BY student_id, subject_name;