--1~10 사이 짝수일때만 출력
SET SERVEROUTPUT ON;
DECLARE
    
BEGIN
    FOR i IN 1..10 LOOP
        CONTINUE WHEN MOD(i,2) = 1;
        DBMS_OUTPUT.PUT_LINE('i: '||i);
    END LOOP;

END;
/