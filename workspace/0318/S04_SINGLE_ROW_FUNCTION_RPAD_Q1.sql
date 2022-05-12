--RPAD Q1
SELECT RPAD(ename,9,substr('123456789',length(ename)+1))AS RPAD01
FROM emp
WHERE deptno = 10
;