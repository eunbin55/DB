--dept_fk�� 10�� �μ� ����
--����Ȯ��
DELETE FROM dept_fk
WHERE deptno = 10;
--ORA-02292: ���Ἲ ��������(SCOTT.EMPFK_DEPTNO_FK)�� ����Ǿ����ϴ�- �ڽ� ���ڵ尡 �߰ߵǾ����ϴ�



--parent ���̺�� �ڽ����̺� ���������� ���� ó��
--1. �� ������ ����
CONSTRAINT [���������̸�] REFERENCES �������̺�(�����÷�) ON DELETE CASCADE;

--2. �� �����͸� NULL�� ����
CONSTRAINT [���������̸�] REFERENCES �������̺�(�����÷�) ON DELETE SET NULL;