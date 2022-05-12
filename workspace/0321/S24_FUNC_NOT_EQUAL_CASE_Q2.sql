--Q2
SELECT empno,
        ename,
        sal,
        TRUNC(sal/21.5,2)AS "DAY_PAY",
        ROUND(sal/21.5/8,1) AS "TIME_PAY"
FROM emp
;