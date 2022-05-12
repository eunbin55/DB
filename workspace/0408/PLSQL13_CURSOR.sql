SET SERVEROUTPUT ON;
DECLARE
    --커서 데이터를 저장할 ROWTYPE변수 선언
    V_DEPT_ROW DEPT%ROWTYPE;
    
    --커서 선언
    CURSOR C1 IS
    SELECT deptno, dname, loc
    FROM dept;
    
BEGIN
    --커서 open
    OPEN C1;
    
    LOOP
        --커서로부터 데이터 추출
        FETCH C1 INTO v_dept_row;
        
        --더이상 데이터가 없으면 : LOOP종료
        EXIT WHEN C1%NOTFOUND;
    
        DBMS_OUTPUT.PUT_LINE('deptno:'||V_DEPT_ROW.deptno ||' : '||
                             'dname:'||V_DEPT_ROW.dname   ||' : '||
                             'loc:'  ||V_DEPT_ROW.loc  
                            );
    END LOOP;
    
    --커서 닫기
    CLOSE C1;
    
END;
/