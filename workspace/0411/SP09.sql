CREATE OR REPLACE PROCEDURE PRO_NOPARAM
IS
    v_empno NUMBER(4) := 7788;
    v_ename VARCHAR2(10);
BEGIN
    v_ename :='SCOTT';
    DBMS_OUTPUT.put_line('v_empno : '||v_empno);
    DBMS_OUTPUT.put_line('v_ename : '||v_ename);
END;
/

--����
--EXECUTE ���ν����̸�

EXECUTE pro_noparam;