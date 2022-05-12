SELECT empno,
        ename,
        TO_CHAR(hiredate,'yyyy-mm-dd') AS HIREDATE,
        TO_CHAR((sal*12)+comm,'$999,999') AS SAL,
        TO_CHAR(((sal*12)+comm)*1.15,'$999,999') AS "15% UP"
FROM emp
WHERE comm is not null
;