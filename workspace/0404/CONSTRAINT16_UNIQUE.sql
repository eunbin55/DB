CREATE TABLE table_unique2(
    LOGIN_ID VARCHAR2(20) CONSTRAINT TBLUNQ2_LOGINID_UNQ UNIQUE,
    login_pwd VARCHAR2(20) CONSTRAINT TBLUNQ2_LOGINPWD_NN NOT NULL,
    TEL VARCHAR2(20)

);

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_UNIQUE2'
;