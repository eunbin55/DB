--EMPTNO별로 그룹화 한 후 ROLLUP() 함수에 JOB지정

--GROUP BY deptno, ROLLUP(job)
--SELECT deptno, job, COUNT(*)
--FROM emp
--GROUP BY deptno, ROLLUP(job)
--;

SELECT deptno, job, COUNT(*)
FROM emp
GROUP BY job, ROLLUP(deptno)
;