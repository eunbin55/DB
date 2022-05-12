SELECT dname,
       t2.name
FROM department t1, student t2
WHERE t1.deptno = (SELECT deptno1
                FROM student
                WHERE name = 'Anthony Hopkins')
AND t2.deptno1 = t1.deptno
;