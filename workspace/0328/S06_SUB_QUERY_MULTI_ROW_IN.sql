--IN    서브쿼리 결과와 같은 값을 찾습니다.
--각 부서별 최고 급여와 동일한 급여를 받는 사원 정보 출력하기
SELECT empno,
       ename,
       job,
       sal,
       deptno
FROM emp
WHERE sal IN(SELECT MAX(sal)
                FROM emp
                GROUP BY deptno)
;