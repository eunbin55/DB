--IN        서브쿼리 결과와 같은 값을 찾습니다.
SELECT empno,
       ename,
       job,
       sal,
       deptno
FROM emp
WHERE deptno IN(20, 30)
;