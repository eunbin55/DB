SELECT LPAD(ename, LEVEL * 4, '*') ename,
       level
FROM emp
--CONNECT BY : ��������
--PRIOR : ������ ���� ã�µ� ���
--�ش� Ű���尡 �����Ǿ� �ִ� �÷����� �ٷ� ���������͸� ã�ƶ�

--connect by prior �ڽ��÷� : �θ� -> �ڽ�����
--connect by prior �θ��÷� : �ڽ� -> �θ�
CONNECT BY PRIOR empno = mgr

--��������
START WITH empno = 7839;
