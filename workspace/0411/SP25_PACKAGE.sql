--��Ű�� ������ ����
--��Ű�� ��
--CREATE [OR REPLACE] PACKAGE ��Ű���̸�
--IS | AS
--  �������α׷��� ������ �پ��� ��ü ����
--END [��Ű�� �̸�];

CREATE OR REPLACE PACKAGE pkg_example
IS
    spec_no NUMBER := 10;
    FUNCTION func_aftertax(sal NUMBER) RETURN NUMBER;

    PROCEDURE pro_emp(in_empno IN emp.empno%type);
    
    PROCEDURE pro_dept(in_deptno IN dept.deptno%TYPE);
END;
/
--Package PKG_EXAMPLE��(��) �����ϵǾ����ϴ�.


