----SUM() 함수
--입력 데이터들의 합계 값을 구하는 함수
--SUM( [DISTINCT, ALL])

--SELECT sal --sal총합
--FROM emp
--ORDER by sal
--;

--sal총합
--sal 중복 데이터 제거 총합
--SUM(sal) DEFAULT ALL
SELECT 
    SUM(ALL sal), 
    SUM(DISTINCT sal),
    SUM(sal)
FROM emp
;