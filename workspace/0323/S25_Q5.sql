--Q5
SELECT deptno,
       to_char(hiredate,'YYYY') hire_year,
        COUNT(*) cnt,
       MAX(sal) AS MAX_SAL,
       SUM(sal) AS SUM_SAL,
       AVG(sal) AS AVG_SAL
FROM emp
GROUP BY ROLLUP(deptno,to_char(hiredate,'YYYY'))
;