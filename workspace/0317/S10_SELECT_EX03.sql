--Q3
--집합연산자 사용
--SELECT empno,ename,sal,deptno
--FROM emp
--WHERE deptno = 20
--AND sal > 2000
--UNION ALL
--SELECT empno,ename,sal,deptno
--FROM emp
--WHERE deptno = 30
--AND sal > 2000
--;

--집합연산자 미사용
SELECT empno,ename,sal,deptno
FROM emp
WHERE deptno IN (20,30)
AND sal > 2000
;