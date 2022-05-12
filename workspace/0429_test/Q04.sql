SELECT t1.ename,
        t2.dname,
        TO_CHAR(t1.hiredate,'YYYY/MM/DD') AS hiredate,
        t2.loc,
        TO_CHAR(t1.sal,'$999,999,999') AS SAL,
        t3.grade
FROM emp t1 INNER JOIN dept t2
ON t1.deptno = t2.deptno
INNER JOIN salgrade t3
ON t1.sal BETWEEN t3.losal AND t3.hisal;