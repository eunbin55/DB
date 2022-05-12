SELECT empno,
       ename,
       sal,
       deptno,
       RANK() OVER(PARTITION BY deptno order by sal desc) "RANK_DESC"
FROM emp
;