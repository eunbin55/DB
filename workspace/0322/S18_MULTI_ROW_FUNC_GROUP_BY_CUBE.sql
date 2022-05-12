SELECT deptno, job, AVG(NVL(sal,0)) avg_sal, COUNT(*) cnt_emp
FROM emp
GROUP BY CUBE (deptno, job)
ORDER bY deptno, job
;
--1 DEPTNO �׷�����
--2 DEPTNO, JOB �׷�����
--3 ��ü �׷� ����