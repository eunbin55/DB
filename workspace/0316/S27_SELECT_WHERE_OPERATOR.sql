--IN과 논리부정 연산자
SELECT empno,
        ename,
        deptno,
        job
FROM emp
WHERE job != 'MANAGER'
AND job != 'SALESMAN'
AND job != 'CLERK'
;