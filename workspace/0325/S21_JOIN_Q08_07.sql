--5. professor ���̺��� 
--������ ��ȣ, �����̸�, �Ի���, �ڽź��� �Ի��� ���� ��� �ο����� ����ϼ���. 
--�� �ڽź��� �Ի����� ���� ������� ������������ ����ϼ���.  
--(Oracle Join ������ ANSI Join �������� ���� SQL�� �ۼ��ϼ���)

SELECT t1.profno,
       t1.name,
       TO_CHAR(t1.hiredate,'YYYY/MM/DD') as HIREDATE,
       COUNT(t2.hiredate) AS "COUNT"
FROM professor t1, professor t2
WHERE t1.profno > t2.profno(+)
GROUP BY t1.profno, t1.name, t1.hiredate
ORDER BY t1.hiredate
;