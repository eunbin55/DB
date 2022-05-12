CREATE TABLE dept_sequence
AS 
SELECT *
FROM dept
WHERE 1 = 2;

DESC dept_sequence;

--시퀀스 생성
CREATE SEQUENCE seq_dept_sequence
INCREMENT BY 10
START WITH 10
MAXVALUE 90
MINVALUE 0
NOCYCLE
CACHE 2;

SELECT *
FROM user_sequences;

--dept_sequence테이블에 DEPTNO에 시퀀스를 이용해서 입력
--seq_dept sequence.NEXTVAL : 번호 꺼내오기
INSERT INTO dept_sequence VALUES (SEQ_DEPT_SEQUENCE.nextval,'DATABASE','SEOUL');



SELECT * FROM dept_sequence;

--현재 시퀀스 번호
SELECT seq_dept_sequence.CURRVAL FROM dual;

INSERT INTO dept_sequence VALUES (SEQ_DEPT_SEQUENCE.nextval,'DATABASE','SEOUL');



