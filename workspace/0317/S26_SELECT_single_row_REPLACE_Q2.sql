--Q2
--student ���̺��� �Ʒ��� ���� 1����(deptno1)�� 101���� �л�����
--�̸��� �ֹε�Ϲ�ȣ�� ����ϵ� �ֹε�Ϲ�ȣ�� �� 7�ڸ��� '-'�� '/'�� ǥ�õǰ� ���
SELECT name,
        jumin,
        REPLACE(jumin,substr(jumin,7),'-/-/-/-') AS REP
FROM student
WHERE deptno1 = 101
;