SET SERVEROUTPUT ON;
DECLARE
    --���ڵ弱�� (DEPT���̺� ���� )
    TYPE REC_DEPT IS RECORD(
        deptno dept.deptno%TYPE,
        dname dept.dname%TYPE
    );
    
    --���ڵ� Ÿ�� �����迭
    TYPE ITAB_DEPT IS TABLE OF REC_DEPT
    INDEX BY PLS_INTEGER;
    
    --�����迭 ����
    dept_arr ITAB_DEPT;
    idx PLS_INTEGER := 0;

BEGIN
    FOR i IN (SELECT * FROM dept) LOOP
        idx := idx +1;
        dept_arr(idx).deptno := i.deptno;
        dept_arr(idx).dname := i.dname;
        
        DBMS_OUTPUT.PUT_LINE(dept_arr(idx).deptno || ':' || dept_arr(idx).dname);
    
    END LOOP;

END;
/