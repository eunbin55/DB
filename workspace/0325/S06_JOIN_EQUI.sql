--�� 4) student ���̺��� ��ȸ�Ͽ� 1����(deptno1)�� 101���� �л����� �̸���
--�� �л����� �������� ��ȣ�� �������� �̸��� ����ϼ���.

SELECT t1.name,
       t2.name
FROM student t1, professor t2
WHERE t1.profno = t2.profno
AND t1.deptno1 = 101
;