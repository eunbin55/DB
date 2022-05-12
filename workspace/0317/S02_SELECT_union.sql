--UNION : 두 집합의 결과를 합쳐서 출력, 중복 값을 제거하고 정렬												
--SELECT studno,
--        name,
--        deptno1
--FROM student
--WHERE deptno1 = 101
--;

SELECT studno,name,deptno1,1
FROM student
WHERE deptno1 = 101
UNION
SELECT profno, name, deptno,2
FROM professor
WHERE deptno = 101
;