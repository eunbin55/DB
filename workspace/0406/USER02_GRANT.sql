--SYS 계정
ALTER SESSION SET "_oracle_script" = true;
--Session이(가) 변경되었습니다.

CREATE USER ORCLSTUDY
IDENTIFIED BY ORCL;
--User ORCLSTUDY이(가) 생성되었습니다.

--RESOURCE: 사용자가 테이블, 시퀀스를 비롯한 여러 객체를 생성할 수 있는 기본 시스템 권한을 묶어 놓은 롤
--CREATE SESSION : 오라클 접속권한
GRANT RESOURCE, CREATE SESSION, CREATE TABLE TO ORCLSTUDY;

--ORCLSTUDY 계정에서 데이터 삽입하기위한 작업
ALTER SESSION SET "_oracle_script" = true;
GRANT RESOURCE, CREATE SESSION, CREATE TABLE, INSERT ANY TABLE TO ORCLSTUDY;
ALTER USER ORCLSTUDY DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;

----------------------------------------------------------------
--ORCLSTUDY 계정
--테이블 생성
CREATE TABLE TEMP2(
    COL1 VARCHAR2(20),
    COL2 VARCHAR2(20)
);

--데이터 입력
INSERT INTO temp2 VALUES ('USER','GRANT_TEST');