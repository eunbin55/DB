--Q6
--8) emp 테이블을 사용하여 아래와 같이 부서별로 급여 누적 합계가 나오도록 																
--출력하세요. ( 단 부서번호로 오름차순 출력하세요. )						
SELECT deptno,
       ename,
       sal,
       SUM(sal) OVER(PARTITION BY deptno ORDER BY sal, ename) "TOTAL"
FROM emp
;