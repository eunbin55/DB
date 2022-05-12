SET SERVEROUTPUT ON;
DECLARE
    V_DEPT_ROW DEPT%ROWTYPE;
BEGIN
    SELECT deptno, dname, loc INTO v_dept_row
    FROM dept
    WHERE deptno = 40;
    
    DBMS_OUTPUT.put_line('deptno:' || v_dept_row.deptno);
    DBMS_OUTPUT.put_line('dname:' || v_dept_row.dname);
    DBMS_OUTPUT.put_line('loc:' || v_dept_row.loc);
    
END;
/