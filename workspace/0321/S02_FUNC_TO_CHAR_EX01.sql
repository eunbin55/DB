SELECT empno,
        ename,
        to_char((sal*12)+comm,'999,999') AS salary
FROM emp
WHERE ename = 'ALLEN'
;