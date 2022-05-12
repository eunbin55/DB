--Q3_1
SELECT * FROM( SELECT COUNT(*) OVER() TOTAL, SUBSTR(tel,1,INSTR(tel,')')-1) AS area FROM student)
PIVOT(COUNT(area) FOR area IN(
                                '02' AS SEOUL,
                                '031' AS GYEONGGI,
                                '051' AS BUSAN,
                                '052' AS ULSAN,
                                '053' AS DAEGU,
                                '055' as GYEONGNAM
                                )
)
;