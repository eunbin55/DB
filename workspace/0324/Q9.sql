--Q9
--10) emp ���̺��� ��ȸ�Ͽ� �Ʒ��� ���� �� �������� �޿��� �ش� �μ� �հ�ݾ׿��� 																					
--�� %�� ������ �����ϴ����� ����ϼ���. �� �μ���ȣ�� �������� ������������ ����ϼ���.																					
SELECT deptno,
       ename,
       sal,
       SUM(sal) OVER(PARTITION BY deptno)AS SUM_DEPT,
       ROUND(RATIO_TO_REPORT(sal) OVER (PARTITION BY deptno)*100,2) AS A
FROM emp
ORDER BY deptno
;