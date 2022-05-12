--p.212 Q2.
SELECT job,
       count(*)
FROM emp
GROUP BY job
HAVING COUNT(*) >= 3
;