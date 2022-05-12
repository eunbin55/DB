--UNION ALL : 두 집합의 결과를 합쳐서 출력, 중복 값을 제거하지 않는다 정렬 없음												

SELECT studno, name
FROM student
WHERE deptno1 = 101
UNION ALL
SELECT studno, name
FROM student
WHERE deptno2 = 201
;