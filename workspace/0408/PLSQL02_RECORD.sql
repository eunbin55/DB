--CTAS�� DEPT_RECORD ���̺� ����
CREATE TABLE dept_record
AS
SELECT * FROM dept;

--���̺� ���� Ȯ��
SELECT * FROM dept_record;

--���ڵ� ����� �Է�
SET SERVEROUTPUT ON;
DECLARE
    --record����
    TYPE rec_dept is record(
        deptno NUMBER(2) NOT NULL := 99,
        dname dept_record.dname%type,
        loc dept_record.loc%TYPE
    );
    --record����
    dept_rec rec_dept;
BEGIN
    dept_rec.deptno := 70;
    dept_rec.dname :='DEVELOPER';
    dept_rec.loc := 'SHINCHON';
    
    INSERT INTO dept_record VALUES dept_rec;
    
END;
/

--insert��� Ȯ��
SELECT * FROM dept_record;


commit;