--테이블을 생성하면서 제약 조건 이름 직접 지저하기2
CREATE TABLE table_pk3(
    LOGIN_ID VARCHAR2(20),
    LOGIN_PWD VARCHAR2(20) CONSTRAINT table_pk3_loginpwd_nn  NOT NULL,
    TEL VARCHAR2(20),
    CONSTRAINT tablepk3_loginid_pk PRIMARY KEY (login_id)
);