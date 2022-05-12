--Q1
SELECT empno,
        RPAD(SUBSTR(empno,1,2),4,'**') AS MASKING_EMPNO,
        ename,
        REPLACE(ename,SUBSTR(ename, 2),'*****')AS MASKING_NAME
FROM emp
WHERE length(ename) >= 5
AND length(ename) < 6
;