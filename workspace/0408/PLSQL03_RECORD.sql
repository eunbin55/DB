--레코드를 통한 UPDATE
SET SERVEROUTPUT ON;
DECLARE
    --레코드 정의
    TYPE REC_DEPT IS RECORD(
        deptno NUMBER(2) NOT NULL := 99,
        dname dept_record.dname%TYPE,
        loc dept_record.loc%TYPE
    );
    --레코드 선언
    dept_rec REC_DEPT;
BEGIN
    dept_rec.deptno := 50;
    dept_rec.dname :='WEB DEV';
    dept_rec.loc := 'Hongdae';
    
    --set row : row 전체 데이터 할당!
    UPDATE dept_record
    SET ROW = dept_rec
    WHERE deptno = 70;
    
    commit;
END;
/

SELECT * FROM dept_record;