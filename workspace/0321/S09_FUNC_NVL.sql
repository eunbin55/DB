--
SELECT empno,
        ename,
        sal,
        comm,
        (sal*12)+comm AS salary01,
        (sal*12)+NVL(comm,0) AS salary02
FROM emp
;