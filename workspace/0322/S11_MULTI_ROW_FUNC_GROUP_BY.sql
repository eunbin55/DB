--�μ��� ������ �޿�
--ORACLE 10G�� ���������� ���ĵǾ ���
--ORACLE 10G�� ���Ŀ����� ���� �ȵ�,���� ORDER BY�� ���
SELECT  deptno, job, AVG(NVL(sal,0)) "AVG_SAL"
FROM emp
GROUP BY deptno, job
ORDER BY deptno, job
;
--1. SELECT ���� ���� �׷��Լ� �̿��� �÷��̳� ǥ������ �ݵ�� GROUP BY 
--���� ���Ǿ�� �մϴ�. �׷��� ���� ��� �Ʒ��� ���� ������ �߻��մϴ�.
--������ GROUP BY���� ���� �÷��̶� SELECT������ ������� �ʾƵ� �ȴ�.

--SELECT  deptno, job, AVG(NVL(sal,0)) "AVG_SAL"
--FROM emp
--GROUP BY deptno
--ORDER BY deptno
;
--ORA-00979: GROUP BY ǥ������ �ƴմϴ�.

--2. GROUP BY ������ �ݵ�� �÷����� ���Ǿ�� �ϸ� �÷� Alias �� 
--����ϸ� �ȵ˴ϴ�
--SELECT  deptno AS no, job, AVG(NVL(sal,0)) "AVG_SAL"
--FROM emp
--GROUP BY no, job --group by ������ alias��� �ȵ�
--ORDER BY deptno, job
--;
----ORA-00904: "NO": �������� �ĺ���