--RECORD����
--���ǵ� ���� ����

SET SERVEROUTPUT ON;
DECLARE
    --record����
    TYPE REC_DEPT IS RECORD(
        deptno NUMBER(2) NOT NULL := 99,
        dname dept.dname%TYPE,
        loc dept.loc%TYPE
    );
    --���ǵ� ���� ����
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