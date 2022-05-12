SELECT deptno, job, AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
GROUP BY CUBE (deptno, job)
ORDER bY deptno, job
;
--1 DEPTNO 그룹집계
--2 DEPTNO, JOB 그룹집계
--3 전체 그룹 집계