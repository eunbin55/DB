--Q2.
SET SERVEROUTPUT ON;
DECLARE
    V_DEPTNO dept.deptno%TYPE :=10;
BEGIN
    CASE V_DEPTNO 
        WHEN 10 THEN DBMS_OUTPUT.PUT_LINE('DNAME: ACCOUNTING');
        WHEN 20 THEN DBMS_OUTPUT.PUT_LINE('DNAME: RESEARCH');
        WHEN 30 THEN DBMS_OUTPUT.PUT_LINE('DNAME: SALES');
        WHEN 40 THEN DBMS_OUTPUT.PUT_LINE('DNAME: OPERATIONS');
        ELSE DBMS_OUTPUT.PUT_LINE('DNAME: N/V');
      END CASE;
END;
/