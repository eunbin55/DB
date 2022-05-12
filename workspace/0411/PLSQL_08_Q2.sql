--p.479 Q2.
SET SERVEROUTPUT ON;
DECLARE
    v_wrong DATE;
BEGIN
    SELECT ename into v_wrong
    FROM emp
    WHERE empno = 7369;
    
    
    
EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.put_line('예외가 발생하면 다음 문장은 실행되지 않습니다.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('오류가 발생하였습니다.'||TO_DATE(SYSDATE));
        DBMS_OUTPUT.PUT_LINE('SQLCODE : '||TO_CHAR(SQLCODE));
        DBMS_OUTPUT.PUT_LINE('SQLERRM : '||SQLERRM);

END;
/