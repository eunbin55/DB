--�ߺ��� ������� �ʴ� UNIQUE
INSERT INTO table_unique VALUES('TEST_ID_01','PWD01', '010-1234-5678') ;

INSERT INTO table_unique VALUES('TEST_ID_01','PWD02', '010-1234-5678') ;
--ORA-00001: ���Ἲ ���� ����(SCOTT.SYS_C007596)�� ����˴ϴ�

INSERT INTO table_unique VALUES('TEST_ID_02','PWD02', '010-1234-5678') ;


SELECT * FROM table_unique;

INSERT INTO table_unique VALUES(NULL,'PWD02', '010-1234-5678') ;

--NULL -> TEST_ID_01
UPDATE table_unique
    SET login_id = 'TEST_ID_01'
WHERE login_id is null;
--ORA-00001: ���Ἲ ���� ����(SCOTT.SYS_C007596)�� ����˴ϴ�