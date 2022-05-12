--2) student 테이블의 birthday 컬럼을 참조해서 아래와 같이 월별로 생일자수를		
-- 출력하세요		
SELECT * FROM(SELECT COUNT(*) OVER() AS TOTAL, TO_CHAR(birthday,'MM') AS MM
                FROM student)
PIVOT(count(MM) FOR MM  IN(
                                        '01' JAN,
                                        '02' FEB,
                                        '03' MAR,
                                        '04' APR,
                                        '05' MAY,
                                        '06' JUN,
                                        '07' JUL,
                                        '08' AUG,
                                        '09' SEP,
                                        '10' OCT,
                                        '11' NOV,
                                        '12' DES
                                        )
)
;