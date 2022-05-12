--PRIMARY KEY 제약조건을 지정한 열 확인(중복 데이터 입력)
INSERT INTO table_pk(login_id, login_pwd, tel) VALUES ('TEST_ID_01','PWD01','010-1234-5678');

--중복데이터 입력하기
INSERT INTO table_pk(login_id, login_pwd, tel) VALUES ('TEST_ID_01','PWD01','010-1234-5678');
--ORA-00001: 무결성 제약 조건(SCOTT.SYS_C007633)에 위배됩니다

SELECT login_id, login_pwd, tel
FROM table_pk;