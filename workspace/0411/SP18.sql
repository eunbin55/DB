--프로시저 오류 정보 확인하기
CREATE OR REPLACE PROCEDURE pro_err
IS
    err_no NUMBER;
BEGIN
    -- :제거(오류)
    err_no = 100;
    
    DBMS_OUTPUT.PUT_LINE('err_no: '||err_no);
END;
/

