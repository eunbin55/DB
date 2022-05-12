--p.520 Q3.
--dept_trg 抛捞喉 积己
CREATE TABLE dept_trg
AS
SELECT * FROM DEPT;


SELECT * FROM dept_trg;


--dept_trg_log 抛捞喉 积己
CREATE TABLE dept_trg_log
(
    tablename VARCHAR2(10),
    dml_type VARCHAR2(10),
    deptno NUMBER(2),
    user_name VARCHAR2(30),
    change_date DATE
);

SELECT * FROM dept_trg_log;


--AFTER TRIGGER积己
SET SERVEROUTPUT ON
CREATE OR REPLACE TRIGGER trg_dept_log
AFTER
INSERT OR UPDATE OR DELETE ON dept_trg
FOR EACH ROW


BEGIN
    IF INSERTING THEN
        INSERT INTO dept_trg_log
        VALUES('dept_trg', 'INSERT',:new.deptno,
                sys_context('USERENV','SESSION_USER'), 
                sysdate);
    ELSIF UPDATING THEN
         INSERT INTO dept_trg_log
        VALUES('EMP_TRG', 'UPDATE',:old.deptno,
                sys_context('USERENV','SESSION_USER'), 
                sysdate);
    ELSIF DELETING THEN
         INSERT INTO dept_trg_log
        VALUES('EMP_TRG', 'DELETE',:old.deptno,
                sys_context('USERENV','SESSION_USER'), 
                sysdate);
    END IF;
END;
/