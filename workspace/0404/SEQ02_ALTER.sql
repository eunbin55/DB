--������ ����
--ALTER SEQUENCE ������ �̸�
--START WITH���� ���� �Ұ�.

ALTER SEQUENCE seq_dept_sequence
INCREMENT BY 3
MAXVALUE 99
MINVALUE 0
CYCLE
CACHE 2;

SELECT * FROM user_sequences;

INSERT INTO dept_sequence VALUES (SEQ_DEPT_SEQUENCE.nextval,'DATABASE','SEOUL');
SELECT * FROM dept_sequence;