--패키지 본문(body)
--CREATE [OR REPLACE] PACKAGE BODY 패키지 이름
--IS | AS
--END 패키지 이름;

CREATE OR REPLACE PACKAGE BODY pkg_example
IS
    body_no NUMBER := 10;
    FUNCTION func_aftertax(sal NUMBER) RETURN NUMBER
    IS
        tax NUMBER := 0.05;
    BEGIN
        return round((sal - (sal*tax)));
    END func_aftertax;
    
     PROCEDURE pro_emp(in_empno IN emp.empno%type)
     IS
        out_ename emp.ename%type;
        out_sal emp.sal%type;
     BEGIN
        SELECT ename, sal INTO out_ename, out_sal
        FROM emp
        WHERE empno = in_empno;
        
        DBMS_OUTPUT.put_line('ename : '||out_ename);
        DBMS_OUTPUT.put_line('sal : '||out_sal);
        
     END pro_emp;
     
     PROCEDURE pro_dept(in_deptno IN dept.deptno%TYPE)
     IS
        out_dname dept.dname%type;
        out_loc dept.loc%type;
     BEGIN
        SELECT dname, loc INTO out_dname, out_loc
        FROM dept
        WHERE deptno = in_deptno;
        
        DBMS_OUTPUT.put_line('dname: '||out_dname);
        DBMS_OUTPUT.put_line('loc: '||out_loc);
     END pro_dept;
    
END;
/