SET SERVEROUTPUT ON;
DECLARE
    V_WRONG NUMBER;
BEGIN
    --���ڿ� -> NUMBER�� �Ҵ� �� �����߻�
    SELECT dname INTO V_WRONG
    FROM dept
    WHERE deptno = 10;
END;
/

--ORA-06502: PL/SQL: ��ġ �Ǵ� �� ����: ���ڸ� ���ڷ� ��ȯ�ϴµ� �����Դϴ�