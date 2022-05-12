--Q8
--9) emp 테이블을 사용하여 아래와 같이 각 사원의 급여액이 
--전체 직원 급여총액에서 몇 %의 비율을 차지하는지 출력하세요. 
--단 급여 비중이 높은 사람이 먼저 출력되도록 하세요

SELECT deptno,
       ename,
       sal,
       SUM(sal) OVER() AS TOTAL_SAL,
       ROUND((sal/SUM(sal) OVER())*100,2) || '%' AS "%",
       ROUND(RATIO_TO_REPORT(sal) OVER() *100,2) AS "%2"
FROM emp
ORDER BY sal DESC
;