SELECT ROWNUM, t1.empno, t1.ename
FROM emp t1;

SELECT ROWNUM, t1.empno, t1.ename, t1.sal
FROM emp t1
ORDER BY t1.sal;

--ROWNUM �� ORDER BY ���� ���� ORDER BY���ִ� �������� ���������
SELECT ROWNUM, tt1.*
FROM(
    SELECT t1.empno,
           t1.ename,
           t1.sal
    FROM emp t1
    ORDER BY sal
)tt1
;
