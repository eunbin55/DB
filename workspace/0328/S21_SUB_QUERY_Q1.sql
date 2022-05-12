--p.262 Q1
SELECT t1.job,
       t1.empno,
       t1.ename,
       t1.sal,
       t1.deptno,
       t2.dname
FROM emp t1, dept t2
WHERE t2.deptno = t1.deptno
AND job = ( SELECT job
                FROM emp
                WHERE ename = 'ALLEN')
;