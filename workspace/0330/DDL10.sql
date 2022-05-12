--EMP DDL
--CREATE TABLE 소유계정. 테이블 이름(			
--	열1이름 열1 자료형,		
--	열2이름 열2 자료형,		
--	열3이름 열3 자료형,		
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
COMMENT ON TABLE emp_ddl is '사원';
--COLUM COMMENT;
COMMENT ON COLUMN emp_ddl.empno     IS '사번';





