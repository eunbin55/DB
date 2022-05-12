--부서별 직무별 급여
--ORACLE 10G이 이전에서는 정렬되어서 출력
--ORACLE 10G이 이후에서는 정렬 안됨,따라서 ORDER BY절 명기
SELECT  deptno, job, AVG(NVL(sal,0)) "AVG_SAL"
FROM emp
GROUP BY deptno, job
ORDER BY deptno, job
;
--1. SELECT 절에 사용된 그룹함수 이외의 컬럼이나 표현식은 반드시 GROUP BY 
--절에 사용되어야 합니다. 그렇지 않을 경우 아래와 같은 에러가 발생합니다.
--하지만 GROUP BY절에 사용된 컬럼이라도 SELECT절에는 사용하지 않아도 된다.

--SELECT  deptno, job, AVG(NVL(sal,0)) "AVG_SAL"
--FROM emp
--GROUP BY deptno
--ORDER BY deptno
;
--ORA-00979: GROUP BY 표현식이 아닙니다.

--2. GROUP BY 절에는 반드시 컬럼명이 사용되어야 하며 컬럼 Alias 는 
--사용하면 안됩니다
--SELECT  deptno AS no, job, AVG(NVL(sal,0)) "AVG_SAL"
--FROM emp
--GROUP BY no, job --group by 절에는 alias사용 안됨
--ORDER BY deptno, job
--;
----ORA-00904: "NO": 부적합한 식별자