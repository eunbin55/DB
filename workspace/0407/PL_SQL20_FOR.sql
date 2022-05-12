--FOR LOOP
--반복 횟수를 알고 있을 때 사용
--
--FRO i  IN 시작값..종료값 LOOP
--    수행문장;
--END LOOP;

SET SERVEROUTPUT ON;
DECLARE

BEGIN
    FOR i IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE('i: '||i);
    
    END LOOP;
END;
/