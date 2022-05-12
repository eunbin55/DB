--Student 테이블의 jumin 컬럼을 참조하여 학생들의 이름과 태어난 달 , 그리고 분기를 출력하세요. 
--
--태어난 달이 01-03월 은 1/4, 
--04 - 06월 은 2/4 , 
--07 - 09 월 은 3/4 , 
--10 - 12 월은 4/4 로 출력하세요

--BETWEEN '01' AND '03' -> 자동으로 숫자로 변환
SELECT name,
        SUBSTR(jumin,3,2) AS "MONTH",
        CASE WHEN SUBSTR(jumin,3,2) BETWEEN '01' AND '03' THEN '1/4'
             WHEN SUBSTR(jumin,3,2) BETWEEN '04' AND '06' THEN '2/4'
             WHEN SUBSTR(jumin,3,2) BETWEEN '07' AND '09' THEN '3/4'
             WHEN SUBSTR(jumin,3,2) BETWEEN '10' AND '12' THEN '4/4'
        END "Quoter"
FROM student
;