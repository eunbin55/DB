--HAVING절은 SELECT문에 GROUP BY절이 존재할 때만 사용할 수 있다.
--그리고 GROUP BY절을 통해 그룹화된 결과 값의 범위를 제한하는데 사용합니다.
--emp테이블에서 평균 급여가 2000만원 이상인 부서의 부서번호, 평균 급여를 출력하기

--SELECT deptno, AVG( NVL (sal,0))
--FROM emp
--WHERE AVG(NVL( sal,0)) >= 2000
--GROUP BY deptno
--;
--ORA-00934: 그룹 함수는 허가되지 않습니다
--00934. 00000 -  "group function is not allowed here"

SELECT deptno, AVG( NVL (sal,0))
FROM emp
GROUP BY deptno
HAVING AVG(NVL(sal,0)) >= 2000
;