--EMP DDL
--CREATE TABLE ��������. ���̺� �̸�(			
--	��1�̸� ��1 �ڷ���,		
--	��2�̸� ��2 �ڷ���,		
--	��3�̸� ��3 �ڷ���,		
--	...		
--)			

CREATE TABLE emp_ddl(
empno NUMBER    (4)
,ename VARCHAR2 (10)
,job VARCHAR2   (9)
,mgr NUMBER (6)
,hiredate DATE
,sal NUMBER (7,2)
,comm NUMBER (   7,2)
,deptno NUMBER ( 2)

);

DESC emp_ddl;

--TABLE COMMENT
COMMENT ON TABLE emp_ddl is '���';
--COLUM COMMENT;
COMMENT ON COLUMN emp_ddl.empno     IS '���';





