--SCOTT���� ��밡���� DICTIONARY ���� ����
SELECT * 
FROM DICTIONARY; --dict

--USER ���ξ ���� ������ ����
--scott�� ������ �ִ� ��ü ����
SELECT t1.table_name
FROM user_tables t1;

--ALL_ ���ξ ���� ������ ����
SELECT t1.owner,
       t1.table_name,
       t1.tablespace_name
FROM all_tables t1
WHERE t1.owner = 'SCOTT';

--DBA_���ξ ���� ������ ����
SELECT *
FROM DBA_TABLES;