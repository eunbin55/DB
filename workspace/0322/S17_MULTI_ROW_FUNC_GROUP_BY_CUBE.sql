--CUBE() 소계출력
--순서중요x
--GROUP by CUBE(그룹화 컬럼...)    N
--2*n승 소계

SELECT deptno, job, AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
GROUP BY deptno, job
UNION ALL
SELECT deptno, null as job, AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
GROUP BY deptno
UNION ALL
SELECT null deptno, job, AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
GROUP BY job
UNION ALL
SELECT null deptno, null as job, AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
ORDER BY deptno, job
;
--1 DEPTNO 그룹집계
--2 DEPTNO, JOB 그룹집계
--3 전체 그룹 집계