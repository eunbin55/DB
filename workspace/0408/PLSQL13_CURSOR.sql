SET SERVEROUTPUT ON;
DECLARE
    --Ŀ�� �����͸� ������ ROWTYPE���� ����
    V_DEPT_ROW DEPT%ROWTYPE;
    
    --Ŀ�� ����
    CURSOR C1 IS
    SELECT deptno, dname, loc
    FROM dept;
    
BEGIN
    --Ŀ�� open
    OPEN C1;
    
    LOOP
        --Ŀ���κ��� ������ ����
        FETCH C1 INTO v_dept_row;
        
        --���̻� �����Ͱ� ������ : LOOP����
        EXIT WHEN C1%NOTFOUND;
    
        DBMS_OUTPUT.PUT_LINE('deptno:'||V_DEPT_ROW.deptno ||' : '||
                             'dname:'||V_DEPT_ROW.dname   ||' : '||
                             'loc:'  ||V_DEPT_ROW.loc  
                            );
    END LOOP;
    
    --Ŀ�� �ݱ�
    CLOSE C1;
    
END;
/