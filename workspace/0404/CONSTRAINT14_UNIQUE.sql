--�ߺ����� �ʴ� �� UNIQUE
--���� ������ �������� �ߺ��� ������� �ʰ��� �� �� ���.
--(��, ������ ���� NULL���� ������ ���� ����)

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