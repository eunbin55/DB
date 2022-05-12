--시퀀스 수정
--ALTER SEQUENCE 시퀀스 이름
--START WITH값은 변경 불가.

ALTER SEQUENCE seq_dept_sequence
INCREMENT BY 3
MAXVALUE 99
MINVALUE 0
CYCLE
CACHE 2;

SELECT * FROM user_sequences;

INSERT INTO dept_sequence VALUES (SEQ_DEPT_SEQUENCE.nextval,'DATABASE','SEOUL');
SELECT * FROM dept_sequence;