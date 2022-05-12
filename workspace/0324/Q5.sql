----Q5
--5) emp 테이블을 사용하여 직원들의 급여와 전체 급여의 누적 급여금액이 아래와 																		
--    같도록 출력하세요. 단 급여를 오름차순으로 정렬해서 출력하세요.																		
SELECT deptno,
       ename,
       sal,
       --동일한 데이터가 연속될 경우 누적이 안 됨.따라서 ename 추가
       SUM(sal) OVER(ORDER BY sal,ename) "TOTAL"
       
FROM emp
;