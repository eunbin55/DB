

SET SERVEROUTPUT ON;
DECLARE

BEGIN
    UPDATE DEPT
    SET dname = 'DATABASE'
    WHERE deptno = 50;
    
    DBMS_OUTPUT.PUT_LINE('���ŵ� ���� ��: '||SQL%ROWCOUNT);
    
    IF(SQL%FOUND) THEN
        DBMS_OUTPUT.PUT_LINE('���� ��� �� ���� ���� : TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('���� ��� �� ���� ���� : FALSE');
    END IF;
    
    IF(SQL%ISOPEN) THEN
        DBMS_OUTPUT.PUT_LINE('Ŀ���� OPEN���� : TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Ŀ���� OPEN���� : FALSE');
    END IF;
END;
/