--primary key�� null�� �Է� �׽�Ʈ
INSERT INTO table_pk(login_id, login_pwd, tel) 
VALUES (NULL,'PWD01','010-1234-5678');
--ORA-01400: NULL�� ("SCOTT"."TABLE_PK"."LOGIN_ID") �ȿ� ������ �� �����ϴ�


INSERT INTO table_pk(login_pwd, tel) 
VALUES ('PWD01','010-1234-5678');
--ORA-01400: NULL�� ("SCOTT"."TABLE_PK"."LOGIN_ID") �ȿ� ������ �� �����ϴ�