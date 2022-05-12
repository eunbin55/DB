--직책별, 부서별, 최고 급여
--JOB           10   20     30
--ANALYST            3000
--CLERKL       1300  1100   950
--...

--부서별 지책별 최고급여
SELECT deptno, job, MAX(sal)
FROM emp
GROUP BY deptno, job
ORDER BY deptno, job
;