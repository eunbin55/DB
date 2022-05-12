--Q4.
SELECT EXIST_COMM, count(*)
FROM(
    SELECT CASE WHEN COMM is null THEN 'X'
                ELSE 'O'
           END AS EXIST_COMM
    FROM emp
)
GROUP BY EXIST_COMM

;