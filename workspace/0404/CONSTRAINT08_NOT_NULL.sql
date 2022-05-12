--1. ���̺� ����

CREATE TABLE table_notnull(
    LOGIN_ID VARCHAR2(20 BYTE) not null,
    LOGIN_PWD VARCHAR2(20) not null,
    tel VARCHAR2(20)
    );
    
DESC table_notnull;

--2. NOT NULL �÷��� NULL�Է� --�����߻�
INSERT INTO table_notnull (LOGIN_ID, LOGIN_PWD, tel) VALUES ('TEST_01',null,'010-1234-5678');

--3. NULL�Է�
INSERT INTO table_notnull (login_id,login_pwd) VALUES ('TEST_01','1234');														


--4. UPDATE NOT NULL -> NULL 
UPDATE table_notnull
    SET login_pwd = NULL
WHERE login_id = 'TEST_01';
--ORA-01407: NULL�� ("SCOTT"."TABLE_NOTNULL"."LOGIN_PWD")�� ������Ʈ�� �� �����ϴ�


--5. NOT NULL���� ���� ��ȸ
--USER_CONSTRAINTS
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_NOTNULL'
;