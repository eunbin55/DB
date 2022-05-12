DELETE FROM chap10hw_emp 
    WHERE empno IN( SELECT t1.empno
                    FROM chap10hw_emp t1, salgrade t2
                    WHERE t1.sal BETWEEN t2.losal AND t2.hisal
                    AND t2.grade = 5);
                    
SELECT *
FROM chap10hw_emp
;