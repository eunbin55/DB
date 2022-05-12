--Q3.
--EXTRACT() ¿ªÇÒ
SELECT EXTRACT(YEAR FROM hiredate),
       deptno,
       COUNT(*)
FROM emp
GROUP BY EXTRACT(YEAR FROM hiredate), deptno
ORDER BY extract(YEAR FROM hiredate) desc, deptno DESC

;
--SELECT TO_CHAR(hiredate,'YYYY') AS HIRE_YEAR,
--        deptno,
--        count(*) AS CNT
--FROM emp
--GROUP BY hiredate,deptno
--ORDER BY deptno
--;