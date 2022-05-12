--p.478  Q1.
--FOR LOOP사용 풀이
SET SERVEROUTPUT ON;
DECLARE
    EMP_ROW EMP%ROWTYPE;
    
    CURSOR  c1 IS
        SELECT *
        FROM emp;
BEGIN
   
   FOR c1_rec IN c1 LOOP
    
    
    DBMS_OUTPUT.PUT_LINE('empno: '||c1_rec.empno ||', ' ||
                        'ename: '||c1_rec.ename ||', ' ||
                        'job: '||c1_rec.job ||', ' ||
                        'sal: '||c1_rec.sal ||', ' ||
                        'deptno: '||c1_rec.deptno
                        );
    
   END LOOP;
 
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('SQLCODE: '||TO_CHAR(SQLCODE));
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
        
    
END;
/