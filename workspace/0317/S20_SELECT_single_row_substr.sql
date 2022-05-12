--student테이블에서jumin컬럼을 사용해서 1전공 101번인 학생들의 이름과 태어난 생년월일, 
--생일 하루 전 날짜를 출력하세요.
SELECT name,
        SUBSTR(jumin,1,6) "Birthday",
        SUBSTR(jumin,1,6)-1 "Birthday-1"
FROM student
WHERE deptno1 = 101
;