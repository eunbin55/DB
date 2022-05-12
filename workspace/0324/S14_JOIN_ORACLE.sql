--ORACLE_JOIN
--emp: 14
--dept: 4
--조인 조건이 누락되면 카티션 곱 생성: 14 * 4 = 56건 출력
SELECT t1.empno,
       t1.deptno,
       t2.dname
FROM emp t1, dept t2
WHERE t1.deptno = t2.deptno
;