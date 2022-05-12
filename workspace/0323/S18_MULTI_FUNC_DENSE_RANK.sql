SELECT empno,
       ename,
       sal,
       RANK() OVER(order by sal desc) "RANK_DESC",
       DENSE_RANK() OVER(order by sal desc) AS "DENSE_RANK"
       --동일 순위에 대해 하나로 간주한다.
FROM emp
;