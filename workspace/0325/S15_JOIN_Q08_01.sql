--Q08_01 p.239
--oracle
SELECT t1.deptno,
       t2.dname,
       t1.empno,
       t1.ename,
       t1.sal
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
AND t1.sal > 2000
ORDER BY deptno, sal
;

--ansi
SELECT t1.deptno,
       t2.dname,
       t1.empno,
       t1.ename,
       t1.sal
FROM emp t1 JOIN dept t2
ON t1.deptno = t2.deptno
AND t1.sal > 2000
ORDER BY deptno,empno
;