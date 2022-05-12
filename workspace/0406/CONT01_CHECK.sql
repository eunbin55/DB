--비밀번호 길이를 3자 이상 입력하도록 테이블에서 설정
CREATE TABLE table_check (
    login_id VARCHAR2(20) CONSTRAINT tblch_loginid_pk PRIMARY KEY,
    logid_pwd VARCHAR2(20) CONSTRAINT tblch_loginpwd_ck CHECK(LENGTH(LOGID_PWD)>3),
    tel VARCHAR2(20)
);

--오류확인
INSERT INTO table_check (login_id, logid_pwd, tel)
    VALUES('TEST_ID','123','010-1234-5678');
--    ORA-02290: 체크 제약조건(SCOTT.TBLCH_LOGINPWD_CK)이 위배되었습니다

INSERT INTO table_check (login_id, logid_pwd, tel)
    VALUES('TEST_ID','1234','010-1234-5678');