CREATE TABLE dept_sequence
AS 
SELECT *
FROM dept
WHERE 1 = 2;

DESC dept_sequence;

--������ ����
CREATE SEQUENCE seq_dept_sequence
INCREMENT BY 10
START WITH 10
MAXVALUE 90
MINVALUE 0
NOCYCLE
CACHE 2;

SELECT *
FROM user_sequences;

--dept_sequence���̺� DEPTNO�� �������� �̿��ؼ� �Է�
--seq_dept sequence.NEXTVAL : ��ȣ ��������
INSERT INTO dept_sequence VALUES (SEQ_DEPT_SEQUENCE.nextval,'DATABASE','SEOUL');



SELECT * FROM dept_sequence;

--���� ������ ��ȣ
SELECT seq_dept_sequence.CURRVAL FROM dual;

INSERT INTO dept_sequence VALUES (SEQ_DEPT_SEQUENCE.nextval,'DATABASE','SEOUL');



