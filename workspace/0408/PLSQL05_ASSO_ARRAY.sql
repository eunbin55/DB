--연관배열
SET SERVEROUTPUT ON;
DECLARE
    --연관배열 정의
    TYPE ITAB_EX IS TABLE OF VARCHAR2(20)
    INDEX BY PLS_INTEGER;
    
    --선언
    text_arr ITAB_EX;
BEGIN
    text_arr(1) := '1st data';
    text_arr(2) := '2st data';
    text_arr(3) := '3st data';
    
    DBMS_OUTPUT.PUT_LINE('text_arr(1):'||text_arr(1));
    DBMS_OUTPUT.PUT_LINE('text_arr(2):'||text_arr(2));
    DBMS_OUTPUT.PUT_LINE('text_arr(3):'||text_arr(3));

END;
/