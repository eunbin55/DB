--�÷����� ������ �� ����ġ
--INSERT INTO dept_temp(deptno, dname, loc)
--VALUES(50, 'DATABASE');
--���� �߻� ������: 3 ��: 1
--���� ���� -
--SQL ����: ORA-00947: ���� ���� ������� �ʽ��ϴ�

INSERT INTO dept_temp(deptno, dname)
VALUES(50, 'DATABASE', 'SEOUL');
--���� �߻� ������: 8 ��: 13
--���� ���� -
--SQL ����: ORA-00913: ���� ���� �ʹ� �����ϴ�


--���ڰ� �Էµ� �ڸ��� �����Է�
INSERT INTO dept_temp(deptno, dname, loc)
VALUES('FAIL', 'DATABASE', 'SEOUL');
--VALUES('FAIL', 'DATABASE', 'SEOUL')
--���� ���� -
--ORA-01722: ��ġ�� �������մϴ�