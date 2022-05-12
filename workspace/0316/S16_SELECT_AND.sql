--여러개 조건식을 사용하는 AND, OR 연산자
--AND 연산자로 여러개의 조건식 사용하기
SELECT *
FROM emp
WHERE deptno = 30
AND job = 'SALESMAN'
;