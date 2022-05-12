--Q 1ºÐº¹½À
SELECT deptno, job, AVG(sal)
FROM emp
GROUP BY deptno, job
HAVING AVG(sal) >= 500
ORDER BY DEPTNO, job;