--트리거:
--데이터베이스 안의 특정 상황이나 동작(이벤트)가 발생할 경우 자동으로 실행

--BEFORE 트리거
--STEP 1.   CTAS로 emp_trg테이블 만들기;
CREATE TABLE emp_trg
AS
SELECT * FROM emp;

--테이블 생성 확인
SELECT * FROM emp_trg;

--STEP 2.   TRIGGER생성
CREATE OR REPLACE TRIGGER trg_emp_nodm_weekend
BEFORE
INSERT OR UPDATE OR DELETE ON emp_trg

DECLARE

BEGIN
    IF TO_CHAR(SYSDATE,'DY') IN ('토', '일') THEN
        IF INSERTING THEN
            RAISE_APPLICATION_ERROR(-20000, '주말 사원정보 추가 불가');
        ELSIF UPDATING THEN
            RAISE_APPLICATION_ERROR(-20001, '주말 사원정보 수정 불가');
        ELSIF DELETING THEN
            RAISE_APPLICATION_ERROR(-20002, '주말 사원정보 삭제 불가');
        ELSE
            RAISE_APPLICATION_ERROR(-20003, '주말 사원정보 변경 불가');
        END IF;
    
    
    END IF;
END;
/