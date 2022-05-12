SET SERVEROUTPUT ON;
DECLARE
    after_tax number;
BEGIN
    after_tax := func_aftertax(3000);
    
    DBMS_OUTPUT.put_line('after_tax income: '||after_tax);
END;
/