--테이블 스페이스 : PREV_HW_TS
--계정: PREV_HW
--비번: ORCL

--*tablespace 정보 확인
SELECT tablespace_name,
       file_name
FROM dba_data_files;



--1. tablespace 생성
CREATE TABLESPACE PREV_HW_TS
DATAFILE 'C:\APP\EUNBI\PRODUCT\18.0.0\ORADATA\XE\PREV_HW_TS01.DBF'
SIZE 300M AUTOEXTEND ON NEXT 30M;



--2. 사용자 생성
ALTER SESSION SET "_oracle_script" = true;
--Session이(가) 변경되었습니다.
DROP USER PREV_HW CASCADE;

CREATE USER PREV_HW
IDENTIFIED BY ORCL
DEFAULT TABLESPACE PREV_HW_TS
TEMPORARY TABLESPACE temp
QUOTA UNLIMITED on PREV_HW_TS;



-- 3. 권한 부여
GRANT RESOURCE, CREATE SESSION, CREATE TABLE TO PREV_HW;
ALTER USER PREV_HW DEFAULT TABLESPACE PREV_HW_TS QUOTA UNLIMITED ON PREV_HW_TS;
--Grant을(를) 성공했습니다.


----prev_hw 접속--------------------------

-- 1. 테이블 생성
CREATE TABLE dept (
    deptno NUMBER(4) CONSTRAINT PK_DEPT PRIMARY KEY,
    dname VARCHAR2(30),
    loc VARCHAR2(50)
);

desc dept;

--2. 데이터 삽입
INSERT INTO dept VALUES (10,'EDUCATION','SEOUL');

-- 3. 조회
SELECT * FROM dept;
