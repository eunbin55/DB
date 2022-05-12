--1-1 tablespace ����
CREATE TABLESPACE goodman
DATAFILE 'C:\APP\EUNBI\PRODUCT\18.0.0\ORADATA\XE\goodman.DBF'
SIZE 300M AUTOEXTEND ON NEXT 3M;

--1-2 ����� ������ ����
ALTER SESSION SET "_oracle_script" = true;

CREATE USER pcwk
IDENTIFIED BY goodman
DEFAULT TABLESPACE goodman
TEMPORARY TABLESPACE temp;

--1-3 ����� ������ �ο�
GRANT RESOURCE, CREATE SESSION, CREATE VIEW, CREATE SYNONYM TO pcwk;

--1-4 pcwk �������� ���� ȸ�� ���̺�(MEMBER)�� ����
CREATE TABLE MEMBER (
	USER_ID VARCHAR2(20) NOT NULL PRIMARY KEY,
	PASSWD VARCHAR2(20) NOT NULL,
	NAME VARCHAR2(30) NOT NULL,
	EMAIL VARCHAR2(320) NOT NULL,
	BIRTH CHAR(8),
	CELLPHONE VARCHAR2(20) NOT NULL,
	RANKING VARCHAR2(2) DEFAULT 1,
	REG_DT DATE DEFAULT SYSDATE,
	REG_ID VARCHAR2(20),
	MOD_DT DATE DEFAULT SYSDATE,
	MOD_ID VARCHAR2(20) 
);

--SELECT * FROM MEMBER;

--1-5  pcwk �������� ȸ�� ���̺�(MEMBER)�� email�� ����ũ �ε����� ����
CREATE UNIQUE INDEX MEMBER_EMAIL_UK		
ON MEMBER(email);		

--1-6 ORACLE ��������� �Ʒ��� ���� ����ϴ� SQL�� �ۼ�(sys)
SELECT username,
       expiry_date,
       default_tablespace,
       temporary_tablespace,
       profile,
       authentication_type
FROM DBA_USERS;	



