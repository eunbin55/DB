--���������
--USER_ID: ORCLSTUDY
--���: ORACLE


ALTER SESSION SET "_oracle_script" = true;
--Session��(��) ����Ǿ����ϴ�.

CREATE USER ORCLSTUDY
IDENTIFIED BY ORACLE;
--User ORCLSTUDY��(��) �����Ǿ����ϴ�.

--���� �Ҵ�
GRANT CREATE SESSION TO ORCLSTUDY;
--Grant��(��) �����߽��ϴ�.

SELECT *
FROM DBA_USERS t1
WHERE t1.username = 'ORCLSTUDY'
;

--����� ��� ����: ORACLE -> ORCL
ALTER USER ORCLSTUDY
IDENTIFIED BY ORCL;

--����� �����ϱ�
DROP USER ORCLSTUDY
;

