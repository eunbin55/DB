SELECT *
FROM chap10hw_emp
WHERE hiredate > (SELECT MIN(hiredate)
                    FROM chap10hw_emp
                    WHERE deptno = 60)
;

UPDATE chap10hw_emp
    SET sal = sal * 1.1,
        deptno = 80
    WHERE hiredate > (SELECT MIN(hiredate)
                        FROM chap10hw_emp
                        WHERE deptno = 60)
;

SELECT *
FROM chap10hw_emp
WHERE deptno = 80;