--SYS ����
ALTER SESSION SET "_oracle_script" = true;
--Session��(��) ����Ǿ����ϴ�.

CREATE USER ORCLSTUDY
IDENTIFIED BY ORCL;
--User ORCLSTUDY��(��) �����Ǿ����ϴ�.

--RESOURCE: ����ڰ� ���̺�, �������� ����� ���� ��ü�� ������ �� �ִ� �⺻ �ý��� ������ ���� ���� ��
--CREATE SESSION : ����Ŭ ���ӱ���
GRANT RESOURCE, CREATE SESSION, CREATE TABLE TO ORCLSTUDY;

--ORCLSTUDY �������� ������ �����ϱ����� �۾�
ALTER SESSION SET "_oracle_script" = true;
GRANT RESOURCE, CREATE SESSION, CREATE TABLE, INSERT ANY TABLE TO ORCLSTUDY;
ALTER USER ORCLSTUDY DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;

----------------------------------------------------------------
--ORCLSTUDY ����
--���̺� ����
CREATE TABLE TEMP2(
    COL1 VARCHAR2(20),
    COL2 VARCHAR2(20)
);

--������ �Է�
INSERT INTO temp2 VALUES ('USER','GRANT_TEST');