SELECT empno,
       ename,
       job,
       sal,
       deptno
FROM emp
WHERE deptno IN ( SELECT deptno
                    FROM emp
                    WHERE deptno = &dno);
                