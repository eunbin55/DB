CREATE TABLE table_pk(
    LOGIN_ID VARCHAR2(20) PRIMARY KEY,
    LOGIN_PWD VARCHAR2(20) NOT NULL,
    TEL VARCHAR2(20)
);

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_PK'
;

--USER_INDEXES Á¶È¸
SELECT t1.index_name,
       t1.table_owner,
       t1.table_name
FROM USER_INDEXES t1
WHERE t1.table_name LIKE 'TABLE_PK%'
;