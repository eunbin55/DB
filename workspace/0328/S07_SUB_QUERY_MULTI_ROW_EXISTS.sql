--EXISTS				SUB QUERY�� ���� ���� ��� ���� ���� ����										

--���� ������ ������ ���� �����ؼ� �� ����� 1���̶� ������ ���������� ����
--���� ������ ������ 1�ǵ� ������ ������ �������� ���� X

SELECT empno,
       ename,
       job,
       sal,
       deptno
FROM emp
WHERE EXISTS( SELECT deptno
                FROM emp
                WHERE deptno = &dno);
                