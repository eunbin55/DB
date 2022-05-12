--Q3
SELECT t1.empno,
       t1.ename,
       t1.job,
       t2.deptno,
       t2.dname,
       t2.loc
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
AND t1.deptno = 10
AND  t1.job NOT IN (SELECT job
                        FROM emp
                        WHERE deptno = 30)
;