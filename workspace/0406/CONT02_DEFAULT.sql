--비밀번호 default 1234로 지정
CREATE TABLE table_default (
    login_id VARCHAR2(20) CONSTRAINT tbldefault_loginid_pk PRIMARY KEY,
    logid_pwd VARCHAR2(20) DEFAULT '1234',
    tel VARCHAR2(20)
);

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name IN('TABLE_DEFAULT')
;

INSERT INTO table_default (login_id, tel)
    VALUES('TEST_ID','010-1234-5678');
    
SELECT *
FROM table_default;