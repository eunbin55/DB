SELECT name ,
       position,
       TO_CHAR(pay,'$999,999,999') AS SALARY
FROM emp2
WHERE pay > ( SELECT MIN(PAY)
                FROM emp2
                WHERE position = 'Section head')
ORDER BY SALARY desc
;