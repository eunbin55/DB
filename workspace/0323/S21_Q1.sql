--p.212 Q1
SELECT deptno,
       TRUNC(AVG(SAL)) AS "AVG_SAL",
       MAX(sal) AS "MAX_SAL",
       MIN(SAL) AS MIN_SAL,
       COUNT(*) AS CNT
FROM emp
GROUP BY deptno
ORDER BY deptno DESC
;