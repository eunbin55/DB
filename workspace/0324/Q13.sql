--Q13
--14) professor ���̺��� �� �������� �޿��� ���ϰ� �� ������ �޿����� ��ü ������ 																			
--�޿� �հ迡�� �����ϴ� ������ ����ϼ���																			
SELECT deptno,
       name,
       pay,
       SUM(pay) OVER() AS "TOTAL_PAY",
       ROUND((RATIO_TO_REPORT(pay) OVER ()*100),2) AS "RATIO_%"
FROM professor
ORDER BY "RATIO_%"
;