--1. 열 데이터 삭제
--CONSTRAINT [제약조건이름] REFERENCES 참조테이블(참조컬럼) ON DELETE CASCADE;

--2. 열 데이터를 NULL로 변경
--CONSTRAINT [제약조건이름] REFERENCES 참조테이블(참조컬럼) ON DELETE SET NULL;

--STEP. 1
--c_test1, c_test2테이블 생성
CREATE TABLE c_test1(
    no NUMBER,
    name VARCHAR2(10),
    deptno NUMBER
);

CREATE TABLE c_test2(
    no NUMBER,
    name VARCHAR2(10)
);

--STEP. 2 
--두개의 테이블에 제약 조건을 설정. 데이터 입력

--c_test1에 c_teat1_deptno_fk 참조키 없이 생성(c_teat2 no에 uk없어서 오류발생 확인)
ALTER TABLE c_test1
ADD CONSTRAINT cteat1_deptno_fk FOREIGN KEY(deptno)
REFERENCES c_test2(no)
;
--ORA-02270: 이 열목록에 대해 일치하는 고유 또는 기본 키가 없습니다

ALTER TABLE c_test2
ADD CONSTRAINT ctest2_no_uk UNIQUE(no);

--삭제(옵션안줘서 삭제 후 다시 생성하려고)
--ALTER TABLE c_test1
--DROP CONSTRAINT CTEAT1_DEPTNO_FK;

ALTER TABLE c_test1
ADD CONSTRAINT cteat1_deptno_fk FOREIGN KEY(deptno)
REFERENCES c_test2(no)
ON DELETE CASCADE
;

INSERT INTO c_test2 VALUES(10, 'AAA');
INSERT INTO c_test2 VALUES(20, 'BBB');
INSERT INTO c_test2 VALUES(30, 'CCC');
COMMIT;
SELECT * FROM c_test2;

INSERT INTO c_test1 VALUES(1, 'apple',10);
INSERT INTO c_test1 VALUES(2, 'banana',20);
INSERT INTO c_test1 VALUES(3, 'cherry',30);
COMMIT;
SELECT * FROM c_test1;

--오류발생 확인
INSERT INTO c_test1 VALUES(4, 'peach',40);
--ORA-02291: 무결성 제약조건(SCOTT.CTEAT1_DEPTNO_FK)이 위배되었습니다- 부모 키가 없습니다

--on delete cascade 테스트

DELETE FROM c_test2 WHERE no = 10;
SELECT * FROM c_test1;

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name,
       t1.r_owner,
       t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('C_TEST1', 'C_TEST2')
;


