--p.479 Q2.
SET SERVEROUTPUT ON;
DECLARE
    v_wrong DATE;
BEGIN
    SELECT ename into v_wrong
    FROM emp
    WHERE empno = 7369;
    
    
    
EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.put_line('���ܰ� �߻��ϸ� ���� ������ ������� �ʽ��ϴ�.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('������ �߻��Ͽ����ϴ�.'||TO_DATE(SYSDATE));
        DBMS_OUTPUT.PUT_LINE('SQLCODE : '||TO_CHAR(SQLCODE));
        DBMS_OUTPUT.PUT_LINE('SQLERRM : '||SQLERRM);

END;
/