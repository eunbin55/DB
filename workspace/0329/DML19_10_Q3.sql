SELECT *
FROM chap10hw_emp
ORDER BY deptno
;

UPDATE chap10hw_emp
    SET deptno = 70
WHERE sal > (SELECT AVG(sal)
                FROM chap10hw_emp
                WHERE deptno = 50)
                ;