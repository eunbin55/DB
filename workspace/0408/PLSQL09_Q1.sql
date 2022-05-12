--p.457 Q1-1
--데이터가져오기
CREATE TABLE emp_record
AS
SELECT * FROM emp
WHERE 1=2;


--Q1-2
SET SERVEROUTPUT ON;
DECLARE
    --RECORD정의
    TYPE REC_EMP IS RECORD(
        empno emp.empno%TYPE,
        ename emp.ename%TYPE,
        job emp.job%TYPE,
        mgr emp.mgr%TYPE,
        hiredate emp.hiredate%TYPE,
        sal emp.sal%TYPE,
        comm emp.comm%TYPE,
        deptno emp.deptno%TYPE

    );
    --record선언
    emp_rec REC_EMP;
BEGIN
   emp_rec.empno := 111;
   emp_rec.ename := 'TEST_USER';
   emp_rec.job := 'TEST_JOB';
   emp_rec.mgr := NULL;
   emp_rec.hiredate := TO_DATE('18/03/01','YY/MM/DD');
   emp_rec.sal := 3000;
   emp_rec.comm := NULL;
   emp_rec.deptno :=40;
   
   INSERT INTO emp_record
   VALUES emp_rec;
   
   COMMIT;
   
END;
/

--3. 확인
select * from emp_record;