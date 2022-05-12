--Q2
--student 테이블에서 아래와 같이 1전공(deptno1)이 101번인 학생들의
--이름과 주민등록번호를 출력하되 주민등록번호의 뒤 7자리는 '-'과 '/'로 표시되게 출력
SELECT name,
        jumin,
        REPLACE(jumin,substr(jumin,7),'-/-/-/-') AS REP
FROM student
WHERE deptno1 = 101
;