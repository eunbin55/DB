--���ڵ带 ���� UPDATE
SET SERVEROUTPUT ON;
DECLARE
    --���ڵ� ����
    TYPE REC_DEPT IS RECORD(
        deptno NUMBER(2) NOT NULL := 99,
        dname dept_record.dname%TYPE,
        loc dept_record.loc%TYPE
    );
    --���ڵ� ����
    dept_rec REC_DEPT;
BEGIN
    dept_rec.deptno := 50;
    dept_rec.dname :='WEB DEV';
    dept_rec.loc := 'Hongdae';
    
    --set row : row ��ü ������ �Ҵ�!
    UPDATE dept_record
    SET ROW = dept_rec
    WHERE deptno = 70;
    
    commit;
END;
/

SELECT * FROM dept_record;