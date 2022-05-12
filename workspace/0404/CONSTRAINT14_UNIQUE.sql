--중복되지 않는 값 UNIQUE
--열에 저장할 데이터의 중복을 허용하지 않고자 할 때 사용.
--(단, 지정한 열에 NULL값은 여러개 존재 가능)

CREATE TABLE table_unique(
    login_id VARCHAR2(20) UNIQUE,
    login_pwd VARCHAR2(20)  NOT NULL,
    tel VARCHAR2(20)
);

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_UNIQUE'
;