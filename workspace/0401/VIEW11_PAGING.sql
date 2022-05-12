SELECT ROWNUM, t1.empno, t1.ename
FROM emp t1;

SELECT ROWNUM, t1.empno, t1.ename, t1.sal
FROM emp t1
ORDER BY t1.sal;

--ROWNUM 과 ORDER BY 같이 사용시 ORDER BY가있는 셀렉문을 감싸줘야함
SELECT ROWNUM, tt1.*
FROM(
    SELECT t1.empno,
           t1.ename,
           t1.sal
    FROM emp t1
    ORDER BY sal
)tt1
;
