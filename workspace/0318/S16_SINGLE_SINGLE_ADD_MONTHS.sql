--입사 42년 미만인 사원 데이터 출력
SELECT empno,
        ename,
        hiredate,
        sysdate
FROM emp
WHERE ADD_MONTHS(hiredate,12*10*4+2) > SYSDATE
;