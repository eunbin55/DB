--emp hiredate와 sysdate간에 개월수
SELECT empno,
        ename,
        hiredate,
        sysdate,
        MONTHS_BETWEEN(hiredate,SYSDATE) AS months01,
        MONTHS_BETWEEN(SYSDATE, hiredate) AS months02,
        TRUNC(MONTHS_BETWEEN(SYSDATE,hiredate)) AS months03
FROM emp
;