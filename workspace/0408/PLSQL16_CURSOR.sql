SET SERVEROUTPUT ON;
DECLARE
    --부서번호 저장용 변수
    V_DEPTNO DEPT.deptno%TYPE;
    
    --커서
    CURSOR C1(p_deptno DEPT.deptno%TYPE)IS
        SELECT deptno, dname, loc
        FROM dept
        WHERE deptno = p_deptno;
BEGIN
    V_DEPTNO := &input_deptno;
    --커서 for loop(자동 open, fetch, close)
    FOR C1_REC IN C1(V_DEPTNO) LOOP
        DBMS_OUTPUT.PUT_LINE(C1_REC.deptno || ',' || C1_REC.dname ||','||C1_REC.loc);
    
    END LOOP;
END;
/