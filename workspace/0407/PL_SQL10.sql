SET SERVEROUTPUT ON;
DECLARE
    V_DEPTNO DEPT.DEPTNO%TYPE := 50;
BEGIN
    --������ ��ҹ��� ���� ����
    dbms_output.put_line('V_DEPTNO: ' || v_deptno);
END;
/