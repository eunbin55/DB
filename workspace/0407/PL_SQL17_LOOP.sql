--매우 간단한 형태의 반복문
--LOOP
--    반복 수행 문장;
--    EXIT WHEN 조건;
--END LOOP;

SET SERVEROUTPUT ON;
DECLARE
    V_NUM NUMBER := 0;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('V_NUM: '||V_NUM);
        V_NUM := v_num +1;
        EXIT WHEN v_num > 11;
    END LOOP;
END;
/