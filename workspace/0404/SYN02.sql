--scott����ڿ� emp ���̺��� ���Ǿ� e ����(private SYNONYM)
CREATE SYNONYM e FOR emp;

--���Ǿ� e�� ���ؼ� select, dml�۾� ����
SELECT *
FROM e;

--scott����ڿ� dept ���̺��� ���Ǿ� d2 ����(public SYNONYM)
CREATE PUBLIC SYNONYM d2 FOR dept;

SELECT *
FROM d2;

--SYNONYM ��ȸ
SELECT t1.synonym_name,
       t1.table_owner,
       t1.table_name
FROM user_synonyms t1
WHERE t1.table_name = 'EMP'
;