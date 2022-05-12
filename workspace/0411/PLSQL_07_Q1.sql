--p.478  Q1.
--LOOP사용 풀이
SET SERVEROUTPUT ON;
DECLARE
    EMP_ROW EMP%ROWTYPE;
    
    CURSOR  c1 IS
        SELECT *
        FROM emp;
BEGIN
   OPEN c1;
   
   LOOP
    FETCH c1 INTO EMP_ROW;
    
    
    DBMS_OUTPUT.PUT_LINE('empno: '||EMP_ROW.empno ||', ' ||
                        'ename: '||EMP_ROW.ename ||', ' ||
                        'job: '||EMP_ROW.job ||', ' ||
                        'sal: '||EMP_ROW.sal ||', ' ||
                        'deptno: '||EMP_ROW.deptno
                        );
    exit WHEN c1%NOTFOUND;
   END LOOP;
   CLOSE c1; 
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('SQLCODE: '||TO_CHAR(SQLCODE));
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
        
    
END;
/