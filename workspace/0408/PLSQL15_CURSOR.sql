/*Ŀ���� �Ķ���� ����ϱ�
CUSOR Ŀ���̸�(�Ķ���� �̸� �ڷ���, ...) IS
SELECT ...
*/

SET SERVEROUTPUT ON;
DECLARE
    --Ŀ���� �Է��� ����
    V_DEPT_ROW DEPT%ROWTYPE;
    
    --������ Ŀ�� ����
    CURSOR c1 (p_deptno DEPT.deptno%TYPE) IS
        SELECT deptno, dname, loc
        FROM dept
        WHERE deptno = p_deptno;
BEGIN

    --10�� �μ��� Ŀ��
    OPEN c1(10);
        LOOP
            FETCH c1 INTO V_DEPT_ROW;
            
            --���̻� �����Ͱ� ������ LOOP�� �����
            EXIT WHEN c1%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE('10�� �μ� - deptno :'|| V_DEPT_ROW.deptno ||','||
                                             'dname :'|| V_DEPT_ROW.dname ||','||
                                             'loc :'|| V_DEPT_ROW.loc 
            
            );
        END LOOP;
    CLOSE c1;
    --20�� �μ��� Ŀ��
    OPEN c1(20);
        LOOP
            FETCH c1 INTO V_DEPT_ROW;
            --���̻� �����Ͱ� ������ LOOP�� �����
            EXIT WHEN c1%NOTFOUND;
            
            DBMS_OUTPUT.PUT_LINE('20�� �μ� --deptno:'||V_DEPT_ROW.deptno ||','||
                                            'dname:'||V_DEPT_ROW.dname ||','||
                                            'loc:'||V_DEPT_ROW.loc
                                    );
        END LOOP;
    CLOSE c1;
END;
/