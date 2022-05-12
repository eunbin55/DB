SET SERVEROUTPUT ON;
DECLARE
    V_NUM NUMBER := 0;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('V_NUM: '||V_NUM);
        V_NUM := v_num +1;
        IF  v_num > 11 THEN
            --EXIT: javaÀÇ break
            EXIT;
        END IF;
        --EXIT WHEN v_num > 11;
    END LOOP;
END;
/