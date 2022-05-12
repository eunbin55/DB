--FK지정하기			

--DEPT_FK테이블 만들기 p.384
CREATE TABLE DEPT_FK (
    DEPTNO NUMBER(2) CONSTRAINT DEPTFK_DEPTNO_PK primary key,
    DNAME VARCHAR2(14),
    loc VARCHAR2(13)
);

--emp_fk 테이블 만들기
CREATE TABLE emp_fk(
    empno		NUMBER(4)   CONSTRAINT empfk_empno_pk PRIMARY KEY,				
    ename	    VARCHAR2(10),				
    job			VARCHAR2(9),				
    mgr			NUMBER(4),				
    hiredate	DATE,				
    sal			NUMBER(7,2),				
    comm		NUMBER(7,2),				
    deptno		NUMBER(2)	CONSTRAINT empfk_deptno_fk REFERENCES dept_fk(deptno)
);


SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name,
       t1.r_owner,
       t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('DEPT_FK', 'EMP_FK')
;
