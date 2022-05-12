--EXISTS				SUB QUERY의 값이 있을 경우 메인 쿼리 수행										

--서브 쿼리의 내용을 먼저 수행해서 그 결과가 1건이라도 나오면 메인쿼리를 수행
--서브 쿼리의 내용이 1건도 나오지 않으면 메인쿼리 수행 X

SELECT empno,
       ename,
       job,
       sal,
       deptno
FROM emp
WHERE EXISTS( SELECT deptno
                FROM emp
                WHERE deptno = &dno);
                