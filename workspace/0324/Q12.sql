--Q12
--15) professor ���̺��� ��ȸ�Ͽ� �а���ȣ , ������ , �޿� , �а��� �޿� �հ踦 ���ϰ� 		
--�� ������ �޿��� �ش� �а��� �޿� �հ迡�� �����ϴ� ������ ����ϼ���.						
SELECT deptno,
       name,
       pay,
       SUM(pay) OVER(PARTITION BY deptno) AS "TOTAL_PAY",
       ROUND((RATIO_TO_REPORT(pay) OVER (PARTITION BY deptno)*100),2) AS "RATIO_%"
FROM professor
ORDER BY deptno, name
;
--SELECT�� ���� ����
--5   SELECT
--1   FROM
--2   WHERE
--3   GROUP BY
--4   HAVING
--6   ORDER BY