--중복을 허락하지 않는 UNIQUE
INSERT INTO table_unique VALUES('TEST_ID_01','PWD01', '010-1234-5678') ;

INSERT INTO table_unique VALUES('TEST_ID_01','PWD02', '010-1234-5678') ;
--ORA-00001: 무결성 제약 조건(SCOTT.SYS_C007596)에 위배됩니다

INSERT INTO table_unique VALUES('TEST_ID_02','PWD02', '010-1234-5678') ;


SELECT * FROM table_unique;

INSERT INTO table_unique VALUES(NULL,'PWD02', '010-1234-5678') ;

--NULL -> TEST_ID_01
UPDATE table_unique
    SET login_id = 'TEST_ID_01'
WHERE login_id is null;
--ORA-00001: 무결성 제약 조건(SCOTT.SYS_C007596)에 위배됩니다