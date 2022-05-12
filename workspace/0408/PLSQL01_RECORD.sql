--RECORD정의
--정의된 변수 선언

SET SERVEROUTPUT ON;
DECLARE
    --record정의
    TYPE REC_DEPT IS RECORD(
        deptno NUMBER(2) NOT NULL := 99,
        dname dept.dname%TYPE,
        loc dept.loc%TYPE
    );
    --정의된 변수 선언
    dept_rec REC_DEPT;
BEGIN
    dept_rec.deptno := 20;
    dept_rec.dname :='DATABASE';
    dept_rec.loc :='SEOUL';
    
    DBMS_OUTPUT.PUT_LINE('deptno:'||dept_rec.deptno);
    DBMS_OUTPUT.PUT_LINE('dname:'||dept_rec.dname);
    DBMS_OUTPUT.PUT_LINE('loc:'||dept_rec.loc);
END;
/