SET SERVEROUTPUT ON;
DECLARE
    V_DEPTNO DEPT.DEPTNO%TYPE := 50;
BEGIN
    --변수에 대소문자 구분 없음
    dbms_output.put_line('V_DEPTNO: ' || v_deptno);
END;
/