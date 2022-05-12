--패키지 구조와 생성
--패키지 명세
--CREATE [OR REPLACE] PACKAGE 패키지이름
--IS | AS
--  서브프로그램을 포함한 다양한 객체 선언
--END [패키지 이름];

CREATE OR REPLACE PACKAGE pkg_example
IS
    spec_no NUMBER := 10;
    FUNCTION func_aftertax(sal NUMBER) RETURN NUMBER;

    PROCEDURE pro_emp(in_empno IN emp.empno%type);
    
    PROCEDURE pro_dept(in_deptno IN dept.deptno%TYPE);
END;
/
--Package PKG_EXAMPLE이(가) 컴파일되었습니다.


