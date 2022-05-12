--Q08_02
SELECT t1.deptno,
       t2.dname,
       TRUNC(AVG(NVL(t1.sal,0)),0) as AVG_SAL,
       MAX(t1.sal) as MAX_SAL,
       MIN(t1.sal) as MIN_SAL,
       COUNT(*)
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
GROUP BY (t1.deptno, t2.dname)
;