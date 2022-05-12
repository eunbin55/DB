--ROLLUP() �Ұ����
--1. �� ������ SELECT���� ���� �÷��� ������ �����ؾ� �Ѵ�.
--2. �� ������ SELECT���� ���� �÷��� ������ ���� �����ؾ� �Ѵ�.
SELECT deptno, job, AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
GROUP BY deptno, job
UNION ALL
SELECT deptno, null as job, AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
GROUP BY deptno
UNION ALL
SELECT null as deptno, null as job, AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
ORDER BY deptno, job
;