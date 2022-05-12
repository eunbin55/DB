--EMP 1981년 6월 1일 이후 입사한 사원 정보 출력하기
--
SELECT empno,
        ename,
        hiredate
FROM emp
WHERE hiredate > TO_DATE('1981/06/01', 'YYYY/MM/DD')
;