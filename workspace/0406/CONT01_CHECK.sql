--��й�ȣ ���̸� 3�� �̻� �Է��ϵ��� ���̺��� ����
CREATE TABLE table_check (
    login_id VARCHAR2(20) CONSTRAINT tblch_loginid_pk PRIMARY KEY,
    logid_pwd VARCHAR2(20) CONSTRAINT tblch_loginpwd_ck CHECK(LENGTH(LOGID_PWD)>3),
    tel VARCHAR2(20)
);

--����Ȯ��
INSERT INTO table_check (login_id, logid_pwd, tel)
    VALUES('TEST_ID','123','010-1234-5678');
--    ORA-02290: üũ ��������(SCOTT.TBLCH_LOGINPWD_CK)�� ����Ǿ����ϴ�

INSERT INTO table_check (login_id, logid_pwd, tel)
    VALUES('TEST_ID','1234','010-1234-5678');