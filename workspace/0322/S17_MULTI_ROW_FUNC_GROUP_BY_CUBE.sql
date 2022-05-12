--CUBE() �Ұ����
--�����߿�x
--GROUP by CUBE(�׷�ȭ �÷�...)    N
--2*n�� �Ұ�

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
--1 DEPTNO �׷�����
--2 DEPTNO, JOB �׷�����
--3 ��ü �׷� ����