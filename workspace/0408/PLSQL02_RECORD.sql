--CTAS로 DEPT_RECORD 테이블 생성
CREATE TABLE dept_record
AS
SELECT * FROM dept;

--테이블 생성 확인
SELECT * FROM dept_record;

--레코드 사용해 입력
SET SERVEROUTPUT ON;
DECLARE
    --record정의
    TYPE rec_dept is record(
        deptno NUMBER(2) NOT NULL := 99,
        dname dept_record.dname%type,
        loc dept_record.loc%TYPE
    );
    --record선언
    dept_rec rec_dept;
BEGIN
    dept_rec.deptno := 70;
    dept_rec.dname :='DEVELOPER';
    dept_rec.loc := 'SHINCHON';
    
    INSERT INTO dept_record VALUES dept_rec;
    
END;
/

--insert결과 확인
SELECT * FROM dept_record;


commit;