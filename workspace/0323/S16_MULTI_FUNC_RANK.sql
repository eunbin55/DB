SELECT empno,
       ename,
       sal,
       RANK() OVER(order by sal desc) "RANK_DESC"
FROM emp
;