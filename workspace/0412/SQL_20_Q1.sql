--1. emp2 ���̺�� dept2 ���̺��� ����Ͽ� �Ʒ��� ���� ������ �μ��� ������ ���ļ� ����ϵ� 
--�μ��� ���޺��� ������ ������ ����Ͽ� ����ϼ���.
--�� ������ ���� ������� ������ ��Team-Worker�� �� ����ϼ���.

SELECT LPAD(t1.name || '-' || t2.dname || NVL(t1.position, 'Team-Worker'),LEVEL*26,'-')AS NAME_AND_POSITION
FROM emp2 t1, dept2 t2
WHERE t1.deptno = t2.dcode
START WITH t1.PEMPNO IS NULL
CONNECT BY PRIOR T1.empno = t1.pempno
;