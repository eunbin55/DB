--���̺��� �����ϸ鼭 ���� ���� �̸� ���� �����ϱ�2
CREATE TABLE table_pk3(
    LOGIN_ID VARCHAR2(20),
    LOGIN_PWD VARCHAR2(20) CONSTRAINT table_pk3_loginpwd_nn  NOT NULL,
    TEL VARCHAR2(20),
    CONSTRAINT tablepk3_loginid_pk PRIMARY KEY (login_id)
);