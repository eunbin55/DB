--emp_trg_log 테이블 생성
--dml명령어가 실행될 경우, emp_trg_log테이블에 로그 생성
--dml사용자, dml명령어, 수행된 날짜
CREATE TABLE emp_trg_log
(
    tablename VARCHAR2(30),
    dml_type VARCHAR2(20),
    empno NUMBER(4),
    user_name VARCHAR2(50),
    change_date DATE

);

CREATE OR REPLACE TRIGGER trg_emp_log
AFTER
INSERT OR UPDATE OR DELETE ON emp_trg
FOR EACH ROW

BEGIN
    IF INSERTING THEN
        INSERT INTO emp_trg_log
        VALUES('EMP_TRG', 'INSERT',:new.empno,
                sys_context('USERENV','SESSION_USER'), 
                sysdate);
    ELSIF UPDATING THEN
         INSERT INTO emp_trg_log
        VALUES('EMP_TRG', 'UPDATE',:old.empno,
                sys_context('USERENV','SESSION_USER'), 
                sysdate);
    ELSIF DELETING THEN
         INSERT INTO emp_trg_log
        VALUES('EMP_TRG', 'DELETE',:old.empno,
                sys_context('USERENV','SESSION_USER'), 
                sysdate);
    END IF;
END;
/