SELECT grade, count(*)
FROM student
GROUP BY grade
UNION 
SELECT deptno1, count(*)
FROM student
GROUP BY deptno1