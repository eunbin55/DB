SET SERVEROUTPUT ON;
DECLARE
    no NUMBER;
BEGIN
    no := 9;
    pro_inout(no);
    
    dbms_output.put_line('no : '||no);
END;
/