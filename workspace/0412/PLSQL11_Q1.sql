--p.518 Q1.
CREATE OR REPLACE PROCEDURE pro_dept_in
(
    inout_deptno IN OUT dept.deptno%TYPE,
    out_dname out dept.dname%TYPE,
    out_loc out dept.loc%TYPE
)
IS
BEGIN
    SELECT * INTO inout_deptno, out_dname, out_loc
    FROM dept
    WHERE deptno = inout_deptno;
    
END;
/

SET SERVEROUTPUT ON;
DECLARE
    v_deptno dept.deptno%TYPE;
    v_dname dept.dname%TYPE;
    v_loc dept.loc%TYPE;
BEGIN
    v_deptno := 10;
    pro_dept_in(v_deptno, v_dname, v_loc);
    DBMS_OUTPUT.PUT_LINE('부서번호 : '||v_deptno);
    DBMS_OUTPUT.PUT_LINE('부서명 : '||v_dname);
    DBMS_OUTPUT.PUT_LINE('지역 : '||v_loc);
END;
/


