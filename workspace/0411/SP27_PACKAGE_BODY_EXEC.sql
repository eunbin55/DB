SET SERVEROUTPUT ON;
DECLARE
    
BEGIN
    DBMS_OUTPUT.PUT_LINE('FUNCTION func_aftertax(sal NUMBER)');
    DBMS_OUTPUT.put_line('aftertax: '||pkg_example.func_aftertax(3000));
    
    DBMS_OUTPUT.PUT_LINE('PROCEDURE pro_emp(7788)');
    pkg_example.pro_emp(7788);
    
    DBMS_OUTPUT.PUT_LINE('PROCEDURE pro_dept(10)');
    pkg_example.pro_dept(10);
END;
/