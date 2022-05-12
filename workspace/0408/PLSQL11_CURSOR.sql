
SET SERVEROUTPUT ON;
DECLARE
    V_DEPT dept%ROWTYPE;
BEGIN
    SELECT deptno, dname, loc INTO V_DEPT
    FROM dept
    WHERE deptno = 40;
    
    dbms_output.put_line('DEPTNO: ' || V_DEPT.deptno);
    dbms_output.put_line('DNAME: ' || V_DEPT.dname);
    dbms_output.put_line('LOC: ' || V_DEPT.loc);
    

END;
/