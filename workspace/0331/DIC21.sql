--SCOTT에서 사용가능한 DICTIONARY 정보 보기
SELECT * 
FROM DICTIONARY; --dict

--USER 접두어를 가진 데이터 사정
--scott이 가지고 있는 객체 정보
SELECT t1.table_name
FROM user_tables t1;

--ALL_ 접두어를 가진 데이터 사전
SELECT t1.owner,
       t1.table_name,
       t1.tablespace_name
FROM all_tables t1
WHERE t1.owner = 'SCOTT';

--DBA_접두어를 가진 데이터 사전
SELECT *
FROM DBA_TABLES;