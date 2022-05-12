
SET SERVEROUTPUT ON;
DECLARE
    --dept record정의
    TYPE REC_DEPT is record(
        deptno dept.deptno%TYPE,
        dname dept.dname%TYPE,
        loc dept.loc%TYPE
    );
    
    --emp record정의
    TYPE REC_EMP is record(
        empno emp.empno%TYPE,
        ename emp.ename%TYPE,
        --dept 레코드 포함
        dinfo REC_DEPT
    );
    --emp record 변수선언
    emp_rec REC_EMP;
    
    
BEGIN
    SELECT t1.empno, t1.ename, t2.deptno, t2.dname, t2.loc 
        INTO emp_rec.empno, emp_rec.ename, 
            emp_rec.dinfo.deptno, emp_rec.dinfo.dname,emp_rec.dinfo.loc
    FROM emp t1, dept t2
    WHERE t1.deptno = t2.deptno
    AND t1.empno = 7788;

    --조회 데이터 출력
    DBMS_OUTPUT.PUT_LINE('empno: '||emp_rec.empno);
    DBMS_OUTPUT.PUT_LINE('ename: '||emp_rec.ename);
    
    DBMS_OUTPUT.PUT_LINE('deptno: '||emp_rec.dinfo.deptno);
    DBMS_OUTPUT.PUT_LINE('dname: '||emp_rec.dinfo.dname);
    DBMS_OUTPUT.PUT_LINE('loc: '||emp_rec.dinfo.loc);

END;
/