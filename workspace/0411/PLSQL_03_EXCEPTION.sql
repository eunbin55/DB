SET SERVEROUTPUT ON;
DECLARE
    V_WRONG NUMBER;
BEGIN
    --���ڿ� -> NUMBER�� �Ҵ� �� �����߻�
    SELECT dname INTO V_WRONG
    FROM dept
    WHERE deptno = 10;
    
EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('���� ó��: ��ġ �Ǵ� �� ���� �߻�');
    
END;
/