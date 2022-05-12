--Q5
--SELECT ename,
--        empno,
--        sal,
--        deptno
--FROM emp
--WHERE ename LIKE '%E%'
--AND deptno = 30
--AND (sal > 2000 OR sal < 1000)
--;

SELECT ename,
        empno,
        sal,
        deptno
FROM emp
WHERE ename LIKE '%E%'
AND deptno = 30
AND sal not BETWEEN 1000 AND 2000
;