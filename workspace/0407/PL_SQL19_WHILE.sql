SET SERVEROUTPUT ON;
DECLARE
    V_NUM number := 1;
BEGIN
    WHILE V_NUM<11 LOOP
        DBMS_OUTPUT.PUT_LINE(V_NUM);
        V_NUM := v_num+1;
    
    END LOOP;


END;
/