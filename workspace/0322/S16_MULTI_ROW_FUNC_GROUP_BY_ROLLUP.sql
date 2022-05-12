SELECT deptno, job, AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
GROUP BY ROLLUP(deptno, job)
;
--순서중요