--ADD MONTHS: �־��� ��¥�� ������ ����
--SELECT SYSDATE,
--        ADD_MONTHS(SYSDATE,3) "ADD_MONTHS+3",
--        ADD_MONTHS(SYSDATE,-2) "ADD_MONTHS-2"
--FROM dual
--;
SELECT empno,
        ename,
        hiredate,
        ADD_MONTHS(hiredate,12*19*2) AS WORK20YEAR
FROM emp
;