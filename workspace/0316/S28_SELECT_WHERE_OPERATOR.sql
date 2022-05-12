--
--SELECT *
--FROM emp
--WHERE sal >= 2000
--AND sal <=3000
--;

--SELECT *
--FROM emp
--WHERE sal BETWEEN 2000 AND 3000
--;

--2000 ~ 3000사이가 아닌 사원들
SELECT *
FROM emp
WHERE sal not BETWEEN 2000 AND 3000
;