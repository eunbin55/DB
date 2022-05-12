--STEP 1 부서 번호가 10번인 사원들의 정보 조회
--SELECT empno,
--       ename,
--       job,
--       sal
--FROM emp
--WHERE deptno = 10
--;

--STEP 2 임의의 3건의 추출
--SELECT LEVEL c1
--FROM dual
--CONNECT BY LEVEL <= 3 --LEVEL(출력개수)
--;

--STEP 3 카티션 곱으로 부서 번호가 10번 집합 3세트를 만든다
SELECT *
FROM(SELECT empno,
               ename,
               job,
               sal
        FROM emp
        WHERE deptno = 10),
        (SELECT LEVEL c1
          FROM dual
          CONNECT BY LEVEL <= 100
          );



