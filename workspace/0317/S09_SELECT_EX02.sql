--Q2
SELECT t1.empno, t1.ename, t1.job, t1.sal, t1.deptno
FROM emp t1
WHERE t1.deptno = 30 
AND job = 'SALESMAN'
;